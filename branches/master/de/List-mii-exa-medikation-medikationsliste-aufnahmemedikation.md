# Aufnahmemedikation - MII IG Medikation v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Aufnahmemedikation**

## Beispiel List: Aufnahmemedikation

-------

**German**

-------

Profile: [MII PR Medikation Medikationsliste](StructureDefinition-mii-pr-medikation-medikationsliste.md) version: 2027.0.0-ballot

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

## Aufnahmemedikation

| | | |
| :--- | :--- | :--- |
| Mode: Snapshot List | Status: Current | Code: Medication List |
| Subject:[Max Mustermann Male, DoB: 1965-03-14 ( https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/sid/patient#12345)](Patient-mii-exa-medikation-patient.md) | | |

* **Items**: [MedicationStatement: status = active; medication[x] = ->Medication ; effective[x] = 2020-01-14 11:37:00+0100](MedicationStatement-mii-exa-medikation-medication-statement.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-medikation-medikationsliste-aufnahmemedikation",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste|2027.0.0-ballot"],
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
    "reference" : "Patient/mii-exa-medikation-patient"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement"
    }
  }]
}

```
