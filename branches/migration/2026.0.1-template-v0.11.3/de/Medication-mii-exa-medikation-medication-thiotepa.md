# mii-exa-medikation-medication-thiotepa - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-thiotepa**

## Beispiel Medication: mii-exa-medikation-medication-thiotepa

-------

**German**

-------

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2027.0.0-ballot.rc1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Extension** | **Item[x]** |
| * |  | THIOTEPA |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-thiotepa",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication|2027.0.0-ballot.rc1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "ingredient" : [{
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp",
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp",
        "code" : "IN",
        "display" : "ingredient"
      }
    }],
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "905Z5W3GKH",
        "display" : "THIOTEPA"
      },
      {
        "system" : "http://fhir.de/CodeSystem/ask",
        "code" : "07962",
        "display" : "Thiotepa"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "52-24-4"
      }]
    }
  }]
}

```
