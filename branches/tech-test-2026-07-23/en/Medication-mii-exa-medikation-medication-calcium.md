# mii-exa-medikation-medication-calcium - v2026.0.1

## Example Medication: mii-exa-medikation-medication-calcium

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html)

**code**: CALCIUM SANDOZ forte Brausetabletten

**form**: Effervescent tablet

> **ingredient**
> **id**ing_1
**MII EX Medikation Wirkstofftyp**: [MII CS Medikation Wirkstofftyp: PIN](CodeSystem-mii-cs-medikation-wirkstofftyp.md#mii-cs-medikation-wirkstofftyp-PIN) (precise ingredient)**item**: CALCIUM LACTATE GLUCONATE**strength**: 2945.15 milligram (Details: UCUM codemg = 'mg')/1 Effervescent tablet (Details: UCUM code1 = '1')

> **ingredient**
> **id**ing_2
**MII EX Medikation Wirkstofftyp**: [MII CS Medikation Wirkstofftyp: PIN](CodeSystem-mii-cs-medikation-wirkstofftyp.md#mii-cs-medikation-wirkstofftyp-PIN) (precise ingredient)**item**: CALCIUM CARBONATE**strength**: 300 milligram (Details: UCUM codemg = 'mg')/1 Effervescent tablet (Details: UCUM code1 = '1')

> **ingredient**
> **id**ing_3
**MII EX Medikation Wirkstofftyp**: [MII CS Medikation Wirkstofftyp: IN](CodeSystem-mii-cs-medikation-wirkstofftyp.md#mii-cs-medikation-wirkstofftyp-IN) (ingredient)
> **MII EX Medikation Wirkstoffrelation**
* ingredientUri: #ing_1

> **MII EX Medikation Wirkstoffrelation**
* ingredientUri: #ing_2

**item**: CALCIUM CATION**strength**: 500.54 milligram (Details: UCUM codemg = 'mg')/1 Effervescent tablet (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-calcium",
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
      "code" : "00169644",
      "display" : "CALCIUM SANDOZ forte Brausetabletten"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2023",
      "code" : "A12AA20",
      "display" : "Calcium (verschiedene Salze in Kombination)"
    },
    {
      "system" : "http://www.whocc.no/atc",
      "version" : "2023",
      "code" : "A12AA20",
      "display" : "calcium (different salts in combination)"
    }]
  },
  "form" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10222000",
      "display" : "Effervescent tablet"
    }]
  },
  "ingredient" : [{
    "id" : "ing_1",
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp",
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp",
        "code" : "PIN"
      }
    }],
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "472LWJ3Y9N",
        "display" : "CALCIUM LACTATE GLUCONATE"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "11116-97-5",
        "display" : "Calcium lactate gluconate"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "422232005",
        "display" : "Calcium lactate gluconate (substance)"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 2945.15,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/extension-quantity-translation",
          "valueQuantity" : {
            "value" : 1,
            "unit" : "Effervescent tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10222000"
          }
        }],
        "value" : 1,
        "unit" : "Effervescent tablet",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  },
  {
    "id" : "ing_2",
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp",
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp",
        "code" : "PIN"
      }
    }],
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "H0G9379FGK",
        "display" : "CALCIUM CARBONATE"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "471-34-1",
        "display" : "Calcium carbonate"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "387307005",
        "display" : "Calcium carbonate (substance)"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 300,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/extension-quantity-translation",
          "valueQuantity" : {
            "value" : 1,
            "unit" : "Effervescent tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10222000"
          }
        }],
        "value" : 1,
        "unit" : "Effervescent tablet",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  },
  {
    "id" : "ing_3",
    "extension" : [{
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp",
      "valueCoding" : {
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp",
        "code" : "IN"
      }
    },
    {
      "extension" : [{
        "url" : "ingredientUri",
        "valueUri" : "#ing_1"
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
    },
    {
      "extension" : [{
        "url" : "ingredientUri",
        "valueUri" : "#ing_2"
      }],
      "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
    }],
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://fdasis.nlm.nih.gov",
        "code" : "2M83C4R6ZB",
        "display" : "CALCIUM CATION"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/CAS",
        "code" : "14127-61-8",
        "display" : "Calcium cation"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "5540006",
        "display" : "Calcium (substance)"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 500.54,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/extension-quantity-translation",
          "valueQuantity" : {
            "value" : 1,
            "unit" : "Effervescent tablet",
            "system" : "http://standardterms.edqm.eu",
            "code" : "10222000"
          }
        }],
        "value" : 1,
        "unit" : "Effervescent tablet",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }
  }]
}

```
