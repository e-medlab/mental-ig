// Answer lists shared by the items of one instrument. `insert` copies the rules in place.
RuleSet: FrequencyAnswers
// LOINC answer list LL358-3, used by every PHQ-9 and GAD-7 symptom item
* answerOption[0].valueCoding = $LNC#LA6568-5 "Not at all"
* answerOption[=].extension[$weight].valueDecimal = 0
* answerOption[+].valueCoding = $LNC#LA6569-3 "Several days"
* answerOption[=].extension[$weight].valueDecimal = 1
* answerOption[+].valueCoding = $LNC#LA6570-1 "More than half the days"
* answerOption[=].extension[$weight].valueDecimal = 2
* answerOption[+].valueCoding = $LNC#LA6571-9 "Nearly every day"
* answerOption[=].extension[$weight].valueDecimal = 3

RuleSet: DifficultyAnswers
// LOINC answer list LL359-1, PHQ-9's functional-difficulty item (not scored)
* answerOption[0].valueCoding = $LNC#LA6572-7 "Not difficult at all"
* answerOption[+].valueCoding = $LNC#LA6573-5 "Somewhat difficult"
* answerOption[+].valueCoding = $LNC#LA6575-0 "Very difficult"
* answerOption[+].valueCoding = $LNC#LA6574-3 "Extremely difficult"

RuleSet: Who5Answers
// The six WHO-5 response options; the code is the points the answer scores
* answerOption[0].valueCoding = $who5answer#5 "All of the time"
* answerOption[=].extension[$weight].valueDecimal = 5
* answerOption[+].valueCoding = $who5answer#4 "Most of the time"
* answerOption[=].extension[$weight].valueDecimal = 4
* answerOption[+].valueCoding = $who5answer#3 "More than half of the time"
* answerOption[=].extension[$weight].valueDecimal = 3
* answerOption[+].valueCoding = $who5answer#2 "Less than half of the time"
* answerOption[=].extension[$weight].valueDecimal = 2
* answerOption[+].valueCoding = $who5answer#1 "Some of the time"
* answerOption[=].extension[$weight].valueDecimal = 1
* answerOption[+].valueCoding = $who5answer#0 "At no time"
* answerOption[=].extension[$weight].valueDecimal = 0

RuleSet: RadioButtons
* extension[$itemControl].valueCodeableConcept = $itemControlCS#radio-button "Radio Button"

RuleSet: QuestionnaireHeader(id, title)
* url = "https://taltech.ee/fhir/mental/Questionnaire/{id}"
* version = "0.1.0"
* title = "{title}"
* status = #draft
* experimental = true
* subjectType = #Patient
* date = "2026-11-21"
* publisher = "TalTech"
* language = #en
* jurisdiction = urn:iso:std:iso:3166#EE "Estonia"
