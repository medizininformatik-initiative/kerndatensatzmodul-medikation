# mii-exa-medikation-medication-statement-caelyx - v2026.0.1

## Example MedicationStatement: mii-exa-medikation-medication-statement-caelyx

Profile: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) version: 2026.0.1

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html)

**status**: Active

**medication**: [Medication Caelyx 50 Mg/25 ml Konz.z.Herst.e.Infusi](Medication-mii-exa-medikation-medication-caelyx.md)

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Patient/example)

**effective**: 2020-01-02 09:30:00+0100

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Timing** | **Route** |
| * | Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion | Once per 4 weeks | Intravenous use |



## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "mii-exa-medikation-medication-statement-caelyx",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|2026.0.1"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "active",
  "medicationReference" : {
    "reference" : "Medication/mii-exa-medikation-medication-caelyx"
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2020-01-02T09:30:00+01:00",
  "dosage" : [{
    "text" : "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion",
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
    }
  }]
}

```
