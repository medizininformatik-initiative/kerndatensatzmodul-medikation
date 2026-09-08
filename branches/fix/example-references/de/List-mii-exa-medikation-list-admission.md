# Aufnahmemedikation - MII IG Medikation v2027.0.0-ballot.rc3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Aufnahmemedikation**

## Beispiel List: Aufnahmemedikation

-------

**German**

-------

Profile: [MII PR Medikation Medikationsliste](StructureDefinition-mii-pr-medikation-medikationsliste.md) version: 2027.0.0-ballot.rc3

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

## Aufnahmemedikation

| | | |
| :--- | :--- | :--- |
| Mode: Snapshot List | Status: Current | Code: Medication List |
| Subject:[Max Mustermann Male, DoB: 1965-03-14 ( http://example.org/fhir/sid/patienten#12345)](Patient-mii-exa-medikation-patient.md)Encounter:[Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2018-05-24 --> 2018-06-08](Encounter-mii-exa-medikation-einrichtungskontakt.md) | | |

* **Items**: [MedicationStatement: extension = 1-0-0-0 Tablette HCT 12,5mg oral; status = intended; medication[x] = Hydrochlorothiazid; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-hct.md)
* **Items**: [MedicationStatement: status = intended; medication[x] = Bisoprolol; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-concor.md)
* **Items**: [MedicationStatement: status = intended; medication[x] = Ibuprofen; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-ibuprofen.md)
* **Items**: [MedicationStatement: status = intended; medication[x] = Zopiclon; effective[x] = 2022-02-02 12:22:00+0000 --> (ongoing)](MedicationStatement-mii-exa-medikation-medication-statement-zopiclon.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "mii-exa-medikation-list-admission",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste|2027.0.0-ballot.rc3"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "current",
  "mode" : "snapshot",
  "title" : "Aufnahmemedikation",
  "code" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
      "code" : "medications"
    },
    {
      "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
      "code" : "E210"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-medikation-patient"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-medikation-einrichtungskontakt"
  },
  "entry" : [{
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-hct"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-concor"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-ibuprofen"
    }
  },
  {
    "item" : {
      "reference" : "MedicationStatement/mii-exa-medikation-medication-statement-zopiclon"
    }
  }]
}

```
