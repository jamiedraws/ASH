(function (global) {
    if ("_surveyEngine" in global) {
        // add the answer combo response template to the post order survey interface
        const addAnswerComboTemplate = function () {
            postOrderSurvey.addTemplate(
                "answerComboResponse",
                $("#modal__answer-combo-response"),
                false
            );
        };

        // determine if there's a selected answer based on the form controls' id attribute
        const hasSurveyAnswerById = function ($survey, id) {
            const $answer = $survey.find("#" + id);
            return $answer.is(":checked");
        };

        // determine if there's a selected answer(s) based on the form control's name attribute
        const hasSurveyAnswerByName = function ($survey, name, compare) {
            const $answers = $survey.find('[name="' + name + '"]:checked');
            return typeof compare === "function"
                ? compare($answers.length)
                : (function () {
                      return $answers.length > 0;
                  })();
        };

        // “The kit is too expensive” + any answer in Question #2 EXCEPT only the Philips Hue Smart Lights OR only the Ring Video Doorbell (also see new Answer Combos 4 and 5)
        const meetsCriteriaForAnswerCombo1 = function ($survey) {
            return (
                hasSurveyAnswerById($survey, "Q1A2") &&
                hasSurveyAnswerByName($survey, "282") &&
                !hasSurveyAnswerById($survey, "Q2A3") &&
                !hasSurveyAnswerById($survey, "Q2A4")
            );
        };

        // Any answer in Question #1 except “The kit is too expensive” + up to 3 of any of the individual product answers in Question #2 (excluding “All items in the kit”):
        const meetsCriteriaForAnswerCombo2 = function ($survey) {
            return (
                hasSurveyAnswerByName($survey, "263") &&
                !hasSurveyAnswerById($survey, "Q1A2") &&
                hasSurveyAnswerByName($survey, "282", function (answers) {
                    return answers > 0 && answers < 4;
                }) &&
                !hasSurveyAnswerById($survey, "Q2A1")
            );
        };

        // If “I don’t need all the devices included in the kit” is selected for Question #1 + any answer(s) for Question #2:
        const meetsCriteriaForAnswerCombo3 = function ($survey) {
            return (
                hasSurveyAnswerById($survey, "Q1A3") &&
                hasSurveyAnswerByName($survey, "282")
            );
        };

        // Any answer in Question #1 EXCEPT “Prefer to buy from another retailer” in Question #1 + Ring Video Doorbell ONLY in Question #2:
        const meetsCriteriaForAnswerCombo4 = function ($survey) {
            return (
                hasSurveyAnswerByName($survey, "263") &&
                !hasSurveyAnswerById($survey, "Q1A1") &&
                hasSurveyAnswerByName($survey, "282", function (answers) {
                    return answers === 1;
                }) &&
                hasSurveyAnswerById($survey, "Q2A4")
            );
        };

        // create new response object
        const createSubmitResponse = function () {
            return {
                id: "success",
                title: "Thank you for your response.",
                description: "",
                url: "",
                close: true
            };
        };

        // create downsell offer response
        const createDownsellResponse = function (response, mid) {
            response.url =
                "https://www.alexasmarthometvoffer.com/ASH/7.0000/Index.dtm?mid=" +
                mid;
            response.id = "downsell";
            response.description =
                "Perhaps you would be interested in our Alexa Smart Home Basics Kit? An exclusive online offer now only for $149.94 plus Free Shipping";

            return response;
        };

        // create parts offer response
        const createPartsResponse = function (response, mid) {
            response.url = "https://www.getalexastarterkit.com?mid=" + mid;
            response.id = "parts";
            response.description =
                "Interested in purchasing individual Alexa Smart Home Kit components?";

            return response;
        };

        // create response message based on the criteria tests
        const createResponseByCriteria = function () {
            const $survey = postOrderSurvey.select.survey;
            let response = createSubmitResponse();

            if (meetsCriteriaForAnswerCombo1($survey)) {
                response = createDownsellResponse(response, "11828896");
            }

            if (meetsCriteriaForAnswerCombo2($survey)) {
                response = createPartsResponse(response, "11828897");
            }

            if (meetsCriteriaForAnswerCombo3($survey)) {
                response = createPartsResponse(response, "11830980");
            }

            if (meetsCriteriaForAnswerCombo4($survey)) {
                response = createPartsResponse(response, "11832918");
            }

            return response;
        };

        // if the response object is identified as a parts offer or a downsell offer
        const isAnswerComboResponse = function (response) {
            return response.id === "parts" || response.id === "downsell";
        };

        // override public postSubmit method to customize response message
        _surveyEngine.postSubmit = function () {
            const response = createResponseByCriteria();
            const template = isAnswerComboResponse(response)
                ? "answerComboResponse"
                : "response";

            postOrderSurvey
                .addResponse({
                    addTemplate: postOrderSurvey.template[template],
                    addResponse: response
                })
                .then(function ($reference) {
                    postOrderSurvey.displayModal(
                        postOrderSurvey.select.survey,
                        false
                    );

                    setTimeout(function () {
                        postOrderSurvey.displayModal(
                            postOrderSurvey.select.loader,
                            false
                        );

                        postOrderSurvey.displayModal($reference, true);
                        $reference.find("[tabindex]:first").focus();
                    }, 1500);
                });
        };

        addEventListener("DOMContentLoaded", addAnswerComboTemplate);
    }
})(window);
