# mii-exa-medikation-medication-dolomo-nacht - v2026.0.1

## Example Medication: mii-exa-medikation-medication-dolomo-nacht

Profile: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html)

**code**: Paracetamol, Kombinationen exkl. Psycholeptika

**form**: Tablet

**amount**: 9 Tablet (Details: UCUM code1 = '1')/1 1 (Details: UCUM code1 = '1')

> **ingredient****item**: Aspirin (substance)**isActive**: true**strength**: 250 mg (Details: UCUM codemg = 'mg')/1 Tablet (Details: UCUM code1 = '1')

> **ingredient****item**: Paracetamol (substance)**isActive**: true**strength**: 250 mg (Details: UCUM codemg = 'mg')/1 Tablet (Details: UCUM code1 = '1')

> **ingredient****item**: Codeine phosphate hemihydrate (substance)**isActive**: true**strength**: 30 mg (Details: UCUM codemg = 'mg')/1 Tablet (Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "mii-exa-medikation-medication-dolomo-nacht",
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
          "value" : 9,
          "unit" : "Tablet",
          "system" : "http://standardterms.edqm.eu",
          "code" : "10219000"
        }
      }],
      "value" : 9,
      "unit" : "Tablet",
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    },
    "denominator" : {
      "value" : 1,
      "system" : "http://unitsofmeasure.org",
      "code" : "1"
    }
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "387458008",
        "display" : "Aspirin (substance)"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 250,
        "unit" : "mg",
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
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "387517004",
        "display" : "Paracetamol (substance)"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 250,
        "unit" : "mg",
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
  },
  {
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "725666006",
        "display" : "Codeine phosphate hemihydrate (substance)"
      }]
    },
    "isActive" : true,
    "strength" : {
      "numerator" : {
        "value" : 30,
        "unit" : "mg",
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
