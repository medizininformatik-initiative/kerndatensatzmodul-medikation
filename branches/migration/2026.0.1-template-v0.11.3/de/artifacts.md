# Artefaktübersicht - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

 Für die aktuelle Seite ist keine Übersetzung verfügbar, daher wurde sie in der Standardsprache dargestellt. 

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Medikation CapabilityStatement  ](CapabilityStatement-mii-cps-medikation-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Medikation der Medizininformatik Initiative zu implementieren. |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII LM Medikation  ](StructureDefinition-mii-lm-medikation.md) | MII LogicalModel Modul Medikation |

### Strukturen: Ressourcenprofile 

Diese definieren Einschränkungen für FHIR-Ressourcen für Systeme, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII PR Medikation Medication  ](StructureDefinition-mii-pr-medikation-medication.md) | Dieses Profil beschreibt die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Die Angabe mindestens eines Wirkstoffes wird verlangt. |
| [ MII PR Medikation MedicationAdministration  ](StructureDefinition-mii-pr-medikation-medication-administration.md) | Dieses Profil beschreibt Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben etc. |
| [ MII PR Medikation MedicationRequest  ](StructureDefinition-mii-pr-medikation-medication-request.md) | Dieses Profil beschreibt die Verordnung einer Medikation. |
| [ MII PR Medikation MedicationStatement  ](StructureDefinition-mii-pr-medikation-medication-statement.md) | Das MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt. |
| [ MII PR Medikation Medikationsliste  ](StructureDefinition-mii-pr-medikation-medikationsliste.md) | Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation. |

### Strukturen: Extension-Definitionen 

Diese definieren Einschränkungen für FHIR-Datentypen für Systeme, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII EX Medikation Wirkstoffrelation  ](StructureDefinition-mii-ex-medikation-wirkstoffrelation.md) | Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff. |
| [ MII EX Medikation Wirkstofftyp  ](StructureDefinition-mii-ex-medikation-wirkstofftyp.md) | Extension zur Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff. |

### Terminologie: ValueSets 

Diese definieren Wertemengen, die von Systemen verwendet werden, die mit dem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII VS Medikation ASK  ](ValueSet-mii-vs-medikation-ask.md) | Enthaelt alle ASK-Codes |
| [ MII VS Medikation ATC  ](ValueSet-mii-vs-medikation-atc.md) | Enthaelt ATC-Codes der Versionen 2018 bis 2024 |
| [ MII VS Medikation Fallkontext  ](ValueSet-mii-vs-medikation-fallkontext.md) | Codes zur Differenzierung des Kontextes in dem eine Medikationsliste verwaltet wird. |
| [ MII VS Medikation UNII  ](ValueSet-mii-vs-medikation-unii.md) | Enthaelt Unique Ingredient Identifier (UNII-Codes) |
| [ MII VS Medikation Wirkstofftypen  ](ValueSet-mii-vs-medikation-wirkstofftyp.md) | Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe. |

### Terminologie: CodeSysteme 

Diese definieren neue CodeSysteme, die von Systemen verwendet werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ MII CS Medikation Wirkstofftyp  ](CodeSystem-mii-cs-medikation-wirkstofftyp.md) | Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe. |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

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

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-medikation-manifest  ](Parameters-mii-param-medikation-manifest.md) |

