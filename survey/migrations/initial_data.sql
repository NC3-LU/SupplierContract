/*
If we want to autogenerate the uuids:
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
uuid_generate_v4()
*/

/* survey_surveyquestionservicecategory */
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (1, 'SERVCAT001GENERAL');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (2, 'SERVCAT002LOGMAINTENANCE');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (3, 'SERVCAT003LOGDEV');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (4, 'SERVCAT004RH1');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (5, 'SERVCAT005RH2');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (6, 'SERVCAT006AUDIT');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (7, 'SERVCAT007REGL');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (8, 'SERVCAT008SERVICE');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (9, 'SERVCAT009BACKUP');
INSERT INTO "survey_surveyquestionservicecategory" ("id", "titleKey") VALUES (10, 'SERVCAT010SPECIFIC');


/* survey_surveysection */
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (1, 'SECTION001GENERAL');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (2, 'SECTION002LOGICIEL');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (3, 'SECTION003RH');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (4, 'SECTION004AUDIT');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (5, 'SECTION005CONTRAINTESREGL');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (6, 'SECTION006SERVICE');
INSERT INTO "survey_surveysection" ("id", "sectionTitleKey") VALUES (7, 'SECTION006BACKUP');


/* survey_surveyquestion */
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('070946ca-abb0-44d0-b4b5-04c3155b78a9', 'Q001GENERAL', 'M', 1, 1, 1, 45);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('96eba38d-5129-461e-986c-50e5dc3b479f', 'Q002LOGMAINTENANCE', 'S', 2, 2, 2, 30);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('65a694eb-8043-4ba5-a515-ab986b00bf17', 'Q003LOGDEV', 'S', 3, 3, 2, 35);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('5fdd319c-cbcb-4dd9-a7d8-4277a977f697', 'Q004RH1', 'S', 4, 4, 3, 15);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('059a045d-c7ea-422f-8d42-288400349a51', 'Q005RH2', 'M', 5, 5, 3, 35);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('5251e7ff-4560-4d7a-a624-a002e35ab753', 'Q006AUDIT', 'S', 6, 6, 4, 15);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('31a93341-8df1-4bf9-93c6-377089be1756', 'Q007REGL', 'S', 7, 7, 5, 30);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('586ffb9e-70a0-4c00-9ada-f99e44bb32a3', 'Q008SERVICE', 'M', 8, 8, 6, 45);
INSERT INTO "survey_surveyquestion" ("uuid", "titleKey", "qtype", "qindex", "service_category_id", "section_id", "maxPoints") VALUES ('daa729d6-db30-4e4b-b91c-6610f7287c3e', 'Q009BACKUP', 'M', 9, 9, 7, 25);

/* survey_surveyquestionanswer */
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (1, 'Q001GENERALA001', 10, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (2, 'Q001GENERALA002', 20, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (3, 'Q001GENERALA003', 30, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (4, 'Q001GENERALA004', 40, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (5, 'Q001GENERALA005', 50, '070946ca-abb0-44d0-b4b5-04c3155b78a9', FALSE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (6, 'Q002LOGMAINTENANCEA001', 10, '96eba38d-5129-461e-986c-50e5dc3b479f', TRUE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (7, 'Q002LOGMAINTENANCEA002', 20, '96eba38d-5129-461e-986c-50e5dc3b479f', TRUE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (8, 'Q003LOGDEVA001', 10, '65a694eb-8043-4ba5-a515-ab986b00bf17', TRUE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (9, 'Q003LOGDEVA002', 20, '65a694eb-8043-4ba5-a515-ab986b00bf17', TRUE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (10, 'Q004RH1A001', 10, '5fdd319c-cbcb-4dd9-a7d8-4277a977f697', TRUE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (11, 'Q004RH1A002', 20, '5fdd319c-cbcb-4dd9-a7d8-4277a977f697', TRUE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (12, 'Q005RH2A001', 10, '059a045d-c7ea-422f-8d42-288400349a51', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (13, 'Q005RH2A002', 20, '059a045d-c7ea-422f-8d42-288400349a51', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (14, 'Q005RH2A003', 30, '059a045d-c7ea-422f-8d42-288400349a51', FALSE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (15, 'Q006AUDITA001', 10, '5251e7ff-4560-4d7a-a624-a002e35ab753', TRUE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (16, 'Q006AUDITA002', 20, '5251e7ff-4560-4d7a-a624-a002e35ab753', TRUE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (17, 'Q007REGLA001', 10, '31a93341-8df1-4bf9-93c6-377089be1756', TRUE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (18, 'Q007REGLA002', 20, '31a93341-8df1-4bf9-93c6-377089be1756', TRUE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (19, 'Q008SERVICEA001', 10, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (20, 'Q008SERVICEA002', 20, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (21, 'Q008SERVICEA003', 30, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', FALSE, 0);

INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (22, 'Q009BACKUPA001', 10, 'daa729d6-db30-4e4b-b91c-6610f7287c3e', FALSE, 0);
INSERT INTO "survey_surveyquestionanswer" ("id", "answerKey", "aindex", "question_id", "uniqueAnswer", "score") VALUES (23, 'Q009BACKUPA002', 20, 'daa729d6-db30-4e4b-b91c-6610f7287c3e', FALSE, 0);


/* survey_surveyanswerquestionmap */
-- 1st branch
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (1, 1, '31a93341-8df1-4bf9-93c6-377089be1756', 1, 1, 1); -- CR

-- 2nd branch
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (2, 2, '96eba38d-5129-461e-986c-50e5dc3b479f', 1, 2, 1); -- Q002LOGMAINTENANCE
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (3, 2, '65a694eb-8043-4ba5-a515-ab986b00bf17', 2, 2, 1); -- dev sur mesure
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (4, 6, '5251e7ff-4560-4d7a-a624-a002e35ab753', 4, 2, 3); -- audit
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (5, 7, '5251e7ff-4560-4d7a-a624-a002e35ab753', 5, 2, 3); -- audit
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (6, 9, '5251e7ff-4560-4d7a-a624-a002e35ab753', 6, 2, 3); -- audit
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (7, 8, '5fdd319c-cbcb-4dd9-a7d8-4277a977f697', 3, 2, 2); -- RH
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (8, 11, '5251e7ff-4560-4d7a-a624-a002e35ab753', 7, 0, 3); -- RH -> audit (for every branch)
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (9, 10, '059a045d-c7ea-422f-8d42-288400349a51', 8, 0, 2); -- RH -> RH of branch 3 (for every branch)
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (10, 15, '31a93341-8df1-4bf9-93c6-377089be1756', 9, 0, 5); -- audit -> CR (for every branch)
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (11, 16, '31a93341-8df1-4bf9-93c6-377089be1756', 10, 0, 5); -- audit -> CR (for every branch)

-- 3rd branch
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (12, 3, '059a045d-c7ea-422f-8d42-288400349a51', 1, 3, 1); -- Q005RH2
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (13, 12, '31a93341-8df1-4bf9-93c6-377089be1756', 2, 3, 2); -- Q005RH2 -> CR
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (14, 13, '31a93341-8df1-4bf9-93c6-377089be1756', 3, 3, 2); -- Q005RH2 -> CR
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (15, 14, '31a93341-8df1-4bf9-93c6-377089be1756', 4, 3, 2); -- Q005RH2 -> CR

-- 4th branch
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (16, 4, '5fdd319c-cbcb-4dd9-a7d8-4277a977f697', 1, 4, 1); -- RH
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (21, 10, '5251e7ff-4560-4d7a-a624-a002e35ab753', 2, 4, 2); -- RH -> Audit (when we select "yes" on RH answer, so after coming back from the brach 3)
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (17, 17, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', 3, 4, 3); -- CR -> Q008SERVICE
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (18, 18, '586ffb9e-70a0-4c00-9ada-f99e44bb32a3', 4, 4, 3); -- CR -> Q008SERVICE
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (19, 19, 'daa729d6-db30-4e4b-b91c-6610f7287c3e', 5, 4, 4); -- Q008SERVICE -> Q009BACKUP

-- 5th branch
INSERT INTO "survey_surveyanswerquestionmap" ("id", "answer_id", "question_id", "order", "branch", "level") VALUES (20, 5, '5251e7ff-4560-4d7a-a624-a002e35ab753', 1, 5, 5); -- audit


/* survey_recommendations */
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC004_EQUIPMAINT', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC041_EQUIPREBUT', 'a', 'j', NULL, TRUE, 1);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC022_VULNRESP', 'a', 'j', NULL, TRUE, 1);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC022_VULNRESP', 'a', 'j', NULL, TRUE, 2);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC026_EFFACEMENT', 'a', 'j', NULL, TRUE, 2);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 3);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC001_RH', 'a', 'j', NULL, TRUE, 3);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC013_ANTIVIRUS', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC022_VULNRESP', 'a', 'j', NULL, TRUE, 4);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC026_EFFACEMENT', 'a', 'j', NULL, TRUE, 4);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC002_CHARTER', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC017_CAPACITY', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC018_CASCADE', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC024_SLA', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC025_NDA', 'a', 'j', NULL, TRUE, 5);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC027_ACTIFS', 'a', 'j', NULL, TRUE, 5);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC003_TELEWORKING', 'a', 'j', NULL, TRUE, 6);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC008_SOFTWMAINT', 'a', 'j', NULL, TRUE, 6);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC009_LOGDEV', 'a', 'j', NULL, TRUE, 8);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC001_RH', 'a', 'j', NULL, TRUE, 10);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC003_TELEWORKING', 'a', 'j', NULL, TRUE, 12);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC007_SECPHY', 'a', 'j', NULL, TRUE, 13);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC006_LOGICAL', 'a', 'j', NULL, TRUE, 14);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC0051_IDENTIFY', 'a', 'j', NULL, TRUE, 14);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC005_AUTHFCT', 'a', 'j', NULL, TRUE, 14);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC016_AUDIT', 'a', 'j', NULL, TRUE, 15);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC012_CONFORM', 'a', 'j', NULL, TRUE, 17);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC010_BACKUP', 'a', 'j', NULL, TRUE, 19);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC004_EQUIPMAINT', 'a', 'j', NULL, TRUE, 20);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC041_EQUIPREBUT', 'a', 'j', NULL, TRUE, 20);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC014_NETWORK', 'a', 'j', NULL, TRUE, 20);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC011_INCIDENT', 'a', 'j', NULL, TRUE, 20);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC023_CHANGE', 'a', 'j', NULL, TRUE, 20);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC011_INCIDENT', 'a', 'j', NULL, TRUE, 21);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC021_PORT', 'a', 'j', NULL, TRUE, 21);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC023_CHANGE', 'a', 'j', NULL, TRUE, 21);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC004_EQUIPMAINT', 'a', 'j', NULL, TRUE, 22);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC041_EQUIPREBUT', 'a', 'j', NULL, TRUE, 22);

INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC011_INCIDENT', 'a', 'j', NULL, TRUE, 23);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC021_PORT', 'a', 'j', NULL, TRUE, 23);
INSERT INTO "survey_recommendations" ("textKey", "min_e_count", "max_e_count", "sector", "answerChosen", "forAnswer_id") VALUES ('REC023_CHANGE', 'a', 'j', NULL, TRUE, 23);


/* survey_recommendationcategory */
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC001_RH', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC002_CHARTER', 1);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC003_TELEWORKING', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC004_EQUIPMAINT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC005_AUTHFCT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC006_LOGICAL', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC007_SECPHY', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC008_SOFTWMAINT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC009_LOGDEV', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC010_BACKUP', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC011_INCIDENT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC012_CONFORM', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC013_ANTIVIRUS', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC014_NETWORK', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC016_AUDIT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC017_CAPACITY', 1);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC018_CASCADE', 1);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC021_PORT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC022_VULNRESP', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC023_CHANGE', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC024_SLA', 1);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC025_NDA', 1);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC026_EFFACEMENT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC027_ACTIFS', 1);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC041_EQUIPREBUT', 10);
INSERT INTO "survey_recommendationcategory" ("recommendation_key", "service_category_id") VALUES ('REC0051_IDENTIFY', 10);


/* survey_translationkey */
-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT001GENERAL', 'Général', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT002LOGMAINTENANCE', 'Maintenance logiciel', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT003LOGDEV', 'Développement logiciel', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT004RH1', 'Présence RH', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT005RH2', 'Interactions RH', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT006AUDIT', 'Audit', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT007REGL', 'Contraintes règlementaires', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT008SERVICE', 'Service', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT009BACKUP', 'Backup', 'fr', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT010SPECIFIC', 'Spécifique', 'fr', 'C');

-- EN
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT001GENERAL', 'General', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT002LOGMAINTENANCE', 'Software maintenance', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT003LOGDEV', 'Software development', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT004RH1', 'HR presence', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT005RH2', 'HR interactions', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT006AUDIT', 'Audit', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT007REGL', 'Regulatory constraints', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT008SERVICE', 'Service', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT009BACKUP', 'Backup', 'en', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT010SPECIFIC', 'Specific', 'en', 'C');

-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT001GENERAL', 'Allgemein', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT002LOGMAINTENANCE', 'Software-Wartung', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT003LOGDEV', 'Software-Entwicklung', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT004RH1', 'HR-Präsenz', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT005RH2', 'HR-Interaktionen', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT006AUDIT', 'Audit', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT007REGL', 'Rechtsvorschriften', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT008SERVICE', 'Service', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT009BACKUP', 'Backup', 'de', 'C');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SERVCAT010SPECIFIC', 'Spezifisch', 'de', 'C');

-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION001GENERAL', 'Description du service', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION002LOGICIEL', 'Logiciel', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION003RH', 'Ressources humaines', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION004AUDIT', 'Audit', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION005CONTRAINTESREGL', 'Contraintes règlementaires', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006SERVICE', 'Service', 'fr', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006BACKUP', 'Backup', 'fr', 'S');
-- EN
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION001GENERAL', 'Service description', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION002LOGICIEL', 'Software', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION003RH', 'Human resources', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION004AUDIT', 'Audit', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION005CONTRAINTESREGL', 'Regulatory constraints', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006SERVICE', 'Service', 'en', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006BACKUP', 'Backup', 'en', 'S');
-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION001GENERAL', 'Beschreibung des Services', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION002LOGICIEL', 'Software', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION003RH', 'Humanressourcen', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION004AUDIT', 'Audit', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION005CONTRAINTESREGL', 'Rechtsvorschriften', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006SERVICE', 'Service', 'de', 'S');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('SECTION006BACKUP', 'Backup', 'de', 'S');
-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERAL', 'Veuillez décrire au mieux le projet qui sera sous-traité parmi les catégories suivantes:', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA001', 'Achat ou location de matériel, sans prestation de service (ex. : serveur, matériel réseau, ordinateur, mobile, etc.). En cas d’achat de matériel et prestation de service, cocher également la case "Prestation de service"', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA002', 'Achat, location ou développement de logiciel. Tout type de prestations sur les logiciels (ex.: Maintenance, développement, etc.). Pour les logiciels en accès SaaS, veuillez cocher la case "Prestation de service"', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA003', 'Ressources humaines. Embauche d’une ou plusieurs personnes dans le projet (ex. : consultant, service de ménage, technicien, etc.)', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA004', 'Prestation de service. Délégation d’un service entier, notamment sur une infrastructure pouvant être gérée par un tiers (ex.: service de backup, cloud, SaaS, etc.)', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA005', 'Bâtiment. Tout élément se rapportant physiquement à un bâtiment (ex.: climatisation, etc.). Si le projet porte sur le périmètre d’accès physique et qu’il est lié à un logiciel, il faut également cocher la case "Achat, location ou développement de logiciel"', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCE', 'Est-ce que de la maintenance à distance aura lieue ? ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEV', 'Est-ce qu’il s’agit d’un développement sur mesure ?', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1', 'Est-ce que le projet utilisera des ressources humaines tierces ?', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2', 'Pouvez-vous décrire l’interaction de cette(ces) personne(s) avec votre organismes : ', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A001', 'Ils travailleront à distance', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A002', 'Ils auront accès au bâtiment ', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A003', 'Ils auront un accès logique au système d’information', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDIT', 'Est-ce que la prestation devra être auditée ?', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGL', 'Est-ce que le projet est soumis à des exigences légales ou contractuelles (p.ex. DAC, AML, GDPR, etc.) ?', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA001', 'Oui', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA002', 'Non', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICE', 'Est-ce que l’un des éléments suivants sera sous-traité :', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA001', 'Backup', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA002', 'Service de communication', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA003', 'Cloud', 'fr', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUP', 'Pouvez-vous décrire le service de backup', 'fr', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA001', 'Le service comprend la gestion d’une infrastructure de sauvegarde physique propre ', 'fr', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA002', 'Les données sont stockées en partie ou en totalité sur une infrastructure cloud', 'fr', 'A');

-- EN
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERAL', 'Please describe the project that will be subcontracted among the following categories:', 'en', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA001', 'Purchasing or leasing of equipment, without provision of the service (e.g. server, network equipment, computer, mobile etc.). In case of purchase of equipment and provision of the service, also check the box "Provision of service".', 'en', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA002', 'Purchase, lease or development of software. All types of software services (e.g. maintenance, development etc.). For software with SaaS access, please check the box "Service provision".', 'en', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA003', 'Human resources. Hiring of one or more people in the project (e.g. consultant, cleaning service, technician etc.).', 'en', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA004', 'Service provision. Delegation of an entire service, especially on an infrastructure that can be managed by a third party (e.g. backup service, cloud, SaaS etc.).', 'en', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA005', 'Building. Any element physically related to a building (e.g. air conditioning etc.). If the project concerns the physical access perimeter and is related to software, the "Purchase, lease or software development" box must also be checked.', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCE', 'Will remote maintenance be required?', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA001', 'Yes', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA002', 'No', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEV', 'Is it a tailor-made development?', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA001', 'Yes', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA002', 'No', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1', 'Will the project use third-party human resources?', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A001', 'Yes', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A002', 'No', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2', 'Could you describe the interaction of the person(s) with your organization?', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A001', 'They will work remotely', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A002', 'They will have access to the building', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A003', 'They will have a logical access to the information system', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDIT', 'Will the service be audited?', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA001', 'Yes', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA002', 'No', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGL', 'Is the project subject to any legal or contractual requirements (like DAC, AML, GDPR etc.) ?', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA001', 'Yes', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA002', 'No', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICE', 'Will any of the following be subcontracted:', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA001', 'Backup ', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA002', 'Communication services', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA003', 'Cloud', 'en', 'A');

  INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUP', 'Could you describe the backup service.', 'en', 'Q');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA001', 'The service includes the management of an own physical backup infrastructure.', 'en', 'A');
      INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA002', 'All or part of the data is stored in a cloud infrastructure.', 'en', 'A');
-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERAL', 'Bitte beschreiben Sie so gut wie möglich das Projekt, für das ein Unterauftrag aus den folgenden Kategorien vergeben wird:', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA001', 'Kauf oder Miete von Ausrüstung, ohne Erbringung von Dienstleistungen. (z.B.: Server, Netzwerkausrüstung, Computer, Handy usw.) Beim Kauf von Ausrüstung und bei der Erbringung von Dienstleistungen kreuzen Sie bitte auch das Kästchen "Servicebereitstellung" an.', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA002', 'Kauf, Leasing oder Entwicklung von Software. Alle Arten von Software-Dienstleistungen (z.B. Wartung, Entwicklung usw.). Für Software mit SaaS-Zugang kreuzen Sie bitte das Kästchen "Servicebereitstellung" an.', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA003', 'Personal. Einstellung einer oder mehrerer Personen für das Projekt (z.B. Berater, Reinigungsdienst, Techniker usw.).', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA004', 'Servicebereitstellung. Übertragung einer gesamten Dienstleistung, insbesondere über eine Infrastruktur, die von einem Dritten verwaltet werden kann (z.B.: Backup-Service, Cloud, SaaS, usw.).', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q001GENERALA005', 'Gebäude. Jedes Element, das physisch mit einem Gebäude verbunden ist (z.B. Klimaanlage usw.). Wenn sich das Projekt auf den physischen Zugangsbereich bezieht und softwarebezogen ist, muss auch das Kästchen "Kauf, Leasing oder Entwicklung von Software" angekreuzt werden.', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCE', 'Wird die Fernwartung einbezogen werden? ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA001', 'Ja', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q002LOGMAINTENANCEA002', 'Nein', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEV', 'Handelt es sich um eine maßgeschneiderte Entwicklung?', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA001', 'Ja', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q003LOGDEVA002', 'Nein', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1', 'Wird das Projekt Personal von Dritten einsetzen?  ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A001', 'Ja', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q004RH1A002', 'Nein', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2', 'Können Sie die Interaktion dieser Person(en) mit Ihrer Organisation beschreiben?', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A001', 'Sie werden remote arbeiten', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A002', 'Sie werden Zugang zum Gebäude haben', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q005RH2A003', 'Sie werden logischen Zugang zum Informationssystem haben', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDIT', 'Muss die Dienstleistung geprüft werden?', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA001', 'Ja', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q006AUDITA002', 'Nein', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGL', 'Unterliegt das Projekt gesetzlichen oder vertraglichen Anforderungen (z.b. DAC, AML, DSGVO, etc.)?', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA001', 'Ja', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q007REGLA002', 'Nein', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICE', 'Wird einer der folgenden Bereiche ausgelagert? ', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA001', 'Backup ', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA002', 'Kommunikationsservice', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q008SERVICEA003', 'Cloud', 'de', 'A');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUP', 'Können Sie den Backup-Dienst beschreiben', 'de', 'Q');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA001', 'Der Service umfasst die Verwaltung einer eigenen physischen Backup-Infrastruktur.', 'de', 'A');
    INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('Q009BACKUPA002', 'Alle oder ein Teil der Daten werden in einer Cloud-Infrastruktur gespeichert.', 'de', 'A');

-- FR
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC001_RH', 'Le collaborateur externe est soigneusement séléctionné lors du processus d’embauche. Lors du départ du collaborateur externe, une procédure assure que ce dernier rend tous les biens prêtés par l’organisation du client (matériel, laptop, clés, badges, smartphone, etc.)', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC002_CHARTER', 'Le prestataire adhère aux pratiques de sécurité de l’organisation du client et communique toute situation où cette adhésion n’est pas possible, pour contribuer à prévenir des lacunes ou des conflits en matière de sécurité qui pourraient nuire aux performances de sécurité. Il convient de formaliser les pratiques de sécurité dans une charte de bonne conduite en matière de sécurité des systèmes d’informations.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC003_TELEWORKING', 'Les modalités d’un travail ou d’une maintenance à distance sont formalisées. Le dispositif et les mesures de sécurité techniques et organisationnelles mises en place par le prestataire sont validés par le client.', 'fr', 'R');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC004_EQUIPMAINT', 'Les modalités et la fréquence de maintenance de l’infrastructure et les modalités d’intervention pour maintenance et dépannage sont gérés par des procédures établies.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC041_EQUIPREBUT', 'Lors d’une réutilisation ou mise au rebut de matériel, les données du client et les logiciels sous licence sont effacés ou leur support de stockage est détruit de façon irréversible et documentée.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC005_AUTHFCT', 'L’accès logique à une fonction ou transaction d’un système d’information ou logiciel sous-traité est limité et géré suivant une procédure établie.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC0051_IDENTIFY', 'Les utilisateurs ou processus accédant à un système d’information ou logiciel sous-traité sont identifiés.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC006_LOGICAL', 'L’authentification et l’autorisation pour l’accès de l’utilisateur ou du processus au système d’information ou logiciel sous-traité sont gérés suivant une procédure établie.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC007_SECPHY', 'L’accès physique du prestataire à un bâtiment, local ou une infrastructure est géré suivant une procédure établie. Les moyens d’accès remis au prestataires sont inventoriés et récupérés au terme de l’exécution du contrat.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC009_LOGDEV', 'Le contrat prend en compte les spécificités liées aux développements logiciels comme les licences.  Le contrat définit également les référentiels de bonnes pratiques (p.ex. OWASP) à suivre lors du développement.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC008_SOFTWMAINT', 'Les modalités et la fréquence de maintenance ou de mise à jour du logiciel ou du système d’exploitation sont gérés suivant une procédure établie.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC010_BACKUP', 'Lors de la sous-traitance d’un service de sauvegarde (backup), les éléments suivants sont gérés :
- les mécanismes de mise en redondance et de récupération des sauvegardes ;
- l’externalisation des infrastructures de sauvegarde ;
- le chiffrement de la sauvegarde et la gestion des clés de chiffrement ;
Les procédures de sauvegarde et de récupération sont testées périodiquement.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC011_INCIDENT', 'Le prestataire informe l’organisation du client en temps utile de tout incident technique ou violation de la sécurité susceptible d’avoir un impact sur les activités de l’organisation. Les obligation légales liées à  la notification de violations de la protection des données à caractère personnel doivent être considérées dans ce contexte. Il est recommandé de définir un point de contact unique pour la communication entre parties contractuelles.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC012_CONFORM', 'Le prestataire fournit des preuves d’institutions ou d’organisations de contrôle indépendantes que ses opérations et contrôles sont conformes aux exigences légales et contractuelles.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC013_ANTIVIRUS', 'Si la prestation de service comprend la mise en oeuvre de logiciels système ou applicatifs gérés par le prestataire, ces derniers sont protégés contre les codes malveillants par un moyen approprié et une procédure de mise à jour régulière de cette protection est établie.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC014_NETWORK', 'Les bonnes pratiques de conception de réseau, tel le cloisement en sous-réseaux, sont respectées.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC016_AUDIT', 'Le contrat prévoit le droit d’auditer les contrôles de sécurité périodiquement, ou lors de changements importants dans la relation de sous-traitance', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC017_CAPACITY', 'Les capacitiés techniques et financières du prestataire sont vérifiées en vue d’une bonne exécution du contrat', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC018_CASCADE', 'Le prestataire garantit, au sein de sa propre chaîne d’approvisionnement ou en cas d’une sous-traitance en cascade, le respect des exigences de sécurité exigées par le client', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC021_PORT', 'Le contrat définit les modalités pour la récupération des données. Ces données sont notamment récupérables dans un format commun (p.ex. texte, json, XML, etc.), ou défini en avance pour être réimporté dans un autre système.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC022_VULNRESP', 'Le prestataire fournit en temps utile un traitement approprié pour les vulnérabilités connues qui peuvent avoir un impact sur les activités du client.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC023_CHANGE', 'Le prestataire informe l’organisation du client en temps utile des changements dans son environnement qui peuvent avoir un impact sur les activités de l’organisation du client. En fonction de leur impact, le prestataire planifie ces changements de manière concertée avec le client.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC024_SLA', 'Le prestataire garantit les niveaux de service minimal définis dans le contrat. Le prestataire informe l’organisation du client de ses plans pour assurer les niveaux de service dans des conditions normales et lors d’événements perturbateurs, que ces événements surgissent dans les locaux ou sur les infrastructures de l’organisation du client ou du prestataire de service.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC025_NDA', 'Le prestataire et ses sous-traitants ou fournisseurs en cascade éventuels respectent la confidentialité des informations dont ils prennent connaissance lors de l’exécution du contrat. A cette fin, il convient de définir un accord de confidentialité et de non divulgation entre parties contractuelles. Cet accord engage les sociétés et fournisseurs prestataires ainsi que leurs employés respectifs individuellement. L’engagement peut dépasser la durée d’exécution du contrat si le niveau de confidentialité l’exige.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC026_EFFACEMENT', 'À la fin du contrat, les données du client sont effacées de façon irréversible et documentée. Les obligations légales liées à la protection des données à caractère personnel sont tout particulièrement considérées dans ce contexte.', 'fr', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC027_ACTIFS', 'Les actif nécessaires à l’exécution du contrat et les droits de propriété associés sont gérés durant les différentes étapes de l’exécution.', 'fr', 'R');

-- EN
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC001_RH', 'External Collaborator should be carefully selected during the hiring process. When the External Collaborator leaves, a procedure ensures that the Collaborator returns all the goods received from the Client’s organization (equipment, laptop, keys, badges, smartphone, etc.)', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC002_CHARTER', 'The Provider complies with the security practices of the Customer’s organization. Any situations where such compliance is not possible are reported to help prevent security gaps or conflicts that could adversely affect security performance. Security practices are formalized in a charter of good conduct for information security systems.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC003_TELEWORKING', 'The terms and conditions of remotely controlled operations and/or maintenance are formalized. Technical and organizational security measures implemented by the Service Provider are validated by the Customer.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC004_EQUIPMAINT', 'The terms and frequency of maintenance, intervention and troubleshooting of the infrastructure are managed by established procedures.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC041_EQUIPREBUT', 'When hardware is reused or discarded, customer data and licensed software are erased or its storage medium is irreversibly destroyed by an established procedure.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC005_AUTHFCT', 'Logical access to a function or transaction of a subcontracted information system or software is limited and managed according to an established procedure.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC0051_IDENTIFY', 'Users or processes accessing outsourced information systems or software are identified.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC006_LOGICAL', 'Authentication and authorization of users or processes accessing outsourced information systems or software are managed according to an established procedure.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC007_SECPHY', 'The physical access of the Provider to a building, premises or infrastructure is managed according to an established procedure. The means of access given to the Providers are inventoried and recovered upon completion of the contract.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC008_SOFTWMAINT', 'The terms and frequency of maintenance or update of the software or operating system are managed according to an established procedure.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC009_LOGDEV', 'The contract takes into account the specificities related to software developments such as licenses.  The contract also defines the best practice repository (e.g. OWASP) to be followed during development.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC010_BACKUP', 'When outsourcing a backup service, the following elements are managed:
- mechanisms for redundancy and recovery of backups;
- outsourcing of backup infrastructures;
- backup encryption and encryption key management;
The backup and recovery procedures are tested periodically.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC011_INCIDENT', 'The Provider informs the Customer’s organization in a timely manner about any technical incidents or security breaches that may have an impact on the organization’s activities. The legal obligations related to the notification of breaches of personal data protection must be considered in this context. It is recommended to establish a single point of contact for communication between contractual parties.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC012_CONFORM', 'The Provider provides evidence from independent audit institutions or organizations that its operations and controls comply with legal and contractual requirements.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC013_ANTIVIRUS', 'If the service includes the implementation of system or application software managed by the Provider, the latter shall be protected against malicious code by appropriate means and a procedure for regularly updating this protection shall be established.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC014_NETWORK', 'Good network design practices, such as network partitioning, are followed.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC016_AUDIT', 'The contract provides for the right to audit security controls periodically, or upon significant changes in the subcontracting relationship.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC017_CAPACITY', 'The technical and financial capabilities of the Service Provider are verified to ensure proper performance of the contract.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC018_CASCADE', 'The Service Provider guarantees, within its own supply chain or in the case of cascading subcontracting, compliance with the security requirements requested by the Customer.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC021_PORT', 'The contract defines the terms and conditions for data recovery. In particular, data can be retrieved in a common format (e.g. text, json, XML, etc.), or a format to be defined in advance to allow the data to be re-imported into another system.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC022_VULNRESP', 'The Provider provides timely and appropriate handling of known vulnerabilities that may impact the Client’s activities.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC023_CHANGE', 'The Provider informs the Client’s organization in a timely manner of changes in its environment that may impact the Client organization’s activities. Depending on the impact, the Provider plans these changes in consultation with the Client.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC024_SLA', 'The Service Provider guarantees the minimum service levels defined in the contract. The Provider shall inform the Customer’s organization of its plans to ensure service levels under normal conditions and during disruptive events, whether such events occur on the premises or infrastructure of the Customer’s organization or that of the Service Provider.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC025_NDA', 'The Service Provider and any subcontractors or cascading suppliers shall respect the confidentiality of the information which comes to their knowledge during the execution of the contract. To this end, a confidentiality and non-disclosure agreement shall be drawn up between the contractual parties. This agreement is binding on the companies and suppliers providing the service as well as their respective employees individually. The commitment may exceed the duration of the execution of the contract if required by the level of confidentiality.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC026_EFFACEMENT', 'At the end of the contract, the Customer’s data is irreversibly deleted according to an established procedure. Legal obligations regarding the protection of personal data shall be particularly considered in this context.', 'en', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC027_ACTIFS', 'All assets required for the execution of the contract and the associated property rights are managed during the various stages of contract execution.', 'en', 'R');

-- DE
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC001_RH', 'Der externe Kollaborator sollte sorgfältig ausgewählt werden. Bei Beendigung des Arbeitsverhältnisses, wird durch ein Verfahren sichergestellt, dass der externe Kollaborator das von der Organisation des Kunden erhaltene Material (Geräte, Laptops, Schlüssel, Ausweise, Smartphones usw.) zurücksgibt.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC002_CHARTER', 'Der Dienstleistungsanbieter befolgt die Sicherheitspraktiken der Kundenorganisation und teilt alle Umstände mit, unter welchen dies nicht möglich ist. Der Anbieter trägt so dazu bei, Sicherheitslücken oder -konflikte zu vermeiden, die sich negativ auf die Sicherheitsleistung auswirken können. Die Sicherheitspraktiken sollten in einer Charta für die Sicherheit von Informationssystemen beschrieben sein.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC003_TELEWORKING', 'Die Modalitäten einer Fernarbeit oder Fernwartung sind formalisiert. Die technischen und organisatorischen Sicherheitsmaßnahmen und -verfahren, die vom Dienstanbieter eingeführt wurden, werden vom Kunden validiert.', 'de', 'R');

INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC004_EQUIPMAINT', 'Die Modalitäten und die Häufigkeit der Wartung der Infrastruktur sowie die Interventionsmodalitäten für Wartung und Fehlerbehebung werden nach festgelegten Verfahren verwaltet.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC041_EQUIPREBUT', 'Im Falle einer Wiederverwendung oder Entsorgung von Hardware sind Kundendaten und lizenzierte Software zu löschen oder deren Speichermedium irreversibel zu zerstören. Der entsprechende Vorgang wird entsprechend dokumentiert.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC005_AUTHFCT', 'Der logische Zugriff auf eine Funktion oder Transaktion eines(einer) ausgelagerten Informationssystems oder Software ist eingeschränkt und wird nach einem festgelegten Verfahren verwaltet.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC006_LOGICAL', 'Authentifizierung und Autorisierung des Benutzer- oder Prozesszugriffs auf das ausgelagerte Informationssystem oder die ausgelagerte Software werden nach einem festgelegten Verfahren verwaltet.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC0051_IDENTIFY', 'Benutzer oder Prozesse, die auf ein ausgelagertes Informationssystem oder eine ausgelagerte Software zugreifen, werden identifiziert.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC007_SECPHY', 'Der physische Zugang des Dienstleistungsanbieters zu einem Gebäude, einer Räumlichkeit oder einer Infrastruktur wird nach einem festgelegten Verfahren geregelt. Die dem Dienstleistungsanbieter gewährten Zugangsmittel werden inventarisiert und bei Vertragsende wieder eingezogen.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC008_SOFTWMAINT', 'Die Methoden und die Häufigkeit der Wartung oder Aktualisierung der Software oder des Betriebssystems werden nach einem festgelegten Verfahren verwaltet.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC009_LOGDEV', 'Der Vertrag berücksichtigt Besonderheiten, die im Zusammenhang mit Software-Entwicklungen stehen, wie z.B. die Lizenzen.  Der Vertrag definiert weiterhin ein Verzeichnis bewährter Praktiken (z.B. OWASP), welche bei der Entwicklung zu befolgen ist.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC010_BACKUP', 'Wenn ein Sicherungsdienst (Backup) ausgelagert wird, werden die folgenden Elemente verwaltet:
- Redundanz- und Wiederherstellungsmechanismen für Backups;
- Auslagerung von Backup-Infrastrukturen;
- Backup-Verschlüsselung und Verschlüsselungsmanagement;
Sicherungs- und Wiederherstellungsverfahren werden regelmäßig getestet.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC011_INCIDENT', 'Der Dienstleistungsanbieter informiert die Kundenorganisation rechtzeitig über alle technischen Vorfälle oder Sicherheitsverletzungen, die sich auf den Geschäftsbetrieb der Organisation auswirken können. Die rechtlichen Bestimmungen für die Meldung von Verletzungen des Schutzes personenbezogener Daten sind in diesem Zusammenhang zu beachten. Es wird empfohlen, eine zentrale Kontaktstelle für die Kommunikation zwischen den Vertragsparteien einzurichten.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC012_CONFORM', 'Der Dienstleistungsanbieter liefert Nachweise von unabhängigen Prüfungseinrichtungen oder -organisationen, dass sein Betrieb und seine Sicherheitskontrollen den gesetzlichen und vertraglichen Anforderungen entsprechen.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC013_ANTIVIRUS', 'Umfasst die Erbringung der Dienstleistung die Implementierung von Systemsoftware oder Anwendungen, die vom Dienstleistungsanbieter verwaltet werden, so ist diese Software durch geeignete Mittel vor bösartigem Code zu schützen. Es ist ein Verfahren zur regelmässigen Aktualisierung dieses Schutzes festzulegen.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC014_NETWORK', 'Es sind bewährte Praktiken in der Netzwerkentwicklung  anzuwenden, wie z.B. die Partitionierung von Subnetzwerken.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC016_AUDIT', 'Der Vertrag sieht das Recht vor, die Sicherheitskontrollen in regelmässigen Abständen oder bei wesentlichen Änderungen im Untervergabevertrag zu prüfen.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC017_CAPACITY', 'Die technischen und finanziellen Kapazitäten des Dienstleistungsanbieters werden im Hinblick auf eine ordnungsgemässe Ausführung des Vertrags geprüft.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC018_CASCADE', 'Der Dienstleistungsanbieter garantiert innerhalb seiner eigenen Liefer- und Dienstleistungsketten oder im Falle einer Untervergabe die Einhaltung der vom Kunden geforderten Sicherheitsanforderungen.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC021_PORT', 'Der Vertrag beschreibt die Bedingungen und Ausführung einer Datenwiederherstellung. Insbesondere können die Daten in einem gebräuchlichen Format (z. B. Text, Json, XML usw.) abgerufen werden oder sie werden in einem im Voraus beschriebenen spezifischen Format zur Verfügung gestellt, das für den Rückimport in ein anderes System nötig ist.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC022_VULNRESP', 'Der Dienstleistungsanbieter reagiert rechtzeitig und angemessen auf bekannt gewordene Schwachstellen, die sich auf den Geschäftsbetrieb des Kunden auswirken können.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC023_CHANGE', 'Der Dienstleistungsanbieter informiert die Kundenorganisation rechtzeitig über Änderungen in deren Umgebung, die sich auf den Geschäftsbetrieb der Kundenorganisation auswirken können. Entsprechend ihren Auswirkungen plant der Dienstleistungsanbieter diese Änderungen in Absprache mit dem Kunden.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC024_SLA', 'Der Dienstleistungsanbieter gewährleistet die im Vertrag festgelegten Mindestdienstleistungsniveaus. Er informiert die Kundenorganisation über seine Vorkehrungen zur Gewährleistung dieser Mindestleistungen sowohl unter normalen Betriebsbedingungen als auch bei Störungen. Dies gilt unabhängig davon, ob diese Störung in den Geschäftsräumen oder in der Infrastruktur der Kundenorganisation oder in denen des Dienstleistungsanbieters aufgetreten ist.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC025_NDA', 'Der Dienstleistungsanbieter und alle nachgeordneten Auftragnehmer oder Zulieferer haben die Vertraulichkeit der Informationen zu wahren, von denen sie während der Ausführung des Vertrags Kenntnis erhalten. Zu diesem Zweck wird zwischen den Vertragsparteien eine Vertraulichkeits- und Geheimhaltungsvereinbarung ausgearbeitet. Diese Vereinbarung ist sowohl für die Dienstleistungsfirmen und Lieferanten, als auch für deren jeweiligen Mitarbeiter individuell bindend. Die Verpflichtung kann über den Zeitraum der Vertragserfüllung hinausgehen, wenn der Grad der Vertraulichkeit dies erfordert.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC026_EFFACEMENT', 'Bei Vertragsende werden die Daten des Kunden nach einem festgelegten Verfahren unwiderruflich gelöscht. Die Durchführung wird entsprechend dokumentiert. Insbesonders sind in diesem Zusammenhang die gesetzlichen Bestimmungen zum Schutz personenbezogener Daten zu berücksichtigen.', 'de', 'R');
INSERT INTO "survey_translationkey" ("key", "text", "lang", "ttype") VALUES ('REC027_ACTIFS', 'Die für die Vertragserfüllung notwendigen Aktiva und die verbundenen Eigentumsrechte werden in den verschiedenen Phasen der Vertragserfüllung verwaltet.', 'de', 'R');


-- Update the sequences IDs
SELECT setval('survey_surveysection_id_seq', (SELECT MAX(id) from "survey_surveysection"));
SELECT setval('survey_surveyquestionservicecategory_id_seq', (SELECT MAX(id) from "survey_surveyquestionservicecategory"));
SELECT setval('survey_surveyquestionanswer_id_seq', (SELECT MAX(id) from "survey_surveyquestionanswer"));
SELECT setval('survey_surveyanswerquestionmap_id_seq', (SELECT MAX(id) from "survey_surveyanswerquestionmap"));
