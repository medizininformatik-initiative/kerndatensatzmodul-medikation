# mii-exa-medikation-medication-statement-offset - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-statement-offset**

## Beispiel MedicationStatement: mii-exa-medikation-medication-statement-offset

-------

**German**

-------

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2027.0.0-ballot.rc1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**status**: Active

**medication**: L-THYROXIN 125 Henning Tabletten

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://fhir.de/packages/de.ihe-d.terminology/Patient/example)

**effective**: 2020-05-27 17:57:00+0100

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Timing** | **Route** |
| * | L-Thyroxin 125 Mikrogramm täglich eine Tablette oral eine halbe Stunde vor dem Früchstück | 30min , before breakfast, Once per 1 day | Oral use |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-medikation-medication-statement-offset",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2027.0.0-ballot.rc1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/ifa/pzn",
      "code" : "02532793",
      "display" : "L-THYROXIN 125 Henning Tabletten"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2020-05-27T17:57:00+01:00",
  "dosage" : [{
    "text" : "L-Thyroxin 125 Mikrogramm täglich eine Tablette oral eine halbe Stunde vor dem Früchstück",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["ACM"],
        "offset" : 30
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20053000",
        "display" : "Oral use"
      }]
    }
  }]
}

```
