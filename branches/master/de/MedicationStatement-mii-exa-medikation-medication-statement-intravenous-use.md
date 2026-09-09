# mii-exa-medikation-medication-statement-intravenous-use - MII IG Medikation v2027.0.0-ballot.rc5

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-medikation-medication-statement-intravenous-use**

## Beispiel MedicationStatement: mii-exa-medikation-medication-statement-intravenous-use

-------

**German**

-------

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2027.0.0-ballot.rc5

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure Applikation von Medikamenten, Liste 7: Thiotepa, parenteral: 2.400 mg bis unter 2.600 mg](Procedure-mii-exa-medikation-procedure-thiotepa.md)

**status**: Completed

**medication**: [Medication](Medication-mii-exa-medikation-medication-thiotepa.md)

**subject**: [Max Mustermann Male, DoB: 1965-03-14 ( https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/sid/patient#12345)](Patient-mii-exa-medikation-patient.md)

**effective**: 2018-05-26

> **dosage****timing**: Count 1 times, Once**route**: Intravenous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 2400-2600 milligram |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-medikation-medication-statement-intravenous-use",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2027.0.0-ballot.rc5"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Procedure/mii-exa-medikation-procedure-thiotepa"
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-medikation-medication-thiotepa"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-medikation-patient"
  },
  "effectiveDateTime" : "2018-05-26",
  "dosage" : [{
    "timing" : {
      "repeat" : {
        "count" : 1
      }
    },
    "route" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "20045000",
        "display" : "Intravenous use"
      }]
    },
    "doseAndRate" : [{
      "doseRange" : {
        "low" : {
          "value" : 2400,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "high" : {
          "value" : 2600,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    }]
  }]
}

```
