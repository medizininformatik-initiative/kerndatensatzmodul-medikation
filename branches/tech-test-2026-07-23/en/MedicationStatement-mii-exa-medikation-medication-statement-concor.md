# mii-exa-medikation-medication-statement-concor - v2026.0.1

## Example MedicationStatement: mii-exa-medikation-medication-statement-concor

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html)

**status**: Intended

**medication**: Concor 2,5mg

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Patient/example)

**effective**: 2022-02-02 12:22:00+0000 --> (ongoing)

> **dosage****text**: Concor 2,5mg Tabl. 1-0-0-0**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablette (Details: UCUM code1 = '1') |


> **dosage****text**: Concor 2,5mg Tabl. 1-0-0-0**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 0 Tablette (Details: UCUM code1 = '1') |


> **dosage****text**: Concor 2,5mg Tabl. 1-0-0-0**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 0 Tablette (Details: UCUM code1 = '1') |


> **dosage****text**: Concor 2,5mg Tabl. 1-0-0-0**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 0 Tablette (Details: UCUM code1 = '1') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-medikation-medication-statement-concor",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "intended",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2022",
      "code" : "C07AB07"
    }],
    "text" : "Concor 2,5mg"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2022-02-02T12:22:00+00:00"
  },
  "dosage" : [{
    "text" : "Concor 2,5mg Tabl. 1-0-0-0",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "timeOfDay" : ["08:00:00"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Tablette",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  },
  {
    "text" : "Concor 2,5mg Tabl. 1-0-0-0",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "timeOfDay" : ["12:00:00"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 0,
        "unit" : "Tablette",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  },
  {
    "text" : "Concor 2,5mg Tabl. 1-0-0-0",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "timeOfDay" : ["18:00:00"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 0,
        "unit" : "Tablette",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  },
  {
    "text" : "Concor 2,5mg Tabl. 1-0-0-0",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "timeOfDay" : ["22:00:00"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 0,
        "unit" : "Tablette",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  }]
}

```
