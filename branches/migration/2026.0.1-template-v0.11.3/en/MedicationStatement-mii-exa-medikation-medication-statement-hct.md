# mii-exa-medikation-medication-statement-hct - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-medikation-medication-statement-hct**

## Example MedicationStatement: mii-exa-medikation-medication-statement-hct

-------

**English**

-------

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**R5: Full representation of the dosage instructions (new)**: 

1-0-0-0 Tablette HCT 12,5mg oral

**status**: Intended

**medication**: HCT 12,5mg

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.ihe-d.terminology@3.0.1&canonical=http://fhir.de/packages/de.ihe-d.terminology/Patient/example)

**effective**: 2022-02-02 12:22:00+0000 --> (ongoing)

> **dosage****timing**: Morning, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 Tablet (Details: standardterms.edqm.eu code15054000 = 'Tablet') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-medikation-medication-statement-hct",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.renderedDosageInstruction",
    "valueMarkdown" : "1-0-0-0 Tablette HCT 12,5mg oral"
  }],
  "status" : "intended",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2022",
      "code" : "C03AA03"
    }],
    "text" : "HCT 12,5mg"
  },
  "subject" : {
    "reference" : "Patient/example"
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
        "unit" : "Tablet",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15054000"
      }
    }]
  }]
}

```
