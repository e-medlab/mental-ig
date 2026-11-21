// WHO-5: one completed questionnaire and its assessment procedure per patient.

Instance: who-5-response-mari
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "WHO-5 answered by Mari Maasikas"
Description: "Mari Maasikas (routine check-up, no concerns) completed WHO-5 on 2026-11-10. WHO-5 raw score 20 of 25, well-being index 80 of 100: adequate well-being."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/who-5|0.1.0"
* status = #completed
* subject = Reference(patient-mari)
* authored = "2026-11-10T09:15:00+02:00"
* author = Reference(patient-mari)
* source = Reference(patient-mari)
* partOf = Reference(who-5-procedure-mari)
* item[0].linkId = "who5-1"
* item[=].text = "I have felt cheerful and in good spirits"
* item[=].answer.valueCoding = $who5answer#4 "Most of the time"
* item[+].linkId = "who5-2"
* item[=].text = "I have felt calm and relaxed"
* item[=].answer.valueCoding = $who5answer#4 "Most of the time"
* item[+].linkId = "who5-3"
* item[=].text = "I have felt active and vigorous"
* item[=].answer.valueCoding = $who5answer#3 "More than half of the time"
* item[+].linkId = "who5-4"
* item[=].text = "I woke up feeling fresh and rested"
* item[=].answer.valueCoding = $who5answer#4 "Most of the time"
* item[+].linkId = "who5-5"
* item[=].text = "My daily life has been filled with things that interest me"
* item[=].answer.valueCoding = $who5answer#5 "All of the time"
* item[+].linkId = "who-5-raw"
* item[=].text = "WHO-5 raw score (0–25)"
* item[=].answer.valueInteger = 20
* item[+].linkId = "who-5-index"
* item[=].text = "WHO-5 well-being index (0–100)"
* item[=].answer.valueInteger = 80

Instance: who-5-procedure-mari
InstanceOf: Procedure
Usage: #example
Title: "WHO-5 assessment of Mari Maasikas"
Description: "The WHO-5 assessment of Mari Maasikas on 2026-11-10. The answers are in WHO-5 answered by Mari Maasikas."
* status = #completed
* code = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#1417808008 "Assessment using World Health Organization-Five Well-Being Index questionnaire"
* subject = Reference(patient-mari)
* performedDateTime = "2026-11-10T09:15:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "WHO-5 raw score 20 of 25, well-being index 80 of 100: adequate well-being"

Instance: who-5-response-juhan
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "WHO-5 answered by Juhan Juurikas"
Description: "Juhan Juurikas (low mood and poor sleep for six weeks) completed WHO-5 on 2026-11-12. WHO-5 raw score 11 of 25, well-being index 44 of 100: poor well-being; screened for depression with PHQ-9 at the same visit."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/who-5|0.1.0"
* status = #completed
* subject = Reference(patient-juhan)
* authored = "2026-11-12T14:40:00+02:00"
* author = Reference(patient-juhan)
* source = Reference(patient-juhan)
* partOf = Reference(who-5-procedure-juhan)
* item[0].linkId = "who5-1"
* item[=].text = "I have felt cheerful and in good spirits"
* item[=].answer.valueCoding = $who5answer#2 "Less than half of the time"
* item[+].linkId = "who5-2"
* item[=].text = "I have felt calm and relaxed"
* item[=].answer.valueCoding = $who5answer#2 "Less than half of the time"
* item[+].linkId = "who5-3"
* item[=].text = "I have felt active and vigorous"
* item[=].answer.valueCoding = $who5answer#3 "More than half of the time"
* item[+].linkId = "who5-4"
* item[=].text = "I woke up feeling fresh and rested"
* item[=].answer.valueCoding = $who5answer#2 "Less than half of the time"
* item[+].linkId = "who5-5"
* item[=].text = "My daily life has been filled with things that interest me"
* item[=].answer.valueCoding = $who5answer#2 "Less than half of the time"
* item[+].linkId = "who-5-raw"
* item[=].text = "WHO-5 raw score (0–25)"
* item[=].answer.valueInteger = 11
* item[+].linkId = "who-5-index"
* item[=].text = "WHO-5 well-being index (0–100)"
* item[=].answer.valueInteger = 44

Instance: who-5-procedure-juhan
InstanceOf: Procedure
Usage: #example
Title: "WHO-5 assessment of Juhan Juurikas"
Description: "The WHO-5 assessment of Juhan Juurikas on 2026-11-12. The answers are in WHO-5 answered by Juhan Juurikas."
* status = #completed
* code = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#1417808008 "Assessment using World Health Organization-Five Well-Being Index questionnaire"
* subject = Reference(patient-juhan)
* performedDateTime = "2026-11-12T14:40:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "WHO-5 raw score 11 of 25, well-being index 44 of 100: poor well-being; screened for depression with PHQ-9 at the same visit"

Instance: who-5-response-kati
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "WHO-5 answered by Kati Karu"
Description: "Kati Karu (cannot cope at work or at home) completed WHO-5 on 2026-11-14. WHO-5 raw score 5 of 25, well-being index 20 of 100: poor well-being; screened for depression with PHQ-9 at the same visit."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/who-5|0.1.0"
* status = #completed
* subject = Reference(patient-kati)
* authored = "2026-11-14T11:05:00+02:00"
* author = Reference(patient-kati)
* source = Reference(patient-kati)
* partOf = Reference(who-5-procedure-kati)
* item[0].linkId = "who5-1"
* item[=].text = "I have felt cheerful and in good spirits"
* item[=].answer.valueCoding = $who5answer#1 "Some of the time"
* item[+].linkId = "who5-2"
* item[=].text = "I have felt calm and relaxed"
* item[=].answer.valueCoding = $who5answer#1 "Some of the time"
* item[+].linkId = "who5-3"
* item[=].text = "I have felt active and vigorous"
* item[=].answer.valueCoding = $who5answer#1 "Some of the time"
* item[+].linkId = "who5-4"
* item[=].text = "I woke up feeling fresh and rested"
* item[=].answer.valueCoding = $who5answer#0 "At no time"
* item[+].linkId = "who5-5"
* item[=].text = "My daily life has been filled with things that interest me"
* item[=].answer.valueCoding = $who5answer#2 "Less than half of the time"
* item[+].linkId = "who-5-raw"
* item[=].text = "WHO-5 raw score (0–25)"
* item[=].answer.valueInteger = 5
* item[+].linkId = "who-5-index"
* item[=].text = "WHO-5 well-being index (0–100)"
* item[=].answer.valueInteger = 20

Instance: who-5-procedure-kati
InstanceOf: Procedure
Usage: #example
Title: "WHO-5 assessment of Kati Karu"
Description: "The WHO-5 assessment of Kati Karu on 2026-11-14. The answers are in WHO-5 answered by Kati Karu."
* status = #completed
* code = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#1417808008 "Assessment using World Health Organization-Five Well-Being Index questionnaire"
* subject = Reference(patient-kati)
* performedDateTime = "2026-11-14T11:05:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "WHO-5 raw score 5 of 25, well-being index 20 of 100: poor well-being; screened for depression with PHQ-9 at the same visit"
