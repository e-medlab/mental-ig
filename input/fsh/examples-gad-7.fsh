// GAD-7: one completed questionnaire and its assessment procedure per patient.

Instance: gad-7-response-mari
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "GAD-7 answered by Mari Maasikas"
Description: "Mari Maasikas (routine check-up, no concerns) completed GAD-7 on 2026-11-10. GAD-7 total score 2 of 21: minimal anxiety symptoms."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/gad-7|0.1.0"
* status = #completed
* subject = Reference(patient-mari)
* authored = "2026-11-10T09:15:00+02:00"
* author = Reference(patient-mari)
* source = Reference(patient-mari)
* partOf = Reference(gad-7-procedure-mari)
* item[0].linkId = "69725-0"
* item[=].text = "Feeling nervous, anxious or on edge"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "68509-9"
* item[=].text = "Not being able to stop or control worrying"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "69733-4"
* item[=].text = "Worrying too much about different things"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "69734-2"
* item[=].text = "Trouble relaxing"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "69735-9"
* item[=].text = "Being so restless that it is hard to sit still"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "69689-8"
* item[=].text = "Becoming easily annoyed or irritable"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "69736-7"
* item[=].text = "Feeling afraid as if something awful might happen"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "gad-7-total"
* item[=].text = "GAD-7 total score (0–21)"
* item[=].answer.valueInteger = 2

Instance: gad-7-procedure-mari
InstanceOf: Procedure
Usage: #example
Title: "GAD-7 assessment of Mari Maasikas"
Description: "The GAD-7 assessment of Mari Maasikas on 2026-11-10. The answers are in GAD-7 answered by Mari Maasikas."
* status = #completed
* code.coding[0] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#445598007 "Assessment using Generalized Anxiety Disorder 7 item score"
* code.coding[+] = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* subject = Reference(patient-mari)
* occurrenceDateTime = "2026-11-10T09:15:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "GAD-7 total score 2 of 21: minimal anxiety symptoms"

Instance: gad-7-response-juhan
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "GAD-7 answered by Juhan Juurikas"
Description: "Juhan Juurikas (low mood and poor sleep for six weeks) completed GAD-7 on 2026-11-12. GAD-7 total score 11 of 21: moderate anxiety symptoms."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/gad-7|0.1.0"
* status = #completed
* subject = Reference(patient-juhan)
* authored = "2026-11-12T14:40:00+02:00"
* author = Reference(patient-juhan)
* source = Reference(patient-juhan)
* partOf = Reference(gad-7-procedure-juhan)
* item[0].linkId = "69725-0"
* item[=].text = "Feeling nervous, anxious or on edge"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "68509-9"
* item[=].text = "Not being able to stop or control worrying"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "69733-4"
* item[=].text = "Worrying too much about different things"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "69734-2"
* item[=].text = "Trouble relaxing"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "69735-9"
* item[=].text = "Being so restless that it is hard to sit still"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "69689-8"
* item[=].text = "Becoming easily annoyed or irritable"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "69736-7"
* item[=].text = "Feeling afraid as if something awful might happen"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "gad-7-total"
* item[=].text = "GAD-7 total score (0–21)"
* item[=].answer.valueInteger = 11

Instance: gad-7-procedure-juhan
InstanceOf: Procedure
Usage: #example
Title: "GAD-7 assessment of Juhan Juurikas"
Description: "The GAD-7 assessment of Juhan Juurikas on 2026-11-12. The answers are in GAD-7 answered by Juhan Juurikas."
* status = #completed
* code.coding[0] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#445598007 "Assessment using Generalized Anxiety Disorder 7 item score"
* code.coding[+] = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* subject = Reference(patient-juhan)
* occurrenceDateTime = "2026-11-12T14:40:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "GAD-7 total score 11 of 21: moderate anxiety symptoms"

Instance: gad-7-response-kati
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "GAD-7 answered by Kati Karu"
Description: "Kati Karu (cannot cope at work or at home) completed GAD-7 on 2026-11-14. GAD-7 total score 17 of 21: severe anxiety symptoms."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/gad-7|0.1.0"
* status = #completed
* subject = Reference(patient-kati)
* authored = "2026-11-14T11:05:00+02:00"
* author = Reference(patient-kati)
* source = Reference(patient-kati)
* partOf = Reference(gad-7-procedure-kati)
* item[0].linkId = "69725-0"
* item[=].text = "Feeling nervous, anxious or on edge"
* item[=].answer.valueCoding = $LNC#LA6571-9 "Nearly every day"
* item[+].linkId = "68509-9"
* item[=].text = "Not being able to stop or control worrying"
* item[=].answer.valueCoding = $LNC#LA6571-9 "Nearly every day"
* item[+].linkId = "69733-4"
* item[=].text = "Worrying too much about different things"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "69734-2"
* item[=].text = "Trouble relaxing"
* item[=].answer.valueCoding = $LNC#LA6571-9 "Nearly every day"
* item[+].linkId = "69735-9"
* item[=].text = "Being so restless that it is hard to sit still"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "69689-8"
* item[=].text = "Becoming easily annoyed or irritable"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "69736-7"
* item[=].text = "Feeling afraid as if something awful might happen"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "gad-7-total"
* item[=].text = "GAD-7 total score (0–21)"
* item[=].answer.valueInteger = 17

Instance: gad-7-procedure-kati
InstanceOf: Procedure
Usage: #example
Title: "GAD-7 assessment of Kati Karu"
Description: "The GAD-7 assessment of Kati Karu on 2026-11-14. The answers are in GAD-7 answered by Kati Karu."
* status = #completed
* code.coding[0] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#445598007 "Assessment using Generalized Anxiety Disorder 7 item score"
* code.coding[+] = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* subject = Reference(patient-kati)
* occurrenceDateTime = "2026-11-14T11:05:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "GAD-7 total score 17 of 21: severe anxiety symptoms"
