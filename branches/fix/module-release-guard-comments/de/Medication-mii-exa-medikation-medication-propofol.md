# mii-exa-medikation-medication-propofol - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-propofol**

## Beispiel Medication: mii-exa-medikation-medication-propofol

-------

**German**

-------

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2027.0.0-ballot.rc1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**code**: Propofol Fresenius MCT 20 mg/ml Emulsion zur Injektion/Infusion, Fertigspritze 1x50ml

**status**: Active

**form**: Emulsion for injection/infusion

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Item[x]** | **IsActive** | **Strength** |
| * | Propofol | true | 20 mg (Details: UCUM codemg = 'mg')/1 ml (Details: UCUM codeml = 'ml') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-propofol",
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
      "code" : "16891099",
      "display" : "Propofol Fresenius MCT 20 mg/ml Emulsion zur Injektion/Infusion, Fertigspritze 1x50ml"
    }]
  },
  "status" : "active",
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "50021000",
      "display" : "Emulsion for injection/infusion"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fhir.de/CodeSystem/ask",
        "code" : "22898",
        "display" : "Propofol"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 20,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "ml"
      }
    }
  }]
}

```
