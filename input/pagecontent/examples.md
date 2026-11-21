<link rel="stylesheet" href="mental-ig.css"/>

<p class="mh-section-lead">Three fictional patients each completed PHQ-9, GAD-7 and WHO-5 at one
visit to their family physician, <a href="Practitioner-practitioner-peeter.html">Dr. Peeter Pihlakas</a>.
Together they cover the range of results: well, moderate symptoms, and severe symptoms that need action
the same day.</p>

<div class="mh-grid">
  <div class="mh-card">
    <div class="mh-card-title"><a href="Patient-patient-mari.html">Mari Maasikas</a></div>
    <p class="mh-meta">42, routine check-up, no concerns</p>
    <div class="mh-score"><span><a href="QuestionnaireResponse-phq-9-response-mari.html">PHQ-9</a></span><span><span class="mh-num">3</span> <span class="mh-of">of 27</span> <span class="mh-pill mh-good">minimal depressive symptoms</span></span></div><div class="mh-score"><span><a href="QuestionnaireResponse-gad-7-response-mari.html">GAD-7</a></span><span><span class="mh-num">2</span> <span class="mh-of">of 21</span> <span class="mh-pill mh-good">minimal anxiety symptoms</span></span></div><div class="mh-score"><span><a href="QuestionnaireResponse-who-5-response-mari.html">WHO-5</a></span><span><span class="mh-num">80</span> <span class="mh-of">of 100</span> <span class="mh-pill mh-good">adequate well-being</span></span></div>
    <p class="mh-links" style="margin-top:0.7em"><a href="https://e-medlab.github.io/mental-ig/viewer/?q=phq-9&amp;r=mari">Open in the form viewer</a></p>
  </div>
  <div class="mh-card">
    <div class="mh-card-title"><a href="Patient-patient-juhan.html">Juhan Juurikas</a></div>
    <p class="mh-meta">55, low mood and poor sleep for six weeks</p>
    <div class="mh-score"><span><a href="QuestionnaireResponse-phq-9-response-juhan.html">PHQ-9</a></span><span><span class="mh-num">12</span> <span class="mh-of">of 27</span> <span class="mh-pill mh-mid">moderate depressive symptoms</span></span></div><div class="mh-score"><span><a href="QuestionnaireResponse-gad-7-response-juhan.html">GAD-7</a></span><span><span class="mh-num">11</span> <span class="mh-of">of 21</span> <span class="mh-pill mh-mid">moderate anxiety symptoms</span></span></div><div class="mh-score"><span><a href="QuestionnaireResponse-who-5-response-juhan.html">WHO-5</a></span><span><span class="mh-num">44</span> <span class="mh-of">of 100</span> <span class="mh-pill mh-bad">poor well-being</span></span></div>
    <p class="mh-links" style="margin-top:0.7em"><a href="https://e-medlab.github.io/mental-ig/viewer/?q=phq-9&amp;r=juhan">Open in the form viewer</a></p>
  </div>
  <div class="mh-card">
    <div class="mh-card-title"><a href="Patient-patient-kati.html">Kati Karu</a></div>
    <p class="mh-meta">30, cannot cope at work or at home</p>
    <div class="mh-score"><span><a href="QuestionnaireResponse-phq-9-response-kati.html">PHQ-9</a></span><span><span class="mh-num">22</span> <span class="mh-of">of 27</span> <span class="mh-pill mh-bad">severe depressive symptoms</span></span></div><div class="mh-score"><span><a href="QuestionnaireResponse-gad-7-response-kati.html">GAD-7</a></span><span><span class="mh-num">17</span> <span class="mh-of">of 21</span> <span class="mh-pill mh-bad">severe anxiety symptoms</span></span></div><div class="mh-score"><span><a href="QuestionnaireResponse-who-5-response-kati.html">WHO-5</a></span><span><span class="mh-num">20</span> <span class="mh-of">of 100</span> <span class="mh-pill mh-bad">poor well-being</span></span></div>
    <p class="mh-links" style="margin-top:0.7em"><a href="https://e-medlab.github.io/mental-ig/viewer/?q=phq-9&amp;r=kati">Open in the form viewer</a></p>
  </div>
</div>

<div class="mh-note mh-warn" markdown="1">
**Kati Karu answered question 9 of PHQ-9** (thoughts of self-harm) with *More than half the days*. Any
answer other than *Not at all* to that question needs a clinician's attention the same day, whatever the
total score, and her PHQ-9 procedure records that this happened.
</div>

For each patient and questionnaire there are two resources: the **QuestionnaireResponse** with the
patient's answers and calculated score, and the **Procedure** that records the assessment and its result
in the patient's record. The response points to the procedure through its `partOf` field.

### All examples

#### PHQ-9

<p class="mh-meta">Questionnaire <a href="Questionnaire-phq-9.html">PHQ-9</a>. Procedure code: SNOMED CT <code>715252007</code> <em>Depression screening using PHQ-9 (Patient Health Questionnaire 9) score</em> and LOINC <code>44249-1</code> <em>PHQ-9 quick depression assessment panel [Reported.PHQ]</em>.</p>

<table class="mh-table">
  <tr><th>Patient</th><th>Result</th><th>Answers</th><th>Assessment</th><th>Try it</th></tr>
  <tr><td><b>Mari Maasikas</b></td><td><span class="mh-pill mh-good">3 · minimal depressive symptoms</span><br/><span class="mh-of">PHQ-9 total score 3 of 27: minimal depressive symptoms</span></td><td><a href="QuestionnaireResponse-phq-9-response-mari.html">QuestionnaireResponse</a></td><td><a href="Procedure-phq-9-procedure-mari.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=phq-9&amp;r=mari">open in the form</a></td></tr>
  <tr><td><b>Juhan Juurikas</b></td><td><span class="mh-pill mh-mid">12 · moderate depressive symptoms</span><br/><span class="mh-of">PHQ-9 total score 12 of 27: moderate depressive symptoms</span></td><td><a href="QuestionnaireResponse-phq-9-response-juhan.html">QuestionnaireResponse</a></td><td><a href="Procedure-phq-9-procedure-juhan.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=phq-9&amp;r=juhan">open in the form</a></td></tr>
  <tr><td><b>Kati Karu</b></td><td><span class="mh-pill mh-bad">22 · severe depressive symptoms</span><br/><span class="mh-of">PHQ-9 total score 22 of 27: severe depressive symptoms. Question 9 (thoughts of self-harm) answered 'More than half the days': the physician assessed suicide risk during the same visit</span></td><td><a href="QuestionnaireResponse-phq-9-response-kati.html">QuestionnaireResponse</a></td><td><a href="Procedure-phq-9-procedure-kati.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=phq-9&amp;r=kati">open in the form</a></td></tr>
</table>

#### GAD-7

<p class="mh-meta">Questionnaire <a href="Questionnaire-gad-7.html">GAD-7</a>. Procedure code: SNOMED CT <code>445598007</code> <em>Assessment using Generalized Anxiety Disorder 7 item score</em> and LOINC <code>69737-5</code> <em>Generalized anxiety disorder 7 item (GAD-7)</em>.</p>

<table class="mh-table">
  <tr><th>Patient</th><th>Result</th><th>Answers</th><th>Assessment</th><th>Try it</th></tr>
  <tr><td><b>Mari Maasikas</b></td><td><span class="mh-pill mh-good">2 · minimal anxiety symptoms</span><br/><span class="mh-of">GAD-7 total score 2 of 21: minimal anxiety symptoms</span></td><td><a href="QuestionnaireResponse-gad-7-response-mari.html">QuestionnaireResponse</a></td><td><a href="Procedure-gad-7-procedure-mari.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=gad-7&amp;r=mari">open in the form</a></td></tr>
  <tr><td><b>Juhan Juurikas</b></td><td><span class="mh-pill mh-mid">11 · moderate anxiety symptoms</span><br/><span class="mh-of">GAD-7 total score 11 of 21: moderate anxiety symptoms</span></td><td><a href="QuestionnaireResponse-gad-7-response-juhan.html">QuestionnaireResponse</a></td><td><a href="Procedure-gad-7-procedure-juhan.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=gad-7&amp;r=juhan">open in the form</a></td></tr>
  <tr><td><b>Kati Karu</b></td><td><span class="mh-pill mh-bad">17 · severe anxiety symptoms</span><br/><span class="mh-of">GAD-7 total score 17 of 21: severe anxiety symptoms</span></td><td><a href="QuestionnaireResponse-gad-7-response-kati.html">QuestionnaireResponse</a></td><td><a href="Procedure-gad-7-procedure-kati.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=gad-7&amp;r=kati">open in the form</a></td></tr>
</table>

#### WHO-5

<p class="mh-meta">Questionnaire <a href="Questionnaire-who-5.html">WHO-5</a>. Procedure code: SNOMED CT <code>1417808008</code> <em>Assessment using World Health Organization-Five Well-Being Index questionnaire</em> and WHO-5 (this guide) <code>who-5</code> <em>WHO-5 Well-Being Index questionnaire</em>.</p>

<table class="mh-table">
  <tr><th>Patient</th><th>Result</th><th>Answers</th><th>Assessment</th><th>Try it</th></tr>
  <tr><td><b>Mari Maasikas</b></td><td><span class="mh-pill mh-good">80 · adequate well-being</span><br/><span class="mh-of">WHO-5 raw score 20 of 25, well-being index 80 of 100: adequate well-being</span></td><td><a href="QuestionnaireResponse-who-5-response-mari.html">QuestionnaireResponse</a></td><td><a href="Procedure-who-5-procedure-mari.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=who-5&amp;r=mari">open in the form</a></td></tr>
  <tr><td><b>Juhan Juurikas</b></td><td><span class="mh-pill mh-bad">44 · poor well-being</span><br/><span class="mh-of">WHO-5 raw score 11 of 25, well-being index 44 of 100: poor well-being; screened for depression with PHQ-9 at the same visit</span></td><td><a href="QuestionnaireResponse-who-5-response-juhan.html">QuestionnaireResponse</a></td><td><a href="Procedure-who-5-procedure-juhan.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=who-5&amp;r=juhan">open in the form</a></td></tr>
  <tr><td><b>Kati Karu</b></td><td><span class="mh-pill mh-bad">20 · poor well-being</span><br/><span class="mh-of">WHO-5 raw score 5 of 25, well-being index 20 of 100: poor well-being; screened for depression with PHQ-9 at the same visit</span></td><td><a href="QuestionnaireResponse-who-5-response-kati.html">QuestionnaireResponse</a></td><td><a href="Procedure-who-5-procedure-kati.html">Procedure</a></td><td><a href="https://e-medlab.github.io/mental-ig/viewer/?q=who-5&amp;r=kati">open in the form</a></td></tr>
</table>

### Reading one example step by step

Open [PHQ-9 answered by Juhan Juurikas](QuestionnaireResponse-phq-9-response-juhan.html) and look at the
JSON tab:

1. `questionnaire` is `https://taltech.ee/fhir/mental/Questionnaire/phq-9|0.1.0`: the form and the version
   of it that Juhan answered.
2. `subject`, `author` and `source` all point to Juhan: the answers are about him and he gave them himself.
3. `partOf` points to [the procedure](Procedure-phq-9-procedure-juhan.html) in which his physician
   recorded the assessment.
4. Each `item` repeats a question's `linkId` and text, and holds the chosen answer as a LOINC code. For
   example, `44255-8` *Feeling down, depressed, or hopeless* is answered `LA6570-1` *More than half the
   days*, which scores 2 points.
5. The last item, `phq-9-total`, holds the total score, 12. A form tool calculates it from the answers
   with the formula in the questionnaire; it is stored so that a receiving system does not have to
   recalculate it.
