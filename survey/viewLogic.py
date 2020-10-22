from django.utils.html import format_html, mark_safe
from django.db import transaction
from django.db.models import Count, QuerySet
import math

from survey.models import (
    SurveyUser,
    SurveyQuestion,
    SurveyQuestionAnswer,
    SurveyUserAnswer,
    TranslationKey,
    SurveyUserFeedback,
    SurveyAnswerQuestionMap,
    SurveyUserQuestionSequence,
    SURVEY_STATUS_IN_PROGRESS,
    SURVEY_STATUS_UNDER_REVIEW,
)
from survey.forms import InitialStartForm, AnswerMChoice, GeneralFeedback
from survey.globals import LANG_SELECT, TRANSLATION_UI
from survey.reporthelper import get_recommendations, get_formatted_translations


def create_user(lang: str, sector: str, company_size: str, country: str):
    user = SurveyUser()
    user.sector = sector
    user.e_count = company_size
    user.country_code = country
    survey_question = SurveyQuestion.objects.order_by("qindex")[:1]
    user.current_question = survey_question[0]

    # prevent the use of custom languages
    langs = [x[0] for x in LANG_SELECT]
    if lang in langs:
        user.choosen_lang = lang
    else:
        user.choosen_lang = LANG_SELECT[0][0]

    user.save()

    return user


def handle_start_survey(request, lang: str):
    action = "/survey/start/" + lang
    question = TRANSLATION_UI["question"]["description"][lang]
    title = "SupplierContract - " + TRANSLATION_UI["question"]["title"][lang]

    if request.method == "POST":
        form = InitialStartForm(data=request.POST, lang=lang)

        if form.is_valid():
            user = create_user(
                lang,
                form.cleaned_data["sector"],
                form.cleaned_data["compSize"],
                form.cleaned_data["country"],
            )

            request.session["lang"] = lang
            request.session["user_id"] = str(user.user_id)

            user_question_sequence = SurveyUserQuestionSequence()
            user_question_sequence.user = user
            user_question_sequence.question = user.current_question
            user_question_sequence.save()

            return True
    else:
        form = InitialStartForm(lang=lang)

    return {
        "title": title,
        "question": question,
        "form": form,
        "action": action,
        "choosen_lang": lang,
    }


def handle_question_answers_request(request, user: SurveyUser, question_index: int):
    current_sequence = get_sequence_by_user_and_index(user, question_index)
    current_question = current_sequence.question

    try:
        tuple_answers = get_answer_choices(current_question, user.choosen_lang)
    except Exception as e:
        raise e

    if request.method == "POST":
        form = AnswerMChoice(
            tuple_answers,
            data=request.POST,
            lang=user.choosen_lang,
            answers_field_type=current_question.qtype,
        )

        if form.is_valid():
            with transaction.atomic():
                user = SurveyUser.objects.select_for_update(nowait=True).filter(id=user.id)[0]
                answers = form.cleaned_data["answers"]

                save_answers(tuple_answers, answers, user, current_sequence, question_index)

                feedback = form.cleaned_data["feedback"]
                if feedback:
                    user_feedback = SurveyUserFeedback.objects.filter(
                        user=user, question=current_question
                    )[:1]
                    if not user_feedback:
                        user_feedback = SurveyUserFeedback()
                        user_feedback.user = user
                        user_feedback.question = current_question
                    else:
                        user_feedback = user_feedback[0]
                    user_feedback.feedback = feedback
                    user_feedback.save()

                was_sequence_question_answered = current_sequence.has_been_answered
                if not was_sequence_question_answered:
                    current_sequence = mark_sequence_as_answered(current_sequence)
                next_sequence = get_next_sequence_with_not_answered_question(user, question_index)

                if next_sequence != None:
                    if not was_sequence_question_answered and next_sequence.index != question_index + 1:
                        increment_questions_sequence_order_from(user, question_index, 0, 1)
                    user.current_question = next_sequence.question
                else:
                    user.status = SURVEY_STATUS_UNDER_REVIEW

                user.save()

                return user
    else:
        selected_answers = []
        user_feedback = None
        if current_sequence.has_been_answered:
            user_answers = SurveyUserAnswer.objects.filter(
                user=user, answer__question=current_question, uvalue__gt=0
            )
            for user_answer in user_answers:
                selected_answers.append(user_answer.answer.id)

            user_feedback = SurveyUserFeedback.objects.filter(
                user=user, question=current_question
            )[:1]

        form = AnswerMChoice(
            tuple_answers,
            lang=user.choosen_lang,
            answers_field_type=current_question.qtype,
        )
        form.set_answers(selected_answers)
        if user_feedback:
            form.set_feedback(user_feedback[0].feedback)

    uniqueAnswers = SurveyQuestionAnswer.objects.filter(
        question=current_question, uniqueAnswer=True
    )
    uniqueAnswers = ",".join(str(uniqueAnswer.id) for uniqueAnswer in uniqueAnswers)
    form.set_unique_answers(uniqueAnswers)

    return {
        "title": "SupplierContract - "
        + TRANSLATION_UI["question"]["question"][user.choosen_lang] + " " + str(question_index),
        "question": TranslationKey.objects.filter(key=current_question.titleKey, lang=user.choosen_lang)[0].text,
        "form": form,
        "action": "/survey/question/" + str(question_index),
        "user": user,
        "current_question_index": question_index,
        "previous_question_index": question_index - 1,
        "total_questions_num": get_total_questions_number(user, question_index),
        "available_langs": [lang[0] for lang in LANG_SELECT],
        "has_question_answered": current_sequence.has_been_answered,
    }


def save_answers(answer_choices, answers, user: SurveyUser,
                current_sequence: SurveyUserQuestionSequence, question_index: int):
    existing_answer_ids = [int(i[0]) for i in answer_choices]
    user_answers = [int(i) for i in answers]
    current_branch = current_sequence.branch
    for a in existing_answer_ids:
        answer = SurveyUserAnswer.objects.filter(user=user, answer__id=a)[:1]
        if not answer:
            answer = SurveyUserAnswer()
            answer.user = user
            qanswer = SurveyQuestionAnswer.objects.filter(id=a)[:1]
            answer.answer = qanswer[0]
        else:
            answer = answer[0]

        # for the fisrt question we take branch from the question number.
        if question_index == 1:
            current_branch = existing_answer_ids.index(a) + 1

        is_answer_selected = a in user_answers
        is_answer_changed = (answer.uvalue == 0 and is_answer_selected) or (
                            answer.uvalue == 1 and not is_answer_selected)
        # if we modify the question and answer is unselected.
        if current_sequence.has_been_answered and is_answer_changed and answer.uvalue == 1:
            remove_questions_sequences(user, answer.answer, question_index, current_branch)

        answer.uvalue = 0
        if is_answer_selected:
            answer.uvalue = 1
            if is_answer_changed:
                create_questions_sequence(user, answer.answer, current_branch, question_index)

        answer.save()


def create_questions_sequence(user: SurveyUser, question_answer: SurveyQuestionAnswer,
                            current_branch: int, question_index: int):
    answer_questions_map = SurveyAnswerQuestionMap.objects.filter(answer=question_answer).order_by("branch", "order")
    number_of_questions_in_user_sequence = get_number_of_questions_in_user_sequence(user)
    for answer_question_map in answer_questions_map:
        sequence = get_active_sequence_by_user_and_question(user, answer_question_map.question)

        # in case if the question is already added in one of the futher branches.
        if (sequence and not sequence.has_been_answered and sequence.branch > current_branch and (
                not answer_question_map.branch or current_branch == answer_question_map.branch)
            ):
            increment_questions_sequence_order_from(user, question_index, sequence.index, 2)
            save_question_sequence_and_validate_user_status(user, sequence.question,
                                                    question_index + 1, current_branch, sequence.level)
            # inactivate the sequence in the future branch to be able to validate its answers later.
            sequence.is_active = False
            sequence.index = 0
            sequence.save()

            continue

        # normal scenario of adding questions to the sequence.
        # if map.branch == current_branch or if the map is general (branch = 0).
        if (not sequence and (
                not answer_question_map.branch or current_branch == answer_question_map.branch)
            ):
            number_of_questions_in_user_sequence += 1
            save_question_sequence_and_validate_user_status(user, answer_question_map.question,
                                number_of_questions_in_user_sequence, current_branch, answer_question_map.level)

            continue

        # in case if the answer leads to another branch (the map is related to another branch).
        if not sequence and answer_question_map.branch:
            if answer_question_map.branch in get_list_of_available_branches(user):
                number_of_questions_in_user_sequence += 1
                save_question_sequence_and_validate_user_status(user, answer_question_map.question,
                        number_of_questions_in_user_sequence, answer_question_map.branch, answer_question_map.level)
                continue

        # in case if we modify a question answer from 0 to 1 and related questions are already answered,
        # but not in this branch so we go deeper through the answers.
        if sequence and sequence.branch != current_branch:
            answers = SurveyUserAnswer.objects.filter(user=user, answer__question=sequence.question)
            for answer in answers:
                if answer.uvalue > 0:
                    create_questions_sequence(user, answer.answer, current_branch, number_of_questions_in_user_sequence)


def remove_questions_sequences(user: SurveyUser, questionAnswer: SurveyQuestionAnswer,
                                                question_index: int, current_branch: int):
    sequences_to_remove = []
    sequences_to_validate = SurveyUserQuestionSequence.objects.filter(user=user,
                                        branch=current_branch, index__gt=question_index)
    for sequence_to_validate in sequences_to_validate:
        other_user_answers = SurveyUserAnswer.objects.filter(user=user, uvalue__gt=0).exclude(
                                                            answer=questionAnswer).order_by('id')
        if not is_question_referenced_to_user_answers(user, other_user_answers, sequence_to_validate.question):
            sequences_to_remove.append(sequence_to_validate)

    for sequence_to_remove in sequences_to_remove:
        SurveyUserAnswer.objects.filter(user=user, answer__question=sequence_to_remove.question).delete()
        has_user_question_be_reset = user.current_question.uuid == sequence_to_remove.question.uuid
        increment_questions_sequence_order_from(user, sequence_to_remove.index, 0, 0)
        sequence_to_remove.delete()
        if has_user_question_be_reset:
            next_sequence = get_next_sequence_with_not_answered_question(user, question_index)
            if next_sequence == None:
                next_sequence = get_last_user_sequence(user)
            user.current_question = next_sequence.question


def is_question_referenced_to_user_answers(user: SurveyUser, user_answers: QuerySet, question: SurveyQuestion):
    for user_answer in user_answers:
        answer_questions_map = SurveyAnswerQuestionMap.objects.filter(answer=user_answer.answer, question=question)
        for answer_question_map in answer_questions_map:
            if not answer_question_map:
                continue

            if not answer_question_map.branch:
                return True

            if answer_question_map.branch in get_list_of_available_branches(user):
                return True

    return False


def save_question_sequence_and_validate_user_status(user: SurveyUser, question: SurveyQuestion,
                                                    index: int, branch: int, level: int):
    user_question_sequence = SurveyUserQuestionSequence()
    user_question_sequence.user = user
    user_question_sequence.question = question
    user_question_sequence.index = index
    user_question_sequence.branch = branch
    user_question_sequence.level = level
    user_question_sequence.save()
    if user.status == SURVEY_STATUS_UNDER_REVIEW:
        user.status = SURVEY_STATUS_IN_PROGRESS
        user.save()


def find_user_by_id(user_id):
    return SurveyUser.objects.filter(user_id=user_id)[0]


def get_answer_choices(survey_question: SurveyQuestion, user_lang: str):
    tuple_answers = []
    answer_choices = SurveyQuestionAnswer.objects.order_by("aindex").filter(
        question=survey_question
    )

    for answer_choice in answer_choices:
        translation_key = TranslationKey.objects.filter(
            lang=user_lang, key=answer_choice.answerKey
        )
        if translation_key.count() == 0:
            raise Exception(
                "The translation has to be done for the answers choices. "
                + "Please choose an another language."
            )

        tuple_answers.append(
            (
                answer_choice.id,
                format_html(
                    "{}{}",
                    mark_safe('<span class="checkmark"></span>'),
                    translation_key[0].text,
                ),
            )
        )

    return tuple_answers


def get_questions_with_user_answers(user: SurveyUser):
    survey_user_answers = SurveyUserAnswer.objects.filter(user=user).order_by(
        "answer__question__qindex", "answer__aindex"
    )
    questions_translations = get_formatted_translations(user.choosen_lang, "Q")
    answers_translations = get_formatted_translations(user.choosen_lang, "A")

    answered_questions_sequences = get_answered_questions_sequences(user)

    user_feedbacks = SurveyUserFeedback.objects.filter(
        user=user, question__isnull=False
    )
    feedbacks_per_question = {}
    for user_feedback in user_feedbacks:
        question_index = user_feedback.question.qindex
        for answered_question_sequence in answered_questions_sequences:
            if answered_question_sequence.question.uuid == user_feedback.question.uuid:
                question_index = answered_question_sequence.index
                break

        feedbacks_per_question[question_index] = user_feedback.feedback

    questions_with_user_answers = {}
    for survey_user_answer in survey_user_answers:
        question_title = questions_translations[
            survey_user_answer.answer.question.titleKey
        ]
        question_index = survey_user_answer.answer.question.qindex
        for answered_question_sequence in answered_questions_sequences:
            if answered_question_sequence.question.uuid == survey_user_answer.answer.question.uuid:
                question_index = answered_question_sequence.index
                break

        if question_index not in questions_with_user_answers:
            feedback = ""
            if question_index in feedbacks_per_question:
                feedback = feedbacks_per_question[question_index]

            questions_with_user_answers[question_index] = {
                "question_title": question_title,
                "feedback": feedback,
                "user_answers": [],
            }

        questions_with_user_answers[question_index]["user_answers"].append(
            {
                "value": survey_user_answer.uvalue,
                "title": answers_translations[survey_user_answer.answer.answerKey],
            }
        )

    return {k: v for k, v in sorted(questions_with_user_answers.items())}


def handle_general_feedback(user: SurveyUser(), request):
    user_feedback = SurveyUserFeedback.objects.filter(user=user, question__isnull=True)[:1]

    if request.method == "POST":
        general_feedback_form = GeneralFeedback(
            data=request.POST, lang=user.choosen_lang
        )

        if general_feedback_form.is_valid():
            if user_feedback:
                user_feedback = user_feedback[0]
            else:
                user_feedback = SurveyUserFeedback()
                user_feedback.user = user

            user_feedback.feedback = general_feedback_form.cleaned_data[
                "general_feedback"
            ]
            user_feedback.save()

            return general_feedback_form
    else:
        general_feedback_form = GeneralFeedback(lang=user.choosen_lang)

    if user_feedback:
        general_feedback_form.set_general_feedback(user_feedback[0].feedback)

    return general_feedback_form


def get_current_user_question_index_from_sequence(user: SurveyUser):
    user_question_sequence = SurveyUserQuestionSequence.objects.filter(user=user,question=user.current_question,
                                                                        is_active=True)
    if user_question_sequence:
        return user_question_sequence[0].index
    else:
        return 0


def get_sequence_by_user_and_index(user: SurveyUser, index: int):
    return SurveyUserQuestionSequence.objects.filter(user=user, index=index)[:1][0]


def get_active_sequence_by_user_and_question(user: SurveyUser, question: SurveyQuestion):
    sequence = SurveyUserQuestionSequence.objects.filter(user=user, question=question, is_active=True)[:1]
    if sequence:
        return sequence[0]

    return None



def get_number_of_questions_in_user_sequence(user):
    return SurveyUserQuestionSequence.objects.filter(user=user, is_active=True).count()


def get_next_sequence_with_not_answered_question(user: SurveyUser, question_index: int):
    questions_sequence = SurveyUserQuestionSequence.objects.filter(user=user, has_been_answered=False,
                                                    is_active=True).order_by("branch", "level", "index")[:1]
    if questions_sequence:
        return questions_sequence[0]

    return None


def get_answered_questions_sequences(user: SurveyUser):
    return SurveyUserQuestionSequence.objects.filter(user=user, has_been_answered=True,
                                                    is_active=True).order_by("branch", "level", "index")


def mark_sequence_as_answered(sequence: SurveyUserQuestionSequence):
    sequence.has_been_answered = True
    sequence.save()

    return sequence


def has_user_answered_on_the_question(user: SurveyUser, question: SurveyQuestion):
    return SurveyUserQuestionSequence.objects.filter(user=user, question=question,
                                                    has_user_answered_on_the_question=True).exists()


def increment_questions_sequence_order_from(user: SurveyUser, question_index: int, index_limit: int, increment: int):
    questions_sequence = SurveyUserQuestionSequence.objects.filter(user=user, is_active=True,
                index__gt=question_index, has_been_answered=False).order_by("branch", "level", "index")
    if index_limit:
        questions_sequence = questions_sequence.filter(index__lt=index_limit)
    for question_sequence in questions_sequence:
        question_sequence.index = question_index + increment
        question_index += 1
        question_sequence.save()


def get_total_questions_number(user: SurveyUser, question_index: int):
    branches_number = 5
    if question_index > 1:
        branches_number = SurveyUserQuestionSequence.objects.filter(user=user, is_active=True,
                                            branch__isnull=False).values('branch').distinct().count()
    total_questions_num = SurveyAnswerQuestionMap.objects.values('question').distinct().count()
    total_questions_num = int(math.ceil(total_questions_num * 5 / branches_number))
    if total_questions_num <= question_index:
        total_questions_num = question_index + 1

    return total_questions_num


def get_last_user_sequence(user: SurveyUser):
    return SurveyUserQuestionSequence.objects.filter(user=user, is_active=True).order_by('-index')[:1][0]


def get_related_inactive_instances(sequence: SurveyUserQuestionSequence):
    return SurveyUserQuestionSequence.objects.filter(user=sequence.user, answer=sequence.answer, is_active=False)


def get_list_of_available_branches(user: SurveyUser):
    return list(SurveyUserQuestionSequence.objects.filter(user=user,
                                branch__isnull=False).values('branch').distinct().values_list('branch', flat=True))
