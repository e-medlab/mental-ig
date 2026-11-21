// PHQ-9: one completed questionnaire and its assessment procedure per patient.

Instance: phq-9-response-mari
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "PHQ-9 answered by Mari Maasikas"
Description: "Mari Maasikas (routine check-up, no concerns) completed PHQ-9 on 2026-11-10. PHQ-9 total score 3 of 27: minimal depressive symptoms."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/phq-9|0.1.0"
* status = #completed
* subject = Reference(patient-mari)
* authored = "2026-11-10T09:15:00+02:00"
* author = Reference(patient-mari)
* source = Reference(patient-mari)
* partOf = Reference(phq-9-procedure-mari)
* item[0].linkId = "44250-9"
* item[=].text = "Little interest or pleasure in doing things"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "44255-8"
* item[=].text = "Feeling down, depressed, or hopeless"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "44259-0"
* item[=].text = "Trouble falling or staying asleep, or sleeping too much"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "44254-1"
* item[=].text = "Feeling tired or having little energy"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "44251-7"
* item[=].text = "Poor appetite or overeating"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "44258-2"
* item[=].text = "Feeling bad about yourself — or that you are a failure or have let yourself or your family down"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "44252-5"
* item[=].text = "Trouble concentrating on things, such as reading the newspaper or watching television"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "44253-3"
* item[=].text = "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "44260-8"
* item[=].text = "Thoughts that you would be better off dead, or of hurting yourself in some way"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "69722-7"
* item[=].text = "If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
* item[=].answer.valueCoding = $LNC#LA6572-7 "Not difficult at all"
* item[+].linkId = "phq-9-total"
* item[=].text = "PHQ-9 total score (0–27)"
* item[=].answer.valueInteger = 3

Instance: phq-9-procedure-mari
InstanceOf: Procedure
Usage: #example
Title: "PHQ-9 assessment of Mari Maasikas"
Description: "The PHQ-9 assessment of Mari Maasikas on 2026-11-10. The answers are in PHQ-9 answered by Mari Maasikas."
* status = #completed
* code.coding[0] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#715252007 "Depression screening using PHQ-9 (Patient Health Questionnaire 9) score"
* code.coding[+] = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* subject = Reference(patient-mari)
* performedDateTime = "2026-11-10T09:15:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "PHQ-9 total score 3 of 27: minimal depressive symptoms"

Instance: phq-9-response-juhan
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "PHQ-9 answered by Juhan Juurikas"
Description: "Juhan Juurikas (low mood and poor sleep for six weeks) completed PHQ-9 on 2026-11-12. PHQ-9 total score 12 of 27: moderate depressive symptoms."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/phq-9|0.1.0"
* status = #completed
* subject = Reference(patient-juhan)
* authored = "2026-11-12T14:40:00+02:00"
* author = Reference(patient-juhan)
* source = Reference(patient-juhan)
* partOf = Reference(phq-9-procedure-juhan)
* item[0].linkId = "44250-9"
* item[=].text = "Little interest or pleasure in doing things"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44255-8"
* item[=].text = "Feeling down, depressed, or hopeless"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44259-0"
* item[=].text = "Trouble falling or staying asleep, or sleeping too much"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "44254-1"
* item[=].text = "Feeling tired or having little energy"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44251-7"
* item[=].text = "Poor appetite or overeating"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "44258-2"
* item[=].text = "Feeling bad about yourself — or that you are a failure or have let yourself or your family down"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "44252-5"
* item[=].text = "Trouble concentrating on things, such as reading the newspaper or watching television"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44253-3"
* item[=].text = "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual"
* item[=].answer.valueCoding = $LNC#LA6569-3 "Several days"
* item[+].linkId = "44260-8"
* item[=].text = "Thoughts that you would be better off dead, or of hurting yourself in some way"
* item[=].answer.valueCoding = $LNC#LA6568-5 "Not at all"
* item[+].linkId = "69722-7"
* item[=].text = "If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
* item[=].answer.valueCoding = $LNC#LA6573-5 "Somewhat difficult"
* item[+].linkId = "phq-9-total"
* item[=].text = "PHQ-9 total score (0–27)"
* item[=].answer.valueInteger = 12

Instance: phq-9-procedure-juhan
InstanceOf: Procedure
Usage: #example
Title: "PHQ-9 assessment of Juhan Juurikas"
Description: "The PHQ-9 assessment of Juhan Juurikas on 2026-11-12. The answers are in PHQ-9 answered by Juhan Juurikas."
* status = #completed
* code.coding[0] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#715252007 "Depression screening using PHQ-9 (Patient Health Questionnaire 9) score"
* code.coding[+] = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* subject = Reference(patient-juhan)
* performedDateTime = "2026-11-12T14:40:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "PHQ-9 total score 12 of 27: moderate depressive symptoms"

Instance: phq-9-response-kati
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "PHQ-9 answered by Kati Karu"
Description: "Kati Karu (cannot cope at work or at home) completed PHQ-9 on 2026-11-14. PHQ-9 total score 22 of 27: severe depressive symptoms. Question 9 (thoughts of self-harm) answered 'More than half the days': the physician assessed suicide risk during the same visit."
* questionnaire = "https://taltech.ee/fhir/mental/Questionnaire/phq-9|0.1.0"
* status = #completed
* subject = Reference(patient-kati)
* authored = "2026-11-14T11:05:00+02:00"
* author = Reference(patient-kati)
* source = Reference(patient-kati)
* partOf = Reference(phq-9-procedure-kati)
* item[0].linkId = "44250-9"
* item[=].text = "Little interest or pleasure in doing things"
* item[=].answer.valueCoding = $LNC#LA6571-9 "Nearly every day"
* item[+].linkId = "44255-8"
* item[=].text = "Feeling down, depressed, or hopeless"
* item[=].answer.valueCoding = $LNC#LA6571-9 "Nearly every day"
* item[+].linkId = "44259-0"
* item[=].text = "Trouble falling or staying asleep, or sleeping too much"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44254-1"
* item[=].text = "Feeling tired or having little energy"
* item[=].answer.valueCoding = $LNC#LA6571-9 "Nearly every day"
* item[+].linkId = "44251-7"
* item[=].text = "Poor appetite or overeating"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44258-2"
* item[=].text = "Feeling bad about yourself — or that you are a failure or have let yourself or your family down"
* item[=].answer.valueCoding = $LNC#LA6571-9 "Nearly every day"
* item[+].linkId = "44252-5"
* item[=].text = "Trouble concentrating on things, such as reading the newspaper or watching television"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44253-3"
* item[=].text = "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "44260-8"
* item[=].text = "Thoughts that you would be better off dead, or of hurting yourself in some way"
* item[=].answer.valueCoding = $LNC#LA6570-1 "More than half the days"
* item[+].linkId = "69722-7"
* item[=].text = "If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
* item[=].answer.valueCoding = $LNC#LA6575-0 "Very difficult"
* item[+].linkId = "phq-9-total"
* item[=].text = "PHQ-9 total score (0–27)"
* item[=].answer.valueInteger = 22

Instance: phq-9-procedure-kati
InstanceOf: Procedure
Usage: #example
Title: "PHQ-9 assessment of Kati Karu"
Description: "The PHQ-9 assessment of Kati Karu on 2026-11-14. The answers are in PHQ-9 answered by Kati Karu."
* status = #completed
* code.coding[0] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#715252007 "Depression screening using PHQ-9 (Patient Health Questionnaire 9) score"
* code.coding[+] = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* subject = Reference(patient-kati)
* performedDateTime = "2026-11-14T11:05:00+02:00"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = "PHQ-9 total score 22 of 27: severe depressive symptoms. Question 9 (thoughts of self-harm) answered 'More than half the days': the physician assessed suicide risk during the same visit"
