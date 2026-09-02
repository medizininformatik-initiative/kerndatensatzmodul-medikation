# mii-exa-medikation-medication-statement-ibuprofen - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-statement-ibuprofen**

## Beispiel MedicationStatement: mii-exa-medikation-medication-statement-ibuprofen

-------

**German**

-------

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2027.0.0-ballot.rc1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**status**: Intended

**medication**: Ibuprofen 400mg

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://fhir.de/packages/de.ihe-d.terminology/Patient/example)

**effective**: 2022-02-02 12:22:00+0000 --> (ongoing)

> **dosage****text**: Ibuprofen 400mg Tabl. 3x1 bei Bedarf (Kopfschmerzen)**timing**: 3 per 1 day**asNeeded**: true

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablette (Details: UCUM code1 = '1') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-medikation-medication-statement-ibuprofen",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2027.0.0-ballot.rc1"],
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
      "code" : "M01AE01"
    }],
    "text" : "Ibuprofen 400mg"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectivePeriod" : {
    "start" : "2022-02-02T12:22:00+00:00"
  },
  "dosage" : [{
    "text" : "Ibuprofen 400mg Tabl. 3x1 bei Bedarf (Kopfschmerzen)",
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2022-02-02T12:22:00+00:00"
        },
        "frequency" : 3,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "asNeededBoolean" : true,
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Tablette",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    }]
  }]
}

```
