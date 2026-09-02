# mii-exa-medikation-medication-rezeptur - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-medikation-medication-rezeptur**

## Example Medication: mii-exa-medikation-medication-rezeptur

-------

**English**

-------

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**code**: Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung

**status**: Active

**form**: Solution for infusion

> **ingredient****item**: Doxorubicin**isActive**: true**strength**: 85 mg (Details: UCUM codemg = 'mg')/250 milliliter (Details: UCUM codemL = 'mL')

> **ingredient****item**: [Medication Glucose 5% B.braun Ecoflac Plus](Medication-mii-exa-medikation-medication-glucoseloesung.md)**isActive**: true



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-rezeptur",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "code" : {
    "text" : "Infusion bestehend aus 85mg Doxorubicin aufgeloest zur Verabreichung in 250ml 5-%iger (50 mg/ml) Glucose-Infusionsloesung"
  },
  "status" : "active",
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "11210000",
      "display" : "Solution for infusion"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/bfarm/atc",
        "version" : "2023",
        "code" : "L01DB01",
        "display" : "Doxorubicin"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 85,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 250,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  },
  {
    "itemReference" : {
      "reference" : "Medication/mii-exa-medikation-medication-glucoseloesung"
    },
    "isActive" : true
  }]
}

```
