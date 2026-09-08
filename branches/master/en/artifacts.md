# Artifacts Summary - MII IG Medikation v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS Medikation CapabilityStatement  ](CapabilityStatement-mii-cps-medikation-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Medikation der Medizininformatik Initiative zu implementieren. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ MII LM Medikation  ](StructureDefinition-mii-lm-medikation.md) | MII LogicalModel Modul Medikation |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII PR Medikation Medication  ](StructureDefinition-mii-pr-medikation-medication.md) | Dieses Profil beschreibt die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Die Angabe mindestens eines Wirkstoffes wird verlangt. |
| [ MII PR Medikation MedicationAdministration  ](StructureDefinition-mii-pr-medikation-medication-administration.md) | Dieses Profil beschreibt Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben etc. |
| [ MII PR Medikation MedicationRequest  ](StructureDefinition-mii-pr-medikation-medication-request.md) | Dieses Profil beschreibt die Verordnung einer Medikation. |
| [ MII PR Medikation MedicationStatement  ](StructureDefinition-mii-pr-medikation-medication-statement.md) | Das MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt. |
| [ MII PR Medikation Medikationsliste  ](StructureDefinition-mii-pr-medikation-medikationsliste.md) | Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII EX Medikation Wirkstoffrelation  ](StructureDefinition-mii-ex-medikation-wirkstoffrelation.md) | Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff. |
| [ MII EX Medikation Wirkstofftyp  ](StructureDefinition-mii-ex-medikation-wirkstofftyp.md) | Extension zur Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII VS Medikation ASK  ](ValueSet-mii-vs-medikation-ask.md) | Enthaelt alle ASK-Codes |
| [ MII VS Medikation ATC  ](ValueSet-mii-vs-medikation-atc.md) | Enthaelt ATC-Codes der Versionen 2018 bis 2026 |
| [ MII VS Medikation Fallkontext  ](ValueSet-mii-vs-medikation-fallkontext.md) | Codes zur Differenzierung des Kontextes in dem eine Medikationsliste verwaltet wird. |
| [ MII VS Medikation PZN Sales Status Codes  ](ValueSet-mii-vs-medikation-pzn-sales-status-code.md) | Alle Verkaufsstatus-Codes des CodeSystems MII CS Medikation PZN Sales Status Codes. |
| [ MII VS Medikation UNII  ](ValueSet-mii-vs-medikation-unii.md) | Enthaelt Unique Ingredient Identifier (UNII-Codes) |
| [ MII VS Medikation Wirkstofftypen  ](ValueSet-mii-vs-medikation-wirkstofftyp.md) | Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ MII CS Medikation PZN Sales Status Codes  ](CodeSystem-mii-cs-medikation-pzn-sales-status-code.md) | This code system contains the sales status codes (catalog #116) for medications in the http://fhir.de/CodeSystem/ifa/pzn CodeSystem. This representation was generated from the MMI Pharmindex R3 raw data files. It is distributed under license for the purposes of integration into the software systems of the Medical Informatics Initiative and the Network University Medicine. |
| [ MII CS Medikation Wirkstofftyp  ](CodeSystem-mii-cs-medikation-wirkstofftyp.md) | Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [ Aktuelle medikamentöse Therapie  ](List-mii-exa-medikation-medikationsliste-aktuelle-therapie.md) |
| [ Aufnahmemedikation  ](List-mii-exa-medikation-list-admission.md) |
| [ Aufnahmemedikation  ](List-mii-exa-medikation-medikationsliste-aufnahmemedikation.md) |
| [ mii-exa-medikation-medication-administration  ](MedicationAdministration-mii-exa-medikation-medication-administration.md) |
| [ mii-exa-medikation-medication-ass-100  ](Medication-mii-exa-medikation-medication-ass-100.md) |
| [ mii-exa-medikation-medication-caelyx  ](Medication-mii-exa-medikation-medication-caelyx.md) |
| [ mii-exa-medikation-medication-calcium  ](Medication-mii-exa-medikation-medication-calcium.md) |
| [ mii-exa-medikation-medication-dolomo  ](Medication-mii-exa-medikation-medication-dolomo.md) |
| [ mii-exa-medikation-medication-dolomo-nacht  ](Medication-mii-exa-medikation-medication-dolomo-nacht.md) |
| [ mii-exa-medikation-medication-dolomo-tag  ](Medication-mii-exa-medikation-medication-dolomo-tag.md) |
| [ mii-exa-medikation-medication-glucoseloesung  ](Medication-mii-exa-medikation-medication-glucoseloesung.md) |
| [ mii-exa-medikation-medication-propofol  ](Medication-mii-exa-medikation-medication-propofol.md) |
| [ mii-exa-medikation-medication-request-caelyx  ](MedicationRequest-mii-exa-medikation-medication-request-caelyx.md) |
| [ mii-exa-medikation-medication-rezeptur  ](Medication-mii-exa-medikation-medication-rezeptur.md) |
| [ mii-exa-medikation-medication-statement  ](MedicationStatement-mii-exa-medikation-medication-statement.md) |
| [ mii-exa-medikation-medication-statement-caelyx  ](MedicationStatement-mii-exa-medikation-medication-statement-caelyx.md) |
| [ mii-exa-medikation-medication-statement-concor  ](MedicationStatement-mii-exa-medikation-medication-statement-concor.md) |
| [ mii-exa-medikation-medication-statement-hct  ](MedicationStatement-mii-exa-medikation-medication-statement-hct.md) |
| [ mii-exa-medikation-medication-statement-ibuprofen  ](MedicationStatement-mii-exa-medikation-medication-statement-ibuprofen.md) |
| [ mii-exa-medikation-medication-statement-intravenous-use  ](MedicationStatement-mii-exa-medikation-medication-statement-intravenous-use.md) |
| [ mii-exa-medikation-medication-statement-offset  ](MedicationStatement-mii-exa-medikation-medication-statement-offset.md) |
| [ mii-exa-medikation-medication-statement-periodisches-intervall  ](MedicationStatement-mii-exa-medikation-medication-statement-periodisches-intervall.md) |
| [ mii-exa-medikation-medication-statement-zopiclon  ](MedicationStatement-mii-exa-medikation-medication-statement-zopiclon.md) |
| [ mii-exa-medikation-medication-thiotepa  ](Medication-mii-exa-medikation-medication-thiotepa.md) |
| [ mii-exa-medikation-procedure-thiotepa  ](Procedure-mii-exa-medikation-procedure-thiotepa.md) |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [ mii-param-medikation-manifest  ](Parameters-mii-param-medikation-manifest.md) |

