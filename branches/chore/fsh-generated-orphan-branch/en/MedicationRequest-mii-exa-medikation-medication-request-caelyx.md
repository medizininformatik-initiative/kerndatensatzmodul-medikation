# mii-exa-medikation-medication-request-caelyx - MII IG Medikation v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-medikation-medication-request-caelyx**

## Example MedicationRequest: mii-exa-medikation-medication-request-caelyx

-------

**English**

-------

Profile: [MII PR Medikation MedicationRequest](StructureDefinition-mii-pr-medikation-medication-request.md) version: 2027.0.0-ballot

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**R5: Full representation of the dosage instructions (new)**: 

Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion

**status**: Active

**intent**: Order

**medication**: [Medication Caelyx pegylated liposomal 2 mg/ml Konzentrat zur Herstellung einer Infusionslösung 1x25ml DSF N1](Medication-mii-exa-medikation-medication-caelyx.md)

**subject**: [Max Mustermann Male, DoB: 1965-03-14 ( https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/sid/patient#12345)](Patient-mii-exa-medikation-patient.md)

**authoredOn**: 2021-12-21 11:41:00+0100

> **dosageInstruction****timing**: Once per 4 weeks**route**: Intravenous use

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 50 mg/m2 BSA (Details: UCUM codemg/m2 = 'mg/m2') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-medikation-medication-request-caelyx",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest|2027.0.0-ballot"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
  }],
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-medikation-medication-caelyx"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-medikation-patient"
  },
  "authoredOn" : "2021-12-21T11:41:00+01:00",
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 4,
        "periodUnit" : "wk"
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
      "doseQuantity" : {
        "value" : 50,
        "unit" : "mg/m2 BSA",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/m2"
      }
    }]
  }]
}

```
