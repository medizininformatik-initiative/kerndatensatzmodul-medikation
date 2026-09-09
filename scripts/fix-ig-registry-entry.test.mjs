import assert from "node:assert/strict";
import { mkdtempSync, readFileSync, writeFileSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";
import test from "node:test";

import { fixIgRegistryEntry } from "./fix-ig-registry-entry.mjs";

// Fixture values only: a fictitious example module following the MII
// metadata contract (packageId de.medizininformatikinitiative.kerndatensatz.*,
// canonical .../fhir/modul-<slug>, publication website on GitHub Pages).
const packageId = "de.medizininformatikinitiative.kerndatensatz.example";
const canonical =
  "https://www.medizininformatik-initiative.de/fhir/modul-example";
const publicationBase =
  "https://example-org.github.io/kds-module-example";
const history = `${publicationBase}/history.html`;
const request = {
  "package-id": packageId,
  version: "2026.0.1",
  path: `${publicationBase}/2026.0.1`,
  sequence: "2026",
  title: "MII Implementation Guide Example Module",
  category: "Research",
  "ci-build": `${publicationBase}/branches/dev/`,
  "registry-description":
    "Implementation Guide for the Medical Informatics Initiative Core Dataset " +
    "Example module.",
  "registry-country": "de",
  "registry-authority": "Medical Informatics Initiative (MII)",
};
const packageMetadata = {
  name: packageId,
  version: request.version,
  canonical,
  fhirVersions: ["4.0.1"],
};

function targetEntry(overrides = {}) {
  return {
    name: request.title,
    category: request.category,
    "npm-name": packageId,
    description: request["registry-description"],
    authority: request["registry-authority"],
    country: request["registry-country"],
    history: `${canonical}/history.html`,
    product: ["fhir"],
    language: ["en"],
    canonical,
    "ci-build": request["ci-build"].replace(/\/$/, ""),
    editions: [
      {
        name: request.sequence,
        "ig-version": request.version,
        package: `${packageId}#${request.version}`,
        "fhir-version": ["4.0.1"],
        url: request.path,
      },
    ],
    ...overrides,
  };
}

function fixture(entry = targetEntry()) {
  const root = mkdtempSync(join(tmpdir(), "ig-registry-entry-"));
  const registry = join(root, "fhir-ig-list.json");
  const requestFile = join(root, "publication-request.json");
  const packageFile = join(root, "package.json");
  const unrelated = {
    name: "Unrelated {guide}",
    "npm-name": "example.unrelated",
    history: "https://example.org/history.html",
    language: ["en"],
  };
  const entrySource = JSON.stringify(entry);
  const source = `{ "guides" : [${JSON.stringify(unrelated)},\n  ${entrySource}] }\n`;
  writeFileSync(registry, source);
  writeFileSync(requestFile, JSON.stringify(request));
  writeFileSync(packageFile, JSON.stringify(packageMetadata));
  return {
    registry,
    requestFile,
    packageFile,
    source,
    entrySource,
    unrelated,
  };
}

test("corrects only the target history and languages without reformatting the registry", () => {
  const files = fixture();
  const result = fixIgRegistryEntry(
    files.registry,
    files.requestFile,
    files.packageFile,
    canonical,
    history,
    ["en", "de"],
  );

  assert.deepEqual(result, {
    changed: true,
    packageId,
    history,
    languages: ["en", "de"],
  });
  const correctedSource = readFileSync(files.registry, "utf8");
  const corrected = JSON.parse(correctedSource);
  const entry = corrected.guides.find(
    (guide) => guide["npm-name"] === packageId,
  );
  assert.equal(entry.history, history);
  assert.deepEqual(entry.language, ["en", "de"]);
  assert.deepEqual(corrected.guides[0], files.unrelated);
  const expectedEntry = files.entrySource
    .replace(JSON.stringify(`${canonical}/history.html`), JSON.stringify(history))
    .replace('"language":["en"]', '"language":["en", "de"]');
  assert.equal(
    correctedSource,
    files.source.replace(files.entrySource, expectedEntry),
  );
});

test("validates an entry that is already corrected", () => {
  const files = fixture(
    targetEntry({ history, language: ["en", "de"] }),
  );
  const result = fixIgRegistryEntry(
    files.registry,
    files.requestFile,
    files.packageFile,
    canonical,
    history,
    ["en", "de"],
  );

  assert.equal(result.changed, false);
  assert.equal(readFileSync(files.registry, "utf8"), files.source);
});

test("rejects placeholder or mismatched generated metadata before writing", () => {
  const placeholder = fixture(targetEntry({ authority: "??" }));
  assert.throws(
    () =>
      fixIgRegistryEntry(
        placeholder.registry,
        placeholder.requestFile,
        placeholder.packageFile,
        canonical,
        history,
        ["en", "de"],
      ),
    /authority: expected.*\?\?/,
  );
  assert.equal(readFileSync(placeholder.registry, "utf8"), placeholder.source);

  const wrongEdition = fixture(
    targetEntry({
      editions: [
        {
          name: "2025",
          "ig-version": request.version,
          package: `${packageId}#${request.version}`,
          "fhir-version": ["4.0.1"],
          url: request.path,
        },
      ],
    }),
  );
  assert.throws(
    () =>
      fixIgRegistryEntry(
        wrongEdition.registry,
        wrongEdition.requestFile,
        wrongEdition.packageFile,
        canonical,
        history,
        ["en", "de"],
      ),
    /edition\.name/,
  );

  const wrongFhirVersion = fixture(
    targetEntry({
      editions: [
        {
          name: request.sequence,
          "ig-version": request.version,
          package: `${packageId}#${request.version}`,
          "fhir-version": ["5.0.0"],
          url: request.path,
        },
      ],
    }),
  );
  assert.throws(
    () =>
      fixIgRegistryEntry(
        wrongFhirVersion.registry,
        wrongFhirVersion.requestFile,
        wrongFhirVersion.packageFile,
        canonical,
        history,
        ["en", "de"],
      ),
    /edition\.fhir-version/,
  );

  const duplicateEdition = targetEntry();
  duplicateEdition.editions.push({ ...duplicateEdition.editions[0] });
  const duplicateEditions = fixture(duplicateEdition);
  assert.throws(
    () =>
      fixIgRegistryEntry(
        duplicateEditions.registry,
        duplicateEditions.requestFile,
        duplicateEditions.packageFile,
        canonical,
        history,
        ["en", "de"],
      ),
    /exactly one 2026\.0\.1 entry; found 2/,
  );
});

test("rejects missing, duplicate, and ambiguous target entries", () => {
  const missing = fixture({ "npm-name": "different.package" });
  assert.throws(
    () =>
      fixIgRegistryEntry(
        missing.registry,
        missing.requestFile,
        missing.packageFile,
        canonical,
        history,
        ["en", "de"],
      ),
    /found 0/,
  );

  const duplicate = fixture();
  const parsed = JSON.parse(duplicate.source);
  parsed.guides.push(targetEntry());
  writeFileSync(duplicate.registry, JSON.stringify(parsed));
  assert.throws(
    () =>
      fixIgRegistryEntry(
        duplicate.registry,
        duplicate.requestFile,
        duplicate.packageFile,
        canonical,
        history,
        ["en", "de"],
      ),
    /found 2/,
  );

  const invalidLanguages = fixture();
  assert.throws(
    () =>
      fixIgRegistryEntry(
        invalidLanguages.registry,
        invalidLanguages.requestFile,
        invalidLanguages.packageFile,
        canonical,
        history,
        ["en", "en"],
      ),
    /Invalid or duplicate registry languages/,
  );
});

// Regression: eine Ballot-Publikation traegt einen Editionsnamen aus sequence
// UND Status-Label. Der IG Publisher bildet ihn in PublicationProcess.java
// (case "ballot": st = "Ballot") beziehungsweise PublishBoxStatementGenerator
// (decorate(sequence + " Ballot")). Der frueher hier stehende reine
// Gleichheitsvergleich gegen die sequence liess deshalb JEDE Ballot-Publikation
// scheitern -- beobachtet bei Medikation 2027.0.0-ballot.rc5:
//   Generated registry entry is invalid:
//   - edition.name: expected "2027", found "2027 Ballot"
function ballotFixture(editionName) {
  const root = mkdtempSync(join(tmpdir(), "ig-registry-entry-ballot-"));
  const registry = join(root, "fhir-ig-list.json");
  const requestFile = join(root, "publication-request.json");
  const packageFile = join(root, "package.json");
  const ballotRequest = { ...request, status: "ballot" };
  const entry = targetEntry({ history, language: ["en", "de"] });
  entry.editions[0].name = editionName;
  writeFileSync(
    registry,
    `{ "guides" : [${JSON.stringify(entry)}] }\n`,
  );
  writeFileSync(requestFile, JSON.stringify(ballotRequest));
  writeFileSync(packageFile, JSON.stringify(packageMetadata));
  return { registry, requestFile, packageFile };
}

test("accepts the publisher's ballot edition name (sequence + label)", () => {
  const files = ballotFixture(`${request.sequence} Ballot`);
  assert.doesNotThrow(() =>
    fixIgRegistryEntry(
      files.registry,
      files.requestFile,
      files.packageFile,
      canonical,
      history,
      ["en", "de"],
    ),
  );
});

test("still accepts the bare sequence as an edition name on a ballot", () => {
  const files = ballotFixture(request.sequence);
  assert.doesNotThrow(() =>
    fixIgRegistryEntry(
      files.registry,
      files.requestFile,
      files.packageFile,
      canonical,
      history,
      ["en", "de"],
    ),
  );
});

test("rejects an edition name that is neither the sequence nor its labelled form", () => {
  const files = ballotFixture(`${request.sequence} Snapshot`);
  assert.throws(
    () =>
      fixIgRegistryEntry(
        files.registry,
        files.requestFile,
        files.packageFile,
        canonical,
        history,
        ["en", "de"],
      ),
    /edition\.name/,
  );
});
