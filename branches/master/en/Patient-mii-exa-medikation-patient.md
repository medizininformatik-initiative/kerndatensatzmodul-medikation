# MII EXA Medikation Patient - MII IG Medikation v2027.0.0-ballot.rc5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Medikation Patient**

## Example Patient: MII EXA Medikation Patient

-------

**English**

-------

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActReason.html)

Max Mustermann Male, DoB: 1965-03-14 ( https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/sid/patient#12345)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mii-exa-medikation-patient",
  "meta" : {
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/sid/patient",
    "value" : "12345"
  }],
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Max"]
  }],
  "gender" : "male",
  "birthDate" : "1965-03-14"
}

```
