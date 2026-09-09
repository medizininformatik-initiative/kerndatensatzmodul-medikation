# MII EXA Medikation Einrichtungskontakt - MII IG Medikation v2027.0.0-ballot.rc3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Medikation Einrichtungskontakt**

## Beispiel Encounter: MII EXA Medikation Einrichtungskontakt

-------

**German**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**subject**: [Max Mustermann Male, DoB: 1965-03-14 ( https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/sid/patient#12345)](Patient-mii-exa-medikation-patient.md)

**period**: 2018-05-24 --> 2018-06-08



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-medikation-einrichtungskontakt",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-medikation-patient"
  },
  "period" : {
    "start" : "2018-05-24",
    "end" : "2018-06-08"
  }
}

```
