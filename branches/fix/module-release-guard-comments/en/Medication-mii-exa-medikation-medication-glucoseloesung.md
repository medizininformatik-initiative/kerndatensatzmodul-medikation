# mii-exa-medikation-medication-glucoseloesung - MII IG Medikation v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-medikation-medication-glucoseloesung**

## Example Medication: mii-exa-medikation-medication-glucoseloesung

-------

**English**

-------

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2027.0.0-ballot.rc1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**code**: Glucose 5% B.Braun Ecoflac Plus 10x250ml N2

**status**: Active

**form**: Solution for infusion

> **ingredient****item**: ANHYDROUS DEXTROSE**isActive**: true**strength**: 50 g (Details: UCUM codeg = 'g')/1000 ml (Details: UCUM codeml = 'ml')

> **ingredient****item**: WATER**isActive**: false



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-glucoseloesung",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2027.0.0-ballot.rc1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "03705422",
      "display" : "Glucose 5% B.Braun Ecoflac Plus 10x250ml N2"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "V06DC01",
      "display" : "Glucose"
    },
    {
      "system" : "http://www.whocc.no/atc",
      "version" : "2023",
      "code" : "V06DC01",
      "display" : "glucose"
    }]
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
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "50-99-7"
      },
      {
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "5SL0G7R0OK",
        "display" : "ANHYDROUS DEXTROSE"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "67079006",
        "display" : "Glucose (substance)"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 50,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      },
      "denominator" : {
        "value" : 1000,
        "unit" : "ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "ml"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "7732-18-5"
      },
      {
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "059QF0KO0R",
        "display" : "WATER"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "11713004",
        "display" : "Water (substance)"
      }]
    },
    "isActive" : false
  }]
}

```
