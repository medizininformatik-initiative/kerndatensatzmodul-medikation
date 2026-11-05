# Ballot Reconciliation 2027.0.0-ballot - MII IG Medikation v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Ballot Reconciliation 2027.0.0-ballot**

## Ballot Reconciliation 2027.0.0-ballot

This page is a **working document** for the reconciliation of the ballot comments on version `2027.0.0-ballot` of the MII Kerndatensatz Modul Medikation. It lists the open tickets from the HL7 Germany ballot ([Jira query](https://hl7germany.atlassian.net/issues/?jql=project%20%3D%20HDB%20AND%20created%20%3E%3D%20-200d%20AND%20statusCategory%20%21%3D%20Done%20AND%20%22Project%5BDropdown%5D%22%20in%20%28%22MII%20-%20Modul%20Medikation%22%29%20ORDER%20BY%20created%20DESC)), grouped by category, with a **proposed** resolution for each. It is temporary and will be removed before the `2027.0.0` release.

#### Legend

| | |
| :--- | :--- |
| **Proposed: accept** | Proposal to implement the change for`2027.0.0`; to be ratified in the meeting. |
| **Proposed: accept (docs)** | Proposal to change documentation or guidance only, no artefact changes; to be ratified. |
| **Discuss** | No proposed resolution yet; to be discussed in the meeting. |
| **Planned reply** | Question; a reply in Jira is planned (draft given), possibly with a documentation clarification. |

**Breaking** = **yes** if implementations conforming to the previous release (`2026.0.x`) no longer conform after the change.

-------

### A. Proposed: accept – profile changes

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-980](https://hl7germany.atlassian.net/browse/HDB-980) | Medication ingredient – Vorschlag zur Kardinalität | Relax`Medication.ingredient`from`1..*`to`0..*`and add an invariant`code.exists() or ingredient.exists()`(analogous to ISiK`isik-med-1`). Keep "at least the active ingredient SHOULD be given" in the narrative. This allows finished medicinal products coded only by PZN/ATC, as delivered by ISiK 6.0.0 systems. Consumers can no longer rely on`ingredient`being present. | Proposed: accept | no (relaxation) |
| [HDB-1038](https://hl7germany.atlassian.net/browse/HDB-1038) | Medication.ingredient von 1..* auf 0..* aufweichen | Resolved together with HDB-980. Removes the current workaround of filling`ingredient`with a`data-absent-reason`extension when only the ATC code is known. | Proposed: accept | no |
| [HDB-984](https://hl7germany.atlassian.net/browse/HDB-984) | MedicationRequest doNotPerform nicht verbieten | Change`MedicationRequest.doNotPerform`from`0..0`to`0..1`with the invariant`doNotPerform.empty() or doNotPerform = false`, so ISiK requests carrying`doNotPerform = false`conform, while negative orders stay out of scope. | Proposed: accept | no (relaxation) |
| [HDB-982](https://hl7germany.atlassian.net/browse/HDB-982) | MII PR Medikation Medication – status nicht definiert | Flag`Medication.status`as Must Support (aligned with ISiK) and add guidance:`status`is a modifier element;`inactive`and`entered-in-error`change the meaning of the resource and must be evaluated by receivers. | Proposed: accept | no (Must Support only) |
| [HDB-967](https://hl7germany.atlassian.net/browse/HDB-967) | MedicationAdministration.dosage.dose ist Pflichtfeld ohne Wertevorrat | Bind`MedicationAdministration.dosage.dose`(**required**) to`http://ig.fhir.de/igs/medication/ValueSet/DosageDoseQuantityDE`, the same binding`DosageDE`(`de.fhir.medication`1.0.7) applies to`doseAndRate.dose[x]:doseQuantity`in MedicationRequest and MedicationStatement.`DosageDE`cannot be used as a type profile there, because`MedicationAdministration.dosage`is a BackboneElement in R4.`dosage.dose.system`/`.code`are already`1..1`. Inherited by`mii-pr-bildgebung-kontrastmittelgabe`and`mii-pr-lungenfunktion-dosis-gabe`. Moving to Medikation-DE 2.x is a separate, post-ballot decision. | Proposed: accept | **yes**(units outside the ValueSet become invalid) |

### B. Proposed: accept – terminology

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-981](https://hl7germany.atlassian.net/browse/HDB-981) | ValueSet mii-vs-medikation-atc – fehlendes 2027er Release | Add`include codes from system http://fhir.de/CodeSystem/bfarm/atc\|2027`to`mii-vs-medikation-atc`once BfArM publishes ATC-DE 2027, and update description and copyright ("2018 bis 2027"). A version-independent include was considered: it would accept every future version without review, which conflicts with`code.coding:atcClassDe.version`being`1..1`, and is therefore not proposed. | Proposed: accept | no |
| [HDB-983](https://hl7germany.atlassian.net/browse/HDB-983) | Extension wirkstofftyp, CodeSystem wirkstofftyp aus deutschen Basisprofilen nutzen | Confirmed:`http://fhir.de/StructureDefinition/WirkstofftypEX`(`de.basisprofil.r4`1.6.0, already a dependency) has the same context (`Medication.ingredient`) and its CodeSystem`http://fhir.de/CodeSystem/WirkstofftypCS`has the same codes (`IN`,`PIN`,`MIN`) as the MII artefacts. Proposal: add the Basisprofil extension as a Must Support slice on`Medication.ingredient.extension`, keep the MII extension for a transition period and set the MII extension, ValueSet and CodeSystem to`retired`in a later release; update examples. | Proposed: accept | no with a transition period (both URLs allowed);**yes**if the MII extension is removed |

### C. To be discussed

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-985](https://hl7germany.atlassian.net/browse/HDB-985) | MedicationAdministration effective[x] | ISiK`ISiKMedikationsVerabreichung`only allows precision to the second for`effective[x]`and refers date-only administrations to MedicationStatement. The MII profile currently allows any precision. Does MII share this distinction? MII data often comes from retrospective DIZ sources where only the date may be known; a hard invariant would make such data invalid. Options: (a) adopt the ISiK rule as an invariant, (b) adopt it as a SHOULD in the narrative only, (c) keep the current rule and document the deviation from ISiK. | Discuss | (a)**yes**· (b), (c) no |

### D. Proposed: accept – documentation only

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-979](https://hl7germany.atlassian.net/browse/HDB-979) | Hinweis zur Pausierung einer Medikation aus ISiK übernehmen | Adopt the ISiK best-practice note on pausing a medication ([ISiKMedikationsInformation](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsInformation.html)): represent a pause with several MedicationStatement (resp. MedicationAdministration) resources instead of overwriting an existing one, so`status`always reflects the current state and the history is kept. Add the note to the intro notes of the MedicationStatement and MedicationAdministration profiles. | Proposed: accept (docs) | no |

### E. Planned reply

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-986](https://hl7germany.atlassian.net/browse/HDB-986) | Frage zur Verschreibung von Kombipackungen (Beschreibung auf der Startseite) | Draft (to be confirmed): MedicationRequest, MedicationStatement and MedicationAdministration reference the "upper" combination-package`Medication`when the package as a whole is prescribed or documented. If the component actually taken or administered is known, the resource references the corresponding sub-`Medication`directly (it is a complete`Medication`instance, see "Combination packages" on the home page). Add a sentence on this to the home page. | Planned reply | no |

