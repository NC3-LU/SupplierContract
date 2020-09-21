$(document).ready(function() {

    const download = function(filename, text) {
        const pom = document.createElement('a');
        pom.setAttribute('href', 'data:application/plain;charset=utf-8,' + encodeURIComponent(text));
        pom.setAttribute('download', filename);

        if (document.createEvent) {
            const event = document.createEvent('MouseEvents');
            event.initEvent('click', true, true);
            pom.dispatchEvent(event);
        }
        else {
            pom.click();
        }
    }

    $('#download-direct-link').click(function() {
        const uriContent = '<!DOCTYPE html><head><meta charset="UTF-8"><meta http-equiv="refresh" content="0; url='
            + $('#direct-link').data('link') + '"></head><body></body></html>';
        download('SecuritySurvey.html', uriContent);
    });

    $('#direct-link').on('mouseup', function() {
        $(this).select();
    });

    $('#resume-later-code').on('mouseup', function() {
        $(this).select();
    });

    $('.logo-link').click(function(e) {
        e.preventDefault();
        $("#modal-leave-survey").modal();
    });

    $('#redirect-home').click(function() {
        window.location.replace('/');
    });

    let processCheckboxSelection = function(checkbox) {
        submitButton.attr("disabled", !checkboxesAndRadios.is(":checked"));

        if (checkboxes.length == 0) {
            return;
        }

        let uniqueAnswers = $("input[name=unique_answers]").val().split(',');

        if (uniqueAnswers.length > 0) {
            if (uniqueAnswers.includes(checkbox.val())) {
                checkboxesAndRadios.each(function() {
                    if ($(this).val() != checkbox.val()) {
                        $(this).prop("disabled", checkbox.is(":checked"));
                        $(this).parent("label").css("color", checkbox.is(":checked") ? "#ccc" : "");
                    }
                });
            } else {
                if (checkbox.is(":checked")) {
                    checkboxesAndRadios.each(function() {
                        if (uniqueAnswers.includes($(this).val())) {
                            $(this).prop("disabled", true);
                            $(this).parent("label").css("color", "#ccc");
                        }
                    });
                } else if (!checkboxesAndRadios.is(":checked")) {
                    checkboxesAndRadios.each(function() {
                        if (uniqueAnswers.includes($(this).val())) {
                            $(this).prop("disabled", false);
                            $(this).parent("label").css("color", "");
                        }
                    });
                }
            }
        }
    }

    var checkboxesAndRadios = $("input[type='checkbox'], input[type='radio']"),
        checkboxes = $("input[type='checkbox']"),
        submitButton = $("input[type='submit']");
    if (checkboxesAndRadios.length > 0) {
        processCheckboxSelection(checkboxesAndRadios.filter(':checked').first());
    }

    if (checkboxes.length > 0) {
        $(".select-multi-info").show();
    }

    checkboxesAndRadios.click(function() {
        processCheckboxSelection($(this));
    });

    $('.return-to-question').click(function() {
        window.location.replace('/survey/question/' + $(this).data("return-to-question"));
    });

    $('.cancel-modifications').click(function() {
        window.location.replace('/survey/review#question-' + $(this).data('question-index'));
    });

    $('#id_feedback')
        .click(function() {
            $(this).css('height', '120px');
            $(this).css('width', '80%');
        })
        .focusout(function() {
            $(this).css('height', '60px');
            $(this).css('width', 'auto');
        });

    let qrcodes = $('.qrcode');
    if (qrcodes.length > 0) {
        qrcodes.each(function() {
            var qrcode = new QRCode(this, {
                width: 120,
                height: 120,
                useSVG: true
            });
            qrcode.makeCode($('#direct-link').data('link'));
        });
    }

    let isAnswerChanged = false;
    if ($('.radio-buttons.form-check-input').length > 0) {
        let initial_radio_val = $('.radio-buttons.form-check-input:checked').val();
        $('.radio-buttons.form-check-input').change(function() {
            if ($('.radio-buttons.form-check-input:checked').val() != initial_radio_val) {
                isAnswerChanged = true;
            } else {
                isAnswerChanged = false;
            }
        });
    }
    if ($('.multiple-selection.form-check-input').length > 0) {
        let initiallySelectedValues = [];
        $.each($(".multiple-selection.form-check-input:checked"), function() {
            initiallySelectedValues.push($(this).val());
        });
        $('.multiple-selection.form-check-input').change(function() {
            let currentlySelectedValues = [];
            $.each($(".multiple-selection.form-check-input:checked"), function() {
                currentlySelectedValues.push($(this).val());
            });
            isAnswerChanged = currentlySelectedValues.length !== initiallySelectedValues.length ||
                !currentlySelectedValues.every((v, i) => v === initiallySelectedValues[i])
        });
    }

    $('.modify-question').click(function(event) {
        event.preventDefault();
        if (isAnswerChanged) {
            $("#modal-asnwer-changing-warning").modal();
            $('#submit-form').click(function() {
                $('#survey-question-form').submit();
            })
        } else {
            $('#survey-question-form').submit();
        }
    })
});
