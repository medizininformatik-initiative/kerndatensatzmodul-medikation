# Aktuelle medikamentöse Therapie - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Aktuelle medikamentöse Therapie**

## Beispiel List: Aktuelle medikamentöse Therapie

-------

**German**

-------

Profile: [MII PR Medikation Medikationsliste](StructureDefinition-mii-pr-medikation-medikationsliste.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

## Aktuelle medikamentöse Therapie

| | | |
| :--- | :--- | :--- |
| Mode: Working List | Status: Current | Code: Medication List |
| Subject:[Patient/example](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://fhir.de/packages/de.ihe-d.terminology/Patient/example) | | |

* **Items**: [MedicationStatement/example](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://fhir.de/packages/de.ihe-d.terminology/MedicationStatement/example)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-medikation-medikationsliste-aktuelle-therapie",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "mode" : "working",
  "title" : "Aktuelle medikamentöse Therapie",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
      "code" : "medications"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E200"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/example"
    }
  }]
}

```
