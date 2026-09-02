# mii-exa-medikation-medication-ass-100 - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-ass-100**

## Beispiel Medication: mii-exa-medikation-medication-ass-100

-------

**German**

-------

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2027.0.0-ballot.rc1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**code**: ASS 100 - 1 A Pharma® TAH 100 Tbl. N3

**form**: Tablet

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Aspirin (substance) | 100 milligram (Details: UCUM codemg = 'mg')/1 Tablet (Details: UCUM code1 = '1') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-ass-100",
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
      "code" : "06312077",
      "display" : "ASS 100 - 1 A Pharma® TAH 100 Tbl. N3"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "B01AC06",
      "display" : "Acetylsalicylsäure"
    }]
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10219000",
      "display" : "Tablet"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "387458008",
        "display" : "Aspirin (substance)"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 100,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/extension-quantity-translation",
          "valueQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10219000"
          }
        }],
        "value" : 1,
        "unit" : "Tablet",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  }]
}

```
