# mii-exa-medikation-medication-dolomo - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-medikation-medication-dolomo**

## Example Medication: mii-exa-medikation-medication-dolomo

-------

**English**

-------

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**code**: dolomo® TN

**form**: Tablet

**amount**: 27 Tablet (Details: UCUM code1 = '1')/1 Package (Details: UCUM code1 = '1')

> **ingredient****item**: [Medication Paracetamol, Kombinationen exkl. Psycholeptika](Medication-mii-exa-medikation-medication-dolomo-tag.md)

> **ingredient****item**: [Medication Paracetamol, Kombinationen exkl. Psycholeptika](Medication-mii-exa-medikation-medication-dolomo-nacht.md)



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-dolomo",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "version" : "02.08.2024",
      "code" : "02758994",
      "display" : "dolomo® TN"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "N02BE51",
      "display" : "Paracetamol, Kombinationen exkl. Psycholeptika"
    }]
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10219000",
      "display" : "Tablet"
    }]
  },
  "amount" : {
    "numerator" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/extension-quantity-translation",
        "valueQuantity" : {
          "value" : 27,
          "unit" : "Tablet",
          "system" : "http://standardterms.edqm.eu",
          "code" : "10219000"
        }
      }],
      "value" : 27,
      "unit" : "Tablet",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    },
    "denominator" : {
      "value" : 1,
      "unit" : "Package",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  "ingredient" : [{
    "itemReference" : {
      "reference" : "Medication/mii-exa-medikation-medication-dolomo-tag"
    }
  },
  {
    "itemReference" : {
      "reference" : "Medication/mii-exa-medikation-medication-dolomo-nacht"
    }
  }]
}

```
