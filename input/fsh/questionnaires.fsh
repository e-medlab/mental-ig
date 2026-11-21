Instance: phq-9
InstanceOf: Questionnaire
Usage: #definition
Title: "PHQ-9 — Patient Health Questionnaire-9"
Description: "The nine-item depression screening questionnaire, coded with LOINC panel 44249-1."
* insert QuestionnaireHeader(phq-9, [[Patient Health Questionnaire-9 (PHQ-9)]])
* title.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[0].extension[0].url = "lang"
* title.extension[0].extension[0].valueCode = #et
* title.extension[0].extension[1].url = "content"
* title.extension[0].extension[1].valueString = "Patsiendi terviseküsimustik-9 (PHQ-9)"
* title.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[1].extension[0].url = "lang"
* title.extension[1].extension[0].valueCode = #ru
* title.extension[1].extension[1].url = "content"
* title.extension[1].extension[1].valueString = "Опросник по состоянию здоровья-9 (PHQ-9)"
* title.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[2].extension[0].url = "lang"
* title.extension[2].extension[0].valueCode = #uk
* title.extension[2].extension[1].url = "content"
* title.extension[2].extension[1].valueString = "Опитувальник про стан здоров'я (PHQ-9)"
* name = "PHQ9"
* description = "Nine questions about how often, over the last two weeks, a person has been bothered by symptoms of depression. Each answer scores 0 to 3, so the total score is 0 to 27.\n\n| Total score | Interpretation |\n|---|---|\n| 0–4 | minimal |\n| 5–9 | mild |\n| 10–14 | moderate |\n| 15–19 | moderately severe |\n| 20–27 | severe |\n\nAny answer other than *Not at all* to question 9 (thoughts of self-harm) needs a clinician's attention the same day, whatever the total score."
* purpose = "Screening for depression and monitoring the severity of depressive symptoms over time."
* copyright = "PHQ-9 © Pfizer Inc. No permission is required to reproduce, translate, display or distribute it. LOINC codes © Regenstrief Institute, Inc., used under the LOINC licence (https://loinc.org/license/). SNOMED CT codes © SNOMED International."
* code = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* item[0].linkId = "phq-9-intro"
* item[=].type = #display
* item[=].text = "Over the last 2 weeks, how often have you been bothered by any of the following problems?"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Kui tihti on teid viimase 2 nädala jooksul vaevanud mõned alltoodud probleemidest?"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Как часто за последние 2 недели Вас беспокоили следующие проблемы?"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Як часто за останні 2 тижні Вас турбували будь-які з наступних проблем?"
* item[+].linkId = "44250-9"
* item[=].code = $LNC#44250-9
* item[=].text = "Little interest or pleasure in doing things"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Pole huvi või rõõmutunnet ühestki tegevusest"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вам не хотелось ничего делать"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Вам було не дуже цікаво або подобалось чимось займатись"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44255-8"
* item[=].code = $LNC#44255-8
* item[=].text = "Feeling down, depressed, or hopeless"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Tunned end rusutuna, masendatuna või lootusetuna"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "У Вас было плохое настроение, Вы были подавлены или испытывали чувство безысходности"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви почувалися сумними, пригніченими або безнадійними"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44259-0"
* item[=].code = $LNC#44259-0
* item[=].text = "Trouble falling or staying asleep, or sleeping too much"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Hädas uinumisega või magamise jätkamisega või üleliigse magamisega"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вам было трудно заснуть, у Вас был прерывистый сон, или Вы слишком много спали"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Вам було важко засинати або не прокидатись, або Ви спали надто довго"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44254-1"
* item[=].code = $LNC#44254-1
* item[=].text = "Feeling tired or having little energy"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Tunned väsimust või energiapuudust"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы были утомлены, или у Вас было мало сил"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви відчували втому або мало сил"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44251-7"
* item[=].code = $LNC#44251-7
* item[=].text = "Poor appetite or overeating"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Halb söögiisu või ülesöömine"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "У Вас был плохой аппетит, или Вы переедали"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "У Вас був поганий апетит, або Ви переїдали"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44258-2"
* item[=].code = $LNC#44258-2
* item[=].text = "Feeling bad about yourself — or that you are a failure or have let yourself or your family down"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Halb enesetunne - tunned et oled läbi kukkunud või et oled ennast või oma pere alt vedanud"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы плохо о себе думали – Вы считали себя неудачником (неудачницей), были в себе разочарованы, или считали, что разочаровали свою семью"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви погано про себе думали — або Ви почувалися невдахою, або ж розчаровувались у собі, або думали, що підвели родину"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44252-5"
* item[=].code = $LNC#44252-5
* item[=].text = "Trouble concentrating on things, such as reading the newspaper or watching television"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Keskendumisprobleemid, nt ajalehe lugemisel või teleri vaatamisel"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вам было трудно сосредоточиться (например, на чтении газеты или на просмотре телепередач)"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Вам було важко зосередитись, наприклад, на читанні газети або перегляді телепередач"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44253-3"
* item[=].code = $LNC#44253-3
* item[=].text = "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so fidgety or restless that you have been moving around a lot more than usual"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Liigud või räägid nii aeglaselt, et teised inimesed võiksid seda märgata? Või vastupidi - oled nii rahutu või püsimatu, et liigud palju rohkem kui tavaliselt."
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы двигались или говорили настолько медленно, что окружающие это замечали? Или, наоборот, Вы были настолько суетливы или взбудоражены, что двигались гораздо больше обычного"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви рухались або розмовляли настільки повільно, що інші люди могли б це помітити? Або ж навпаки, Ви були настільки метушливі або неспокійні, що пересувались набагато більше, ніж зазвичай"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "44260-8"
* item[=].code = $LNC#44260-8
* item[=].text = "Thoughts that you would be better off dead, or of hurting yourself in some way"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Mõtted, et parem oleks surnud olla või vigastada ennast mingil moel"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вас посещали мысли о том, что Вам лучше было бы умереть, или о том, чтобы причинить себе какой-нибудь вред"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "У Вас були думки, що Вам краще б померти, або Ви думали про те, щоб заподіяти собі яку-небудь шкоду"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "69722-7"
* item[=].code = $LNC#69722-7
* item[=].text = "If you checked off any problems, how difficult have these problems made it for you to do your work, take care of things at home, or get along with other people?"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Kui olete märkinud mingeid probleeme, siis mil määral on need probleemid teie tööd, kodus asjadega tegelemist, teiste inimestega läbi saamist raskemaks teinud?"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Если Вы положительно ответили на какие-нибудь пункты, то оцените, насколько трудно Вам было работать, заниматься домашними делами или общаться с людьми из-за этих проблем?"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Якщо Ви відповіли позитивно на деякі пункти, оцініть, наскільки важко Вам було працювати, займатись домашніми справами або взаємодіяти з іншими людьми через ці проблеми?"
* item[=].type = #choice
* item[=].required = false
* item[=] insert RadioButtons
* item[=] insert DifficultyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse pole raske"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Совсем не трудно"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не важко"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "On natuke raske"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Немного трудно"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Дещо важко"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Väga raske"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Очень трудно"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Дуже важко"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Äärmiselt raske"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Чрезвычайно трудно"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Надзвичайно важко"
* item[+].linkId = "phq-9-total"
* item[=].code[0] = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* item[=].code[+] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#720433000 "Patient Health Questionnaire Nine Item score"
* item[=].text = "PHQ-9 total score (0–27)"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Koguskoor"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Общий балл"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = "%resource.item.where(linkId in ('44250-9' | '44255-8' | '44259-0' | '44254-1' | '44251-7' | '44258-2' | '44252-5' | '44253-3' | '44260-8')).answer.value.ordinal().sum()"

Instance: gad-7
InstanceOf: Questionnaire
Usage: #definition
Title: "GAD-7 — Generalized Anxiety Disorder 7-item scale"
Description: "The seven-item anxiety screening questionnaire, coded with LOINC panel 69737-5 and SNOMED CT 704501007."
* insert QuestionnaireHeader(gad-7, [[Generalized Anxiety Disorder 7-item scale (GAD-7)]])
* title.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[0].extension[0].url = "lang"
* title.extension[0].extension[0].valueCode = #et
* title.extension[0].extension[1].url = "content"
* title.extension[0].extension[1].valueString = "Generaliseerunud ärevushäire skaala (GAD-7)"
* title.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[1].extension[0].url = "lang"
* title.extension[1].extension[0].valueCode = #ru
* title.extension[1].extension[1].url = "content"
* title.extension[1].extension[1].valueString = "GAD-7"
* title.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[2].extension[0].url = "lang"
* title.extension[2].extension[0].valueCode = #uk
* title.extension[2].extension[1].url = "content"
* title.extension[2].extension[1].valueString = "GAD-7"
* name = "GAD7"
* description = "Seven questions about how often, over the last two weeks, a person has been bothered by symptoms of anxiety. Each answer scores 0 to 3, so the total score is 0 to 21.\n\n| Total score | Interpretation |\n|---|---|\n| 0–4 | minimal |\n| 5–9 | mild |\n| 10–14 | moderate |\n| 15–21 | severe |\n\nA total of 10 or more is the usual cut-off for further assessment of an anxiety disorder."
* purpose = "Screening for generalised anxiety disorder and monitoring the severity of anxiety symptoms over time."
* copyright = "GAD-7 © Pfizer Inc. No permission is required to reproduce, translate, display or distribute it. LOINC codes © Regenstrief Institute, Inc., used under the LOINC licence (https://loinc.org/license/). SNOMED CT codes © SNOMED International."
* code[0] = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* code[+] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#704501007 "Generalized Anxiety Disorder 7 item scale"
* item[0].linkId = "gad-7-intro"
* item[=].type = #display
* item[=].text = "Over the last 2 weeks, how often have you been bothered by the following problems?"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Kui tihti on teid viimase 2 nädala jooksul vaevanud mõned alltoodud probleemidest?"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Как часто за последние 2 недели Вас беспокоили следующие проблемы?"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Як часто за останні 2 тижні Вас турбували будь-які з наступних проблем?"
* item[+].linkId = "69725-0"
* item[=].code = $LNC#69725-0
* item[=].text = "Feeling nervous, anxious or on edge"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Närvilisus, ärevus või pinges olek"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы нервничали, тревожились или испытывали сильный стресс"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви нервували, відчували тривогу або були дуже напружені"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "68509-9"
* item[=].code = $LNC#68509-9
* item[=].text = "Not being able to stop or control worrying"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Suutmatus muretsemist peatada või kontrollida"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы были неспособны успокоиться или контролировать свое волнение"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви не могли зупинити або контролювати своє хвилювання"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "69733-4"
* item[=].code = $LNC#69733-4
* item[=].text = "Worrying too much about different things"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Liigne muretsemine erinevate asjade pärast"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы слишком сильно волновались по различным поводам"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви занадто хвилювались через різні речі"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "69734-2"
* item[=].code = $LNC#69734-2
* item[=].text = "Trouble relaxing"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Raskused lõõgastumisel"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вам было трудно расслабиться"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Вам було важко розслабитись"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "69735-9"
* item[=].code = $LNC#69735-9
* item[=].text = "Being so restless that it is hard to sit still"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Nii suur rahutus, et on raske paigal istuda"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы были настолько суетливы, что Вам было тяжело усидеть на месте"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви були настільки неспокійні, що Вам було важко всидіти на одному місці"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "69689-8"
* item[=].code = $LNC#69689-8
* item[=].text = "Becoming easily annoyed or irritable"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Kerge ärritumine või tujukus"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы легко злились или раздражались"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Вам було легко дошкулити або роздратувати"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "69736-7"
* item[=].code = $LNC#69736-7
* item[=].text = "Feeling afraid as if something awful might happen"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Hirmutunne, nagu juhtuks midagi kohutavat"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Вы испытывали страх, словно должно произойти нечто ужасное"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Ви відчували страх, неначе щось жахливе може статися"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Üldse mitte"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Ни разу"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Зовсім не турбували"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Mõnel päeval"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Несколько дней"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Декілька днів"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem, kui pooltel päevadel"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины дней"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більш половини всіх днів"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Peaaegu iga päev"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Почти каждый день"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Майже щоденно"
* item[+].linkId = "gad-7-total"
* item[=].code[0] = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* item[=].code[+] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#445455005 "Generalized Anxiety Disorder 7 item score"
* item[=].text = "GAD-7 total score (0–21)"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Koguskoor"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Общий балл"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = "%resource.item.where(linkId in ('69725-0' | '68509-9' | '69733-4' | '69734-2' | '69735-9' | '69689-8' | '69736-7')).answer.value.ordinal().sum()"

Instance: who-5
InstanceOf: Questionnaire
Usage: #definition
Title: "WHO-5 — World Health Organization-Five Well-Being Index"
Description: "The five-item well-being questionnaire, coded with SNOMED CT 1144752009 and, as LOINC has no WHO-5 codes, with this guide's own WHO-5 code system."
* insert QuestionnaireHeader(who-5, WHO-5 Well-Being Index)
* title.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[0].extension[0].url = "lang"
* title.extension[0].extension[0].valueCode = #et
* title.extension[0].extension[1].url = "content"
* title.extension[0].extension[1].valueString = "WHO-5 heaoluindeks"
* title.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[1].extension[0].url = "lang"
* title.extension[1].extension[0].valueCode = #ru
* title.extension[1].extension[1].url = "content"
* title.extension[1].extension[1].valueString = "Индекс благополучия ВОЗ-5 (WHO-5)"
* title.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* title.extension[2].extension[0].url = "lang"
* title.extension[2].extension[0].valueCode = #uk
* title.extension[2].extension[1].url = "content"
* title.extension[2].extension[1].valueString = "Індекс благополуччя ВООЗ-5 (WHO-5)"
* name = "WHO5"
* description = "Five positively worded statements about how a person has been feeling over the last two weeks. Each answer scores 0 to 5. The raw score (0–25) is multiplied by 4 to give the well-being index (0–100), where higher means better well-being.\n\n| Index (0–100) | Interpretation |\n|---|---|\n| 0–49 | poor well-being |\n| 50–100 | adequate well-being |\n\nAn index below 50 (a raw score below 13) suggests poor well-being and is an indication to screen for depression, for example with PHQ-9."
* purpose = "Measuring current mental well-being and screening for depression."
* copyright = "WHO-5 © World Health Organization 2024 (WHO/UCN/MSD/MHE/2024.1), licence CC BY-NC-SA 3.0 IGO: non-commercial use; commercial use needs WHO's permission. SNOMED CT codes © SNOMED International."
* code[0] = $who5#who-5 "WHO-5 Well-Being Index questionnaire"
* code[+] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#1144752009 "World Health Organization-Five Well-Being Index questionnaire"
* item[0].linkId = "who-5-intro"
* item[=].type = #display
* item[=].text = "Please indicate for each of the five statements which is closest to how you have been feeling over the last two weeks. Notice that higher numbers mean better well-being."
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Palun märkige iga viie väite juures, mis kirjeldab kõige paremini, kuidas olete end viimase kahe nädala jooksul tundnud. Pange tähele, et suurem number tähendab paremat heaolu."
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Пожалуйста, для каждого из пяти утверждений отметьте то, что ближе всего к тому, как вы себя чувствовали последние две недели. Обратите внимание: чем больше число, тем лучше самочувствие."
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Будь ласка, для кожного з п'яти тверджень позначте те, що найкраще описує, як ви почувалися останні два тижні. Зверніть увагу: що більше число, то краще самопочуття."
* item[+].linkId = "who5-1"
* item[=].code = $who5#who5-1 "I have felt cheerful and in good spirits"
* item[=].text = "I have felt cheerful and in good spirits"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Olen olnud rõõmsameelne ja heas tujus"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Я чувствовал(а) себя бодрым(ой) и в хорошем настроении"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Я почувався(лася) бадьорим(ою) і в доброму настрої"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert Who5Answers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Kogu aeg"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Всё время"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Весь час"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Enamiku ajast"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Большую часть времени"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Більшу частину часу"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem kui poole ajast"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины времени"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більше половини часу"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Vähem kui poole ajast"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Менее половины времени"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Менше половини часу"
* item[=].answerOption[4].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].valueString = "Mõnikord"
* item[=].answerOption[4].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].valueString = "Иногда"
* item[=].answerOption[4].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].valueString = "Іноді"
* item[=].answerOption[5].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].valueString = "Mitte kunagi"
* item[=].answerOption[5].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].valueString = "Никогда"
* item[=].answerOption[5].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].valueString = "Ніколи"
* item[+].linkId = "who5-2"
* item[=].code = $who5#who5-2 "I have felt calm and relaxed"
* item[=].text = "I have felt calm and relaxed"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Olen tundnud end rahuliku ja pingevabana"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Я чувствовал(а) себя спокойным(ой) и расслабленным(ой)"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Я почувався(лася) спокійним(ою) і розслабленим(ою)"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert Who5Answers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Kogu aeg"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Всё время"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Весь час"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Enamiku ajast"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Большую часть времени"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Більшу частину часу"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem kui poole ajast"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины времени"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більше половини часу"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Vähem kui poole ajast"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Менее половины времени"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Менше половини часу"
* item[=].answerOption[4].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].valueString = "Mõnikord"
* item[=].answerOption[4].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].valueString = "Иногда"
* item[=].answerOption[4].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].valueString = "Іноді"
* item[=].answerOption[5].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].valueString = "Mitte kunagi"
* item[=].answerOption[5].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].valueString = "Никогда"
* item[=].answerOption[5].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].valueString = "Ніколи"
* item[+].linkId = "who5-3"
* item[=].code = $who5#who5-3 "I have felt active and vigorous"
* item[=].text = "I have felt active and vigorous"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Olen tundnud end aktiivse ja energilisena"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Я чувствовал(а) себя активным(ой) и энергичным(ой)"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Я почувався(лася) активним(ою) і енергійним(ою)"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert Who5Answers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Kogu aeg"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Всё время"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Весь час"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Enamiku ajast"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Большую часть времени"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Більшу частину часу"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem kui poole ajast"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины времени"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більше половини часу"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Vähem kui poole ajast"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Менее половины времени"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Менше половини часу"
* item[=].answerOption[4].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].valueString = "Mõnikord"
* item[=].answerOption[4].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].valueString = "Иногда"
* item[=].answerOption[4].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].valueString = "Іноді"
* item[=].answerOption[5].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].valueString = "Mitte kunagi"
* item[=].answerOption[5].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].valueString = "Никогда"
* item[=].answerOption[5].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].valueString = "Ніколи"
* item[+].linkId = "who5-4"
* item[=].code = $who5#who5-4 "I woke up feeling fresh and rested"
* item[=].text = "I woke up feeling fresh and rested"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Olen ärganud värske ja väljapuhanuna"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Я просыпался(лась) свежим(ей) и отдохнувшим(ей)"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Я прокидався(лася) свіжим(ою) і відпочилим(ою)"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert Who5Answers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Kogu aeg"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Всё время"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Весь час"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Enamiku ajast"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Большую часть времени"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Більшу частину часу"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem kui poole ajast"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины времени"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більше половини часу"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Vähem kui poole ajast"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Менее половины времени"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Менше половини часу"
* item[=].answerOption[4].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].valueString = "Mõnikord"
* item[=].answerOption[4].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].valueString = "Иногда"
* item[=].answerOption[4].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].valueString = "Іноді"
* item[=].answerOption[5].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].valueString = "Mitte kunagi"
* item[=].answerOption[5].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].valueString = "Никогда"
* item[=].answerOption[5].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].valueString = "Ніколи"
* item[+].linkId = "who5-5"
* item[=].code = $who5#who5-5 "My daily life has been filled with things that interest me"
* item[=].text = "My daily life has been filled with things that interest me"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "Minu igapäevaelu on olnud täis asju, mis mind huvitavad"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Моя повседневная жизнь была наполнена тем, что мне интересно"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Моє повсякденне життя було наповнене тим, що мене цікавить"
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert Who5Answers
* item[=].answerOption[0].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[0].extension[1].valueString = "Kogu aeg"
* item[=].answerOption[0].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[1].extension[1].valueString = "Всё время"
* item[=].answerOption[0].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[0].valueCoding.display.extension[2].extension[1].valueString = "Весь час"
* item[=].answerOption[1].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[0].extension[1].valueString = "Enamiku ajast"
* item[=].answerOption[1].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[1].extension[1].valueString = "Большую часть времени"
* item[=].answerOption[1].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[1].valueCoding.display.extension[2].extension[1].valueString = "Більшу частину часу"
* item[=].answerOption[2].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[0].extension[1].valueString = "Rohkem kui poole ajast"
* item[=].answerOption[2].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[1].extension[1].valueString = "Более половины времени"
* item[=].answerOption[2].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[2].valueCoding.display.extension[2].extension[1].valueString = "Більше половини часу"
* item[=].answerOption[3].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[0].extension[1].valueString = "Vähem kui poole ajast"
* item[=].answerOption[3].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[1].extension[1].valueString = "Менее половины времени"
* item[=].answerOption[3].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[3].valueCoding.display.extension[2].extension[1].valueString = "Менше половини часу"
* item[=].answerOption[4].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[0].extension[1].valueString = "Mõnikord"
* item[=].answerOption[4].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[1].extension[1].valueString = "Иногда"
* item[=].answerOption[4].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[4].valueCoding.display.extension[2].extension[1].valueString = "Іноді"
* item[=].answerOption[5].valueCoding.display.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[0].valueCode = #et
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[0].extension[1].valueString = "Mitte kunagi"
* item[=].answerOption[5].valueCoding.display.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[0].valueCode = #ru
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[1].extension[1].valueString = "Никогда"
* item[=].answerOption[5].valueCoding.display.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].url = "lang"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[0].valueCode = #uk
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].url = "content"
* item[=].answerOption[5].valueCoding.display.extension[2].extension[1].valueString = "Ніколи"
* item[+].linkId = "who-5-raw"
* item[=].code = $who5#who-5-raw "WHO-5 raw score"
* item[=].text = "WHO-5 raw score (0–25)"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "WHO-5 toorskoor"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Сырой балл WHO-5"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Сирий бал WHO-5"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = "%resource.item.where(linkId in ('who5-1' | 'who5-2' | 'who5-3' | 'who5-4' | 'who5-5')).answer.value.ordinal().sum()"
* item[+].linkId = "who-5-index"
* item[=].code[0] = $who5#who-5-index "WHO-5 well-being index"
* item[=].code[+] = $SCT|http://snomed.info/sct/900000000000207008/version/20261101#1144665009 "World Health Organization-Five Well-Being Index questionnaire score"
* item[=].text = "WHO-5 well-being index (0–100)"
* item[=].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[0].extension[0].url = "lang"
* item[=].text.extension[0].extension[0].valueCode = #et
* item[=].text.extension[0].extension[1].url = "content"
* item[=].text.extension[0].extension[1].valueString = "WHO-5 heaoluindeks"
* item[=].text.extension[1].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[1].extension[0].url = "lang"
* item[=].text.extension[1].extension[0].valueCode = #ru
* item[=].text.extension[1].extension[1].url = "content"
* item[=].text.extension[1].extension[1].valueString = "Индекс WHO-5"
* item[=].text.extension[2].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item[=].text.extension[2].extension[0].url = "lang"
* item[=].text.extension[2].extension[0].valueCode = #uk
* item[=].text.extension[2].extension[1].url = "content"
* item[=].text.extension[2].extension[1].valueString = "Індекс WHO-5"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = "(%resource.item.where(linkId in ('who5-1' | 'who5-2' | 'who5-3' | 'who5-4' | 'who5-5')).answer.value.ordinal().sum()) * 4"

CodeSystem: Who5
Id: who-5
Title: "WHO-5 Well-Being Index concepts"
Description: "The WHO-5 questionnaire, its five statements and its two scores. LOINC (2.83) has no codes for WHO-5, so this guide defines them, in the role LOINC plays for PHQ-9 and GAD-7. Where SNOMED CT has a code (the questionnaire and the 0–100 index), the guide uses both."
* ^url = "https://taltech.ee/fhir/mental/CodeSystem/who-5"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^hierarchyMeaning = #part-of
* ^copyright = "Statement wording © World Health Organization 2024, licence CC BY-NC-SA 3.0 IGO."
* #who-5 "WHO-5 Well-Being Index questionnaire" "The whole questionnaire: five statements about the last two weeks, each scored 0–5."
* #who-5 #who5-1 "I have felt cheerful and in good spirits"
* #who-5 #who5-2 "I have felt calm and relaxed"
* #who-5 #who5-3 "I have felt active and vigorous"
* #who-5 #who5-4 "I woke up feeling fresh and rested"
* #who-5 #who5-5 "My daily life has been filled with things that interest me"
* #who-5 #who-5-raw "WHO-5 raw score" "Sum of the five answers, 0–25."
* #who-5 #who-5-index "WHO-5 well-being index" "Raw score multiplied by 4, 0–100; below 50 suggests poor well-being. Same meaning as SNOMED CT 1144665009."

ValueSet: Who5VS
Id: who-5
Title: "WHO-5 Well-Being Index concepts"
Description: "Every concept of the WHO-5 code system: the questionnaire, its statements and its scores."
* ^url = "https://taltech.ee/fhir/mental/ValueSet/who-5"
* ^status = #draft
* ^experimental = true
* include codes from system $who5

CodeSystem: Who5Answer
Id: who-5-answer
Title: "WHO-5 response options"
Description: "The six response options of the WHO-5 Well-Being Index. The code is the number of points the answer scores. LOINC and SNOMED CT have no codes for these answers, so this guide defines them."
* ^url = "https://taltech.ee/fhir/mental/CodeSystem/who-5-answer"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^copyright = "Answer wording © World Health Organization 2024, licence CC BY-NC-SA 3.0 IGO."
* #5 "All of the time"
* #4 "Most of the time"
* #3 "More than half of the time"
* #2 "Less than half of the time"
* #1 "Some of the time"
* #0 "At no time"

ValueSet: Who5AnswerVS
Id: who-5-answer
Title: "WHO-5 response options"
Description: "All six WHO-5 response options."
* ^url = "https://taltech.ee/fhir/mental/ValueSet/who-5-answer"
* ^status = #draft
* ^experimental = true
* include codes from system $who5answer
