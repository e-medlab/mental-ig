# Questionnaire viewer

A small React app that shows the IG's three questionnaires (PHQ-9, GAD-7, WHO-5) as fillable forms,
using the HelexEMR questionnaire renderer. You can prefill a form with one of the IG's example
patients, watch the score and its interpretation update live, switch the language of the questions
(English, Eesti, Русский, Українська — read from the Questionnaires' R4 `translation` extensions,
falling back to English) and, on **Submit**, get the answers as a FHIR R4 `QuestionnaireResponse`
to copy or download.

It is published with the IG at `https://e-medlab.github.io/mental-ig/viewer/` and reads the IG's
own JSON from the folder above it (`../Questionnaire-<id>.json`,
`../QuestionnaireResponse-<id>-response-<patient>.json`).

URL parameters: `?q=phq-9|gad-7|who-5`, `&r=mari|juhan|kati` (prefill), `&lang=en|et|ru|uk`.

## Running it

The HelexEMR packages (`@helex-solutions/*`) come from GitHub Packages, which needs a token with
`read:packages` even for public packages. `.npmrc` reads it from `NODE_AUTH_TOKEN`; never write the
token into a file.

```sh
cd viewer
export NODE_AUTH_TOKEN=$(gh auth token)   # or a PAT with read:packages
npm ci
npm run dev        # http://localhost:5173/mental-ig/viewer/
npm run build      # type-checks, then writes dist/
```

Build the IG first (`./build.sh` in the repo root): in dev the app's JSON requests
(`/mental-ig/*.json`) are served from `../output/` by a small plugin in `vite.config.ts`.

To try the production build the way Pages serves it, put the IG output and the app side by side:

```sh
mkdir -p /tmp/pages && cp -R ../output /tmp/pages/mental-ig && cp -R dist /tmp/pages/mental-ig/viewer
cd /tmp/pages && python3 -m http.server 8000   # http://localhost:8000/mental-ig/viewer/
```

## Build notes

- The HelexEMR questionnaire packages (`@helex/questionnaire-response`, `@helex/questionnaire-engine`)
  are bundled into their own chunk (`helex-questionnaire-*.js`), which is run through
  `javascript-obfuscator`; everything else is only minified. There are no source maps and no comments
  in the output.
- Third-party versions are pinned exactly; `overrides` in `package.json` pin transitive packages to
  releases at least two weeks old at the time of writing.

## Score labels and band texts

`src/bands.ts` holds each score's bands with a label and a patient-facing interpretation in en / et / ru / uk
(the score panel shows the patient text). The PHQ-9 and GAD-7 interpretations in en, et and ru and the WHO-5
clinician texts in all four languages are HelexEMR's own wording from its questionnaire seeds. The Ukrainian
PHQ-9 / GAD-7 interpretations, the WHO-5 patient texts, the band labels and the item-9 alert were translated
for this viewer and have not been reviewed.
