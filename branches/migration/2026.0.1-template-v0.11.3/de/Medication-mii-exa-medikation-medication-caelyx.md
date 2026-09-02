# mii-exa-medikation-medication-caelyx - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-caelyx**

## Beispiel Medication: mii-exa-medikation-medication-caelyx

-------

**German**

-------

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**code**: Caelyx 50 Mg/25 ml Konz.z.Herst.e.Infusi

**status**: Active

**form**: Concentrate for solution for infusion

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | DOXORUBICIN HYDROCHLORIDE | true | 50 mg (Details: UCUM codemg = 'mg')/25 ml (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-caelyx",
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
      "code" : "887150",
      "display" : "Caelyx 50 Mg/25 ml Konz.z.Herst.e.Infusi"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "L01DB01",
      "display" : "Doxorubicin"
    }]
  },
  "status" : "active",
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "11213000",
      "display" : "Concentrate for solution for infusion"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "82F2G7BL4E",
        "display" : "DOXORUBICIN HYDROCHLORIDE"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "25316-40-9"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 50,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 25,
        "unit" : "ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "ml"
      }
    }
  }]
}

```
