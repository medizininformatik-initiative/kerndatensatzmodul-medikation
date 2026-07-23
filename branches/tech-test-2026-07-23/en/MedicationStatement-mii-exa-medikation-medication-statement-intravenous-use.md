# mii-exa-medikation-medication-statement-intravenous-use - v2026.0.1

## Example MedicationStatement: mii-exa-medikation-medication-statement-intravenous-use

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html)

**partOf**: [Procedure/ExampleProcedure](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Procedure/ExampleProcedure)

**status**: Completed

**medication**: [Medication](Medication-mii-exa-medikation-medication-thiotepa.md)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Patient/example)

**effective**: 2018-05-26

> **dosage****text**: Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa**route**: Intravenous use

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
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "partOf" : [{
    "reference" : "Procedure/ExampleProcedure"
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-medikation-medication-thiotepa"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2018-05-26",
  "dosage" : [{
    "text" : "Parenterale Applikation von 2.400 mg bis unter 2.600 mg Thiotepa",
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
