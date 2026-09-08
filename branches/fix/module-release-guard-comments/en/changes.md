# Changelog - MII IG Medikation v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Changelog**

## Changelog

### Release notes

**Version 2027.0.0-ballot.rc1** — 2026-09-02

* `Changed`: the implementation guide was migrated from Simplifier onto the MII KDS module template (IG Publisher). Content and artifact URLs are unchanged; the page structure now follows the module-wide page set, and the guide is bilingual.
* `Changed`: the ATC value set now also includes version 2026 (previously 2018 to 2025).
* `Fixed`: the `raterange` search parameter in the CapabilityStatement pointed at a canonical under the module that never existed as an artifact; it now points at `mii-sp-meta-medication-dosage-raterange` of the Meta module, consistent with `raterange-low` and `raterange-high`.
* `Added`: guidance for researchers on the modelling patterns (ingredient vs medicinal product, nested medication resources, order vs administration).

**Version 2026.0.1** — 2026-02-13

* `Changed`: ASK value set — removed the specific version pin in `ValueSet.compose.include.version` so that it expands automatically against the current code system version on the terminology server.

**Version 2026.0.0** — 2025-12-18

* `Added`: dependency on `de.fhir.medication` added, version [STU1](https://ig.fhir.de/igs/medication/index.html).
* `Added`: `MedicationStatement.dosage` and `MedicationRequest.dosageInstruction` use the [Dosage profile](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) from `de.fhir.medication` for dosage information.
* `Fixed`: dosage information in the example instances conforms to `de.fhir.medication` [STU1](https://ig.fhir.de/igs/medication/index.html).

**Version 2025.0.1** — 2025-11-06

* `Added`: `(MedicationAdministration|MedicationStatement|MedicationRequest).medicationCodeableConcept` carries a reference to UNII (see [PR #106](https://github.com/medizininformatik-initiative/kerndatensatzmodul-medikation/pull/106)).
* `Added`: new value sets and bindings for ATC (`.../ValueSet/mii-vs-medikation-atc`), ASK (`.../ValueSet/mii-vs-medikation-ask`) and UNII (`.../ValueSet/mii-vs-medikation-unii`), which can be expanded with the [MII terminology server](https://www.ontoserver.mii-termserv.de/) and thus allow extended validation.
* `Changed`: example resources follow the best-practice approach for dose and amount/strength information, stating a `Quantity` preferably using UCUM. UCUM annotations in curly braces should be avoided; alternatively, other unit systems can be given via the Quantity Translation extension.

