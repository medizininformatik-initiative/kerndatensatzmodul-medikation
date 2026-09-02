# mii-exa-medikation-medication-administration - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-medikation-medication-administration**

## Example MedicationAdministration: mii-exa-medikation-medication-administration

-------

**English**

-------

Profile: [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**medication**: [Medication ](Medication-mii-exa-medikation-medication-rezeptur.md)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://fhir.de/packages/de.ihe-d.terminology/Patient/example)

**effective**: 2020-01-06 10:20:00+0000 --> 2020-01-06 11:20:00+0000

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Route** | **Dose** | **Rate[x]** |
| * | Intravenous use | 85 mg (Details: UCUM codemg = 'mg') | 250 milliliter (Details: UCUM codemL = 'mL')/1 hour (Details: UCUM codeh = 'h') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "mii-exa-medikation-medication-administration",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-medikation-medication-rezeptur"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2020-01-06T10:20:00.000+00:00",
    "end" : "2020-01-06T11:20:00.000+00:00"
  },
  "dosage" : {
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "dose" : {
      "value" : 85,
      "unit" : "mg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    },
    "rateRatio" : {
      "numerator" : {
        "value" : 250,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "hour",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    }
  }
}

```
