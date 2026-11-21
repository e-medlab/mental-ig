"""Write the FSH of the TalTech mental-ig: 3 Questionnaires, 3 patients, 9 QuestionnaireResponses, 9 Procedures.

Generated once so that every example's totals are computed, not typed. usage: python3 scripts/generate-fsh.py .
"""
import sys
from pathlib import Path

IG = Path(sys.argv[1])
FSH = IG / "input" / "fsh"
BASE = "https://taltech.ee/fhir/mental"
VER = "0.1.0"
DATE = "2026-11-21"
# SNOMED CT codings name the edition they were checked against (International, 2026-11-01): 1417808008 and
# the current WHO-5 preferred terms first appear in it, so a validator on an older edition must not judge them.
SCT = "$SCT|http://snomed.info/sct/900000000000207008/version/20261101#"

FREQ = [("LA6568-5", "Not at all", 0), ("LA6569-3", "Several days", 1),
        ("LA6570-1", "More than half the days", 2), ("LA6571-9", "Nearly every day", 3)]
DIFF = [("LA6572-7", "Not difficult at all"), ("LA6573-5", "Somewhat difficult"),
        ("LA6575-0", "Very difficult"), ("LA6574-3", "Extremely difficult")]
WHO = [("5", "All of the time"), ("4", "Most of the time"), ("3", "More than half of the time"),
       ("2", "Less than half of the time"), ("1", "Some of the time"), ("0", "At no time")]

PHQ = [("44250-9", "Little interest or pleasure in doing things"),
       ("44255-8", "Feeling down, depressed, or hopeless"),
       ("44259-0", "Trouble falling or staying asleep, or sleeping too much"),
       ("44254-1", "Feeling tired or having little energy"),
       ("44251-7", "Poor appetite or overeating"),
       ("44258-2", "Feeling bad about yourself — or that you are a failure or have let yourself or your family down"),
       ("44252-5", "Trouble concentrating on things, such as reading the newspaper or watching television"),
       ("44253-3", "Moving or speaking so slowly that other people could have noticed? Or the opposite — being so "
                   "fidgety or restless that you have been moving around a lot more than usual"),
       ("44260-8", "Thoughts that you would be better off dead, or of hurting yourself in some way")]
PHQ_DIFF = ("69722-7", "If you checked off any problems, how difficult have these problems made it for you to do your "
                       "work, take care of things at home, or get along with other people?")
GAD = [("69725-0", "Feeling nervous, anxious or on edge"),
       ("68509-9", "Not being able to stop or control worrying"),
       ("69733-4", "Worrying too much about different things"),
       ("69734-2", "Trouble relaxing"),
       ("69735-9", "Being so restless that it is hard to sit still"),
       ("69689-8", "Becoming easily annoyed or irritable"),
       ("69736-7", "Feeling afraid as if something awful might happen")]
WHO_ITEMS = [("who5-1", "I have felt cheerful and in good spirits"),
             ("who5-2", "I have felt calm and relaxed"),
             ("who5-3", "I have felt active and vigorous"),
             ("who5-4", "I woke up feeling fresh and rested"),
             ("who5-5", "My daily life has been filled with things that interest me")]

PHQ_BANDS = [(0, 4, "minimal"), (5, 9, "mild"), (10, 14, "moderate"), (15, 19, "moderately severe"), (20, 27, "severe")]
GAD_BANDS = [(0, 4, "minimal"), (5, 9, "mild"), (10, 14, "moderate"), (15, 21, "severe")]
WHO_BANDS = [(0, 49, "poor well-being"), (50, 100, "adequate well-being")]


def q(s):
    return '"' + s.replace("\\", "\\\\").replace('"', '\\"') + '"'


def band(score, bands):
    return next(b[2] for b in bands if b[0] <= score <= b[1])


def sum_expr(link_ids):
    ids = " | ".join(f"'{i}'" for i in link_ids)
    return f"%resource.item.where(linkId in ({ids})).answer.value.ordinal().sum()"


# ---------------------------------------------------------------- aliases + rule sets
(FSH / "aliases.fsh").write_text("""Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $ordinal = http://hl7.org/fhir/StructureDefinition/ordinalValue
Alias: $calculated = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression
Alias: $itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $itemControlCS = http://hl7.org/fhir/questionnaire-item-control
Alias: $who5answer = https://taltech.ee/fhir/mental/CodeSystem/who-5-answer
Alias: $who5 = https://taltech.ee/fhir/mental/CodeSystem/who-5
""", encoding="utf-8")

rs = ["// Answer lists shared by the items of one instrument. `insert` copies the rules in place.\n"]
rs.append("RuleSet: FrequencyAnswers\n// LOINC answer list LL358-3, used by every PHQ-9 and GAD-7 symptom item\n")
for i, (c, d, o) in enumerate(FREQ):
    rs.append(f"* answerOption[{'0' if i == 0 else '+'}].valueCoding = $LNC#{c} {q(d)}\n")
    rs.append(f"* answerOption[=].extension[$ordinal].valueDecimal = {o}\n")
rs.append("\nRuleSet: DifficultyAnswers\n// LOINC answer list LL359-1, PHQ-9's functional-difficulty item (not scored)\n")
for i, (c, d) in enumerate(DIFF):
    rs.append(f"* answerOption[{'0' if i == 0 else '+'}].valueCoding = $LNC#{c} {q(d)}\n")
rs.append("\nRuleSet: Who5Answers\n// The six WHO-5 response options; the code is the points the answer scores\n")
for i, (c, d) in enumerate(WHO):
    rs.append(f"* answerOption[{'0' if i == 0 else '+'}].valueCoding = $who5answer#{c} {q(d)}\n")
    rs.append(f"* answerOption[=].extension[$ordinal].valueDecimal = {c}\n")
rs.append("""
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
* jurisdiction = urn:iso:std:iso:3166#EE "Estonia"
""")
(FSH / "rulesets.fsh").write_text("".join(rs), encoding="utf-8")


def bands_md(bands, unit):
    rows = "\n".join(f"| {lo}–{hi} | {name} |" for lo, hi, name in bands)
    return f"| {unit} | Interpretation |\\n|---|---|\\n" + rows.replace("\n", "\\n")


# ---------------------------------------------------------------- questionnaires
out = []
out.append(f"""Instance: phq-9
InstanceOf: Questionnaire
Usage: #definition
Title: "PHQ-9 — Patient Health Questionnaire-9"
Description: "The nine-item depression screening questionnaire, coded with LOINC panel 44249-1."
* insert QuestionnaireHeader(phq-9, [[Patient Health Questionnaire-9 (PHQ-9)]])
* name = "PHQ9"
* description = "Nine questions about how often, over the last two weeks, a person has been bothered by symptoms of depression. Each answer scores 0 to 3, so the total score is 0 to 27.\\n\\n{bands_md(PHQ_BANDS, 'Total score')}\\n\\nAny answer other than *Not at all* to question 9 (thoughts of self-harm) needs a clinician's attention the same day, whatever the total score."
* purpose = "Screening for depression and monitoring the severity of depressive symptoms over time."
* copyright = "PHQ-9 © Pfizer Inc. No permission is required to reproduce, translate, display or distribute it. LOINC codes © Regenstrief Institute, Inc., used under the LOINC licence (https://loinc.org/license/). SNOMED CT codes © SNOMED International."
* code = $LNC#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* item[0].linkId = "phq-9-intro"
* item[=].type = #display
* item[=].text = "Over the last 2 weeks, how often have you been bothered by any of the following problems?"
""")
for c, t in PHQ:
    out.append(f"""* item[+].linkId = "{c}"
* item[=].code = $LNC#{c}
* item[=].text = {q(t)}
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
""")
out.append(f"""* item[+].linkId = "{PHQ_DIFF[0]}"
* item[=].code = $LNC#{PHQ_DIFF[0]}
* item[=].text = {q(PHQ_DIFF[1])}
* item[=].type = #choice
* item[=].required = false
* item[=] insert RadioButtons
* item[=] insert DifficultyAnswers
* item[+].linkId = "phq-9-total"
* item[=].code[0] = $LNC#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
* item[=].code[+] = {SCT}720433000 "Patient Health Questionnaire Nine Item score"
* item[=].text = "PHQ-9 total score (0–27)"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = {q(sum_expr([c for c, _ in PHQ]))}

Instance: gad-7
InstanceOf: Questionnaire
Usage: #definition
Title: "GAD-7 — Generalized Anxiety Disorder 7-item scale"
Description: "The seven-item anxiety screening questionnaire, coded with LOINC panel 69737-5 and SNOMED CT 704501007."
* insert QuestionnaireHeader(gad-7, [[Generalized Anxiety Disorder 7-item scale (GAD-7)]])
* name = "GAD7"
* description = "Seven questions about how often, over the last two weeks, a person has been bothered by symptoms of anxiety. Each answer scores 0 to 3, so the total score is 0 to 21.\\n\\n{bands_md(GAD_BANDS, 'Total score')}\\n\\nA total of 10 or more is the usual cut-off for further assessment of an anxiety disorder."
* purpose = "Screening for generalised anxiety disorder and monitoring the severity of anxiety symptoms over time."
* copyright = "GAD-7 © Pfizer Inc. No permission is required to reproduce, translate, display or distribute it. LOINC codes © Regenstrief Institute, Inc., used under the LOINC licence (https://loinc.org/license/). SNOMED CT codes © SNOMED International."
* code[0] = $LNC#69737-5 "Generalized anxiety disorder 7 item (GAD-7)"
* code[+] = {SCT}704501007 "Generalized Anxiety Disorder 7 item scale"
* item[0].linkId = "gad-7-intro"
* item[=].type = #display
* item[=].text = "Over the last 2 weeks, how often have you been bothered by the following problems?"
""")
for c, t in GAD:
    out.append(f"""* item[+].linkId = "{c}"
* item[=].code = $LNC#{c}
* item[=].text = {q(t)}
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert FrequencyAnswers
""")
out.append(f"""* item[+].linkId = "gad-7-total"
* item[=].code[0] = $LNC#70274-6 "Generalized anxiety disorder 7 item (GAD-7) total score [Reported.PHQ]"
* item[=].code[+] = {SCT}445455005 "Generalized Anxiety Disorder 7 item score"
* item[=].text = "GAD-7 total score (0–21)"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = {q(sum_expr([c for c, _ in GAD]))}

Instance: who-5
InstanceOf: Questionnaire
Usage: #definition
Title: "WHO-5 — World Health Organization-Five Well-Being Index"
Description: "The five-item well-being questionnaire, coded with SNOMED CT 1144752009 and, as LOINC has no WHO-5 codes, with this guide's own WHO-5 code system."
* insert QuestionnaireHeader(who-5, WHO-5 Well-Being Index)
* name = "WHO5"
* description = "Five positively worded statements about how a person has been feeling over the last two weeks. Each answer scores 0 to 5. The raw score (0–25) is multiplied by 4 to give the well-being index (0–100), where higher means better well-being.\\n\\n{bands_md(WHO_BANDS, 'Index (0–100)')}\\n\\nAn index below 50 (a raw score below 13) suggests poor well-being and is an indication to screen for depression, for example with PHQ-9."
* purpose = "Measuring current mental well-being and screening for depression."
* copyright = "WHO-5 © World Health Organization 2024 (WHO/UCN/MSD/MHE/2024.1), licence CC BY-NC-SA 3.0 IGO: non-commercial use; commercial use needs WHO's permission. SNOMED CT codes © SNOMED International."
* code[0] = $who5#who-5 "WHO-5 Well-Being Index questionnaire"
* code[+] = {SCT}1144752009 "World Health Organization-Five Well-Being Index questionnaire"
* item[0].linkId = "who-5-intro"
* item[=].type = #display
* item[=].text = "Please indicate for each of the five statements which is closest to how you have been feeling over the last two weeks. Notice that higher numbers mean better well-being. Over the last two weeks:"
""")
for c, t in WHO_ITEMS:
    out.append(f"""* item[+].linkId = "{c}"
* item[=].code = $who5#{c} {q(t)}
* item[=].text = {q(t)}
* item[=].type = #choice
* item[=].required = true
* item[=] insert RadioButtons
* item[=] insert Who5Answers
""")
who_raw = sum_expr([c for c, _ in WHO_ITEMS])
out.append(f"""* item[+].linkId = "who-5-raw"
* item[=].code = $who5#who-5-raw "WHO-5 raw score"
* item[=].text = "WHO-5 raw score (0–25)"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = {q(who_raw)}
* item[+].linkId = "who-5-index"
* item[=].code[0] = $who5#who-5-index "WHO-5 well-being index"
* item[=].code[+] = {SCT}1144665009 "World Health Organization-Five Well-Being Index questionnaire score"
* item[=].text = "WHO-5 well-being index (0–100)"
* item[=].type = #integer
* item[=].readOnly = true
* item[=].extension[$calculated].valueExpression.language = #text/fhirpath
* item[=].extension[$calculated].valueExpression.expression = {q("(" + who_raw + ") * 4")}

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
""")
for c, d in WHO:
    out.append(f"* #{c} {q(d)}\n")
out.append(f"""
ValueSet: Who5AnswerVS
Id: who-5-answer
Title: "WHO-5 response options"
Description: "All six WHO-5 response options."
* ^url = "https://taltech.ee/fhir/mental/ValueSet/who-5-answer"
* ^status = #draft
* ^experimental = true
* include codes from system $who5answer
""")
(FSH / "questionnaires.fsh").write_text("".join(out), encoding="utf-8")

# ---------------------------------------------------------------- people
(FSH / "examples-people.fsh").write_text("""// Fictional people. Mari Maasikas is the Estonian placeholder name, like John Doe in English.

Instance: patient-mari
InstanceOf: Patient
Usage: #example
Title: "Patient Mari Maasikas"
Description: "Fictional patient, 42, seen for a routine check-up."
* name.family = "Maasikas"
* name.given = "Mari"
* gender = #female
* birthDate = "1984-03-12"

Instance: patient-juhan
InstanceOf: Patient
Usage: #example
Title: "Patient Juhan Juurikas"
Description: "Fictional patient, 55, who reports low mood and poor sleep since a redundancy."
* name.family = "Juurikas"
* name.given = "Juhan"
* gender = #male
* birthDate = "1971-08-30"

Instance: patient-kati
InstanceOf: Patient
Usage: #example
Title: "Patient Kati Karu"
Description: "Fictional patient, 30, who books an appointment because she cannot cope any more."
* name.family = "Karu"
* name.given = "Kati"
* gender = #female
* birthDate = "1996-01-05"

Instance: practitioner-peeter
InstanceOf: Practitioner
Usage: #example
Title: "Practitioner Peeter Pihlakas"
Description: "Fictional family physician who runs the assessments."
* name.family = "Pihlakas"
* name.given = "Peeter"
* name.prefix = "Dr."
""", encoding="utf-8")

# ---------------------------------------------------------------- examples
PATIENTS = {
    "mari": dict(name="Mari Maasikas", when="2026-11-10", time="09:15", story="routine check-up, no concerns",
                 phq=[1, 0, 1, 1, 0, 0, 0, 0, 0], diff=0, gad=[1, 0, 1, 0, 0, 0, 0], who=[4, 4, 3, 4, 5]),
    "juhan": dict(name="Juhan Juurikas", when="2026-11-12", time="14:40", story="low mood and poor sleep for six weeks",
                  phq=[2, 2, 1, 2, 1, 1, 2, 1, 0], diff=1, gad=[2, 2, 2, 1, 1, 2, 1], who=[2, 2, 3, 2, 2]),
    "kati": dict(name="Kati Karu", when="2026-11-14", time="11:05", story="cannot cope at work or at home",
                 phq=[3, 3, 2, 3, 2, 3, 2, 2, 2], diff=2, gad=[3, 3, 2, 3, 2, 2, 2], who=[1, 1, 1, 0, 2]),
}

PROC = {
    "phq-9": ("715252007", "Depression screening using PHQ-9 (Patient Health Questionnaire 9) score"),
    "gad-7": ("445598007", "Assessment using Generalized Anxiety Disorder 7 item score"),
    "who-5": ("1417808008", "Assessment using World Health Organization-Five Well-Being Index questionnaire"),
}
# The panel names the same assessment, so the procedure carries it next to SNOMED CT (as US Core's
# procedure codes allow LOINC). LOINC 2.83 has no WHO-5 codes, so WHO-5 takes this guide's own panel code.
PROC_LOINC = {
    "phq-9": ("$LNC#44249-1", "PHQ-9 quick depression assessment panel [Reported.PHQ]"),
    "gad-7": ("$LNC#69737-5", "Generalized anxiety disorder 7 item (GAD-7)"),
    "who-5": ("$who5#who-5", "WHO-5 Well-Being Index questionnaire"),
}
TITLES = {"phq-9": "PHQ-9", "gad-7": "GAD-7", "who-5": "WHO-5"}

summary = []
for inst in ("phq-9", "gad-7", "who-5"):
    lines = [f"// {TITLES[inst]}: one completed questionnaire and its assessment procedure per patient.\n"]
    for key, p in PATIENTS.items():
        stamp = f"{p['when']}T{p['time']}:00+02:00"
        qr_id, pr_id = f"{inst}-response-{key}", f"{inst}-procedure-{key}"
        items = []
        if inst == "phq-9":
            for (c, t), v in zip(PHQ, p["phq"]):
                items.append((c, t, f"$LNC#{FREQ[v][0]} {q(FREQ[v][1])}"))
            items.append((PHQ_DIFF[0], PHQ_DIFF[1], f"$LNC#{DIFF[p['diff']][0]} {q(DIFF[p['diff']][1])}"))
            total = sum(p["phq"])
            scores = [("phq-9-total", "PHQ-9 total score (0–27)", total)]
            result = f"PHQ-9 total score {total} of 27: {band(total, PHQ_BANDS)} depressive symptoms"
            if p["phq"][8] > 0:
                result += (f". Question 9 (thoughts of self-harm) answered '{FREQ[p['phq'][8]][1]}': "
                           "the physician assessed suicide risk during the same visit")
        elif inst == "gad-7":
            for (c, t), v in zip(GAD, p["gad"]):
                items.append((c, t, f"$LNC#{FREQ[v][0]} {q(FREQ[v][1])}"))
            total = sum(p["gad"])
            scores = [("gad-7-total", "GAD-7 total score (0–21)", total)]
            result = f"GAD-7 total score {total} of 21: {band(total, GAD_BANDS)} anxiety symptoms"
        else:
            for (c, t), v in zip(WHO_ITEMS, p["who"]):
                d = dict(WHO)[str(v)]
                items.append((c, t, f"$who5answer#{v} {q(d)}"))
            raw = sum(p["who"])
            total = raw * 4
            scores = [("who-5-raw", "WHO-5 raw score (0–25)", raw), ("who-5-index", "WHO-5 well-being index (0–100)", total)]
            result = f"WHO-5 raw score {raw} of 25, well-being index {total} of 100: {band(total, WHO_BANDS)}"
            if total < 50:
                result += "; screened for depression with PHQ-9 at the same visit"
        summary.append((inst, key, p["name"], result))
        lines.append(f"""
Instance: {qr_id}
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "{TITLES[inst]} answered by {p['name']}"
Description: "{p['name']} ({p['story']}) completed {TITLES[inst]} on {p['when']}. {result}."
* questionnaire = "{BASE}/Questionnaire/{inst}|{VER}"
* status = #completed
* subject = Reference(patient-{key})
* authored = "{stamp}"
* author = Reference(patient-{key})
* source = Reference(patient-{key})
* partOf = Reference({pr_id})
""")
        first = True
        for c, t, ans in items:
            lines.append(f"* item[{'0' if first else '+'}].linkId = \"{c}\"\n* item[=].text = {q(t)}\n* item[=].answer.valueCoding = {ans}\n")
            first = False
        for c, t, v in scores:
            lines.append(f"* item[+].linkId = \"{c}\"\n* item[=].text = {q(t)}\n* item[=].answer.valueInteger = {v}\n")
        code, disp = PROC[inst]
        loinc_line = (f"* code.coding[+] = {PROC_LOINC[inst][0]} {q(PROC_LOINC[inst][1])}\n"
                      if inst in PROC_LOINC else "")
        lines.append(f"""
Instance: {pr_id}
InstanceOf: Procedure
Usage: #example
Title: "{TITLES[inst]} assessment of {p['name']}"
Description: "The {TITLES[inst]} assessment of {p['name']} on {p['when']}. The answers are in {TITLES[inst]} answered by {p['name']}."
* status = #completed
* code.coding[0] = {SCT}{code} {q(disp)}
{loinc_line}* subject = Reference(patient-{key})
* performedDateTime = "{stamp}"
* performer.actor = Reference(practitioner-peeter)
* outcome.text = {q(result)}
""")
    (FSH / f"examples-{inst}.fsh").write_text("".join(lines), encoding="utf-8")

for s in summary:
    print(" | ".join(s))
