# mii-exa-medikation-medication-statement-concor - MII IG Medikation v2027.0.0-ballot.rc3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-statement-concor**

## Beispiel MedicationStatement: mii-exa-medikation-medication-statement-concor

-------

**German**

-------

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2027.0.0-ballot.rc3

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**status**: Intended

**medication**: Concor 2,5mg

**subject**: [Max Mustermann Male, DoB: 1965-03-14 ( http://example.org/fhir/sid/patienten#12345)](Patient-mii-exa-medikation-patient.md)

**effective**: 2022-02-02 12:22:00+0000 --> (ongoing)

> **dosage****timing**: Morning, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablette (Details: UCUM code1 = '1') |


> **dosage****timing**: Noon, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 0 Tablette (Details: UCUM code1 = '1') |


> **dosage****timing**: Evening, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 0 Tablette (Details: UCUM code1 = '1') |


> **dosage****timing**: Night, Once per 1 day

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
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2027.0.0-ballot.rc3"],
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
    "reference" : "Patient/mii-exa-medikation-patient"
  },
  "effectivePeriod" : {
    "start" : "2022-02-02T12:22:00+00:00"
  },
  "dosage" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN"]
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
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["NOON"]
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
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["EVE"]
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
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["NIGHT"]
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
