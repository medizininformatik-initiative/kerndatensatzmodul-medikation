# mii-exa-medikation-procedure-thiotepa - v2026.0.1

## Example Procedure: mii-exa-medikation-procedure-thiotepa

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**category**: Procedure related to management of drug administration (procedure)

**code**: Applikation von Medikamenten, Liste 7: Thiotepa, parenteral: 2.400 mg bis unter 2.600 mg

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Patient/example)

**performed**: 2018-05-26



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-medikation-procedure-thiotepa",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "182832007",
      "display" : "Procedure related to management of drug administration (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2020",
      "code" : "6-007.nm",
      "display" : "Applikation von Medikamenten, Liste 7: Thiotepa, parenteral: 2.400 mg bis unter 2.600 mg"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedDateTime" : "2018-05-26"
}

```
