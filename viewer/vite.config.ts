import { createReadStream, existsSync, statSync } from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { defineConfig, type Plugin } from 'vite';
import react from '@vitejs/plugin-react';
import JavaScriptObfuscator from 'javascript-obfuscator';

const here = path.dirname(fileURLToPath(import.meta.url));
/** The built IG (SUSHI + IG Publisher). On GitHub Pages it is the parent folder of this app. */
const igOutput = path.resolve(here, '../output');

/** The chunk that holds the HelexEMR questionnaire packages — the only one that is obfuscated. */
const QUESTIONNAIRE_CHUNK = 'helex-questionnaire';
const QUESTIONNAIRE_MODULE = /[\\/]node_modules[\\/]@helex[\\/]questionnaire-(response|engine)[\\/]/;

/**
 * Dev only: serve the built IG next to the app the way Pages does, so the app's relative
 * `../Questionnaire-<id>.json` fetches (→ `/mental-ig/<file>.json`) resolve to `../output/<file>.json`.
 */
function serveIgOutput(): Plugin {
  return {
    name: 'mental-ig:serve-ig-output',
    apply: 'serve',
    configureServer(server) {
      server.middlewares.use((req, res, next) => {
        const m = /^\/mental-ig\/([A-Za-z0-9._-]+\.json)(?:\?.*)?$/.exec(req.url ?? '');
        if (!m) return next();
        const file = path.join(igOutput, m[1]);
        if (!existsSync(file) || !statSync(file).isFile()) return next();
        res.setHeader('Content-Type', 'application/fhir+json; charset=utf-8');
        createReadStream(file).pipe(res);
      });
    },
  };
}

/**
 * Build only: run javascript-obfuscator over the questionnaire chunk after it has been minified.
 * `generateBundle` sees the final chunk code, so nothing re-formats the obfuscated output.
 */
function obfuscateQuestionnaireChunk(): Plugin {
  return {
    name: 'mental-ig:obfuscate-questionnaire-chunk',
    apply: 'build',
    enforce: 'post',
    generateBundle(_options, bundle) {
      for (const file of Object.values(bundle)) {
        if (file.type !== 'chunk' || file.name !== QUESTIONNAIRE_CHUNK) continue;
        file.code = JavaScriptObfuscator.obfuscate(file.code, {
          target: 'browser',
          sourceMap: false,
          compact: true,
          identifierNamesGenerator: 'hexadecimal',
          renameGlobals: false,
          stringArray: true,
          stringArrayThreshold: 1,
          stringArrayEncoding: ['base64'],
          stringArrayRotate: true,
          stringArrayShuffle: true,
          stringArrayIndexShift: true,
          stringArrayWrappersCount: 2,
          stringArrayWrappersType: 'function',
          splitStrings: true,
          splitStringsChunkLength: 8,
          transformObjectKeys: true,
          numbersToExpressions: false,
          controlFlowFlattening: false,
          deadCodeInjection: false,
          selfDefending: false,
          debugProtection: false,
          disableConsoleOutput: false,
          unicodeEscapeSequence: false,
        }).getObfuscatedCode();
      }
    },
  };
}

export default defineConfig({
  base: '/mental-ig/viewer/',
  plugins: [react(), serveIgOutput(), obfuscateQuestionnaireChunk()],
  build: {
    outDir: 'dist',
    emptyOutDir: true,
    sourcemap: false,
    chunkSizeWarningLimit: 4000,
    rolldownOptions: {
      // Needed with `includeDependenciesRecursively: false` (see below) so the split chunks stay valid.
      preserveEntrySignatures: false,
      output: {
        strictExecutionOrder: true,
        // No comments of any kind (licence banners and JSDoc would reveal source paths and names).
        comments: false,
        // Vite 8 / Rolldown: `codeSplitting.groups` is the successor of Rollup's
        // `manualChunks` (still accepted, but deprecated).
        codeSplitting: {
          groups: [
            // Only the two packages themselves — not their dependencies (fhirpath, @helex/ui, antd …),
            // which stay in the vendor chunk, minified but not obfuscated.
            {
              name: QUESTIONNAIRE_CHUNK,
              test: QUESTIONNAIRE_MODULE,
              priority: 20,
              includeDependenciesRecursively: false,
            },
            { name: 'vendor', test: /[\\/]node_modules[\\/]/, tags: ['$initial'], priority: 10 },
          ],
        },
      },
    },
  },
});
