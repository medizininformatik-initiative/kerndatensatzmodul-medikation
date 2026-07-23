# Aufnahmemedikation - v2026.0.1

## Example List: Aufnahmemedikation

Profile: [MII PR Medikation Medikationsliste](StructureDefinition-mii-pr-medikation-medikationsliste.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html)

## Aufnahmemedikation

| | | |
| :--- | :--- | :--- |
| Mode: Snapshot List | Status: Current | Code: Medication List |
| Subject:[Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Patient/example)Encounter:[Encounter/ExampleEinrichtungskontakt](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Encounter/ExampleEinrichtungskontakt) | | |

* **Items**: [MedicationStatement: extension = 1-0-0-0 Tablette HCT 12,5mg oral; status = intended; medication[x] = Hydrochlorothiazid; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-hct.md)
* **Items**: [MedicationStatement: status = intended; medication[x] = Bisoprolol; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-concor.md)
* **Items**: [MedicationStatement: status = intended; medication[x] = Ibuprofen; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-ibuprofen.md)
* **Items**: [MedicationStatement: status = intended; medication[x] = Zopiclon; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-zopiclon.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-medikation-list-admission",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "mode" : "snapshot",
  "title" : "Aufnahmemedikation",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
      "code" : "medications"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E210"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleEinrichtungskontakt"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-hct"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-concor"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-ibuprofen"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-zopiclon"
    }
  }]
}

```
