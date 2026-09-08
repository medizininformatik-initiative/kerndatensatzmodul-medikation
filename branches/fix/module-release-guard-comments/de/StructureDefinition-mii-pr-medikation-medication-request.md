# MII PR Medikation MedicationRequest - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Medikation MedicationRequest**

## Ressourcenprofil: MII PR Medikation MedicationRequest 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2025-12-18 | *Maschinenlesbarer Name*:MII_PR_Medikation_MedicationRequest |

 
Eine Anweisung oder Anforderung für die Bereitstellung des Medikaments und die Anweisungen zur Verabreichung des Medikaments. 

### Inhalt

Die MedicationRequest Ressource beschreibt einen Auftrag zur Lieferung des Medikaments oder die Anordnung und die Anweisungen zur Verabreichung des Medikaments an einen Patienten.

Das verabreichte Medikament soll entweder über eine Referenz auf ein **Medication**-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine **Medication** möglich.

Dosierungsangaben sollen gemäß dem [Dosage-Profil aus dem Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) erfolgen. Weitere Informationen zur Dokumentation von Dosierungen finden sich im [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).

**Usages:**

* Examples for this Profile: [MedicationRequest/mii-exa-medikation-medication-request-caelyx](MedicationRequest-mii-exa-medikation-medication-request-caelyx.md)
* CapabilityStatements using this Profile: [MII CPS Medikation CapabilityStatement](CapabilityStatement-mii-cps-medikation-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.medikation|current/StructureDefinition/StructureDefinition-mii-pr-medikation-medication-request.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

#### Terminology Bindings (Differential)

#### Constraints

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

** Summary **

Mandatory: 0 element(53 nested mandatory elements)
 Must-Support: 134 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](StructureDefinition-mii-pr-medikation-medication.md)
* [Dosage DE (http://ig.fhir.de/igs/medication/StructureDefinition/DosageDE)](http://ig.fhir.de/igs/medication/1.0.7/StructureDefinition-DosageDE.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.medication[x]
* The element 1 is sliced based on the value of MedicationRequest.medication[x].coding
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.asNeeded[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.site.coding
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.route.coding
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.rate[x]
* The element 1 is sliced based on the value of MedicationRequest.substitution.allowed[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

#### Terminology Bindings (Differential)

#### Constraints

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) 

** Summary **

Mandatory: 0 element(53 nested mandatory elements)
 Must-Support: 134 elements
 Prohibited: 1 element

**Structures**

This structure refers to these other structures:

* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](StructureDefinition-mii-pr-medikation-medication.md)
* [Dosage DE (http://ig.fhir.de/igs/medication/StructureDefinition/DosageDE)](http://ig.fhir.de/igs/medication/1.0.7/StructureDefinition-DosageDE.html)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationRequest.medication[x]
* The element 1 is sliced based on the value of MedicationRequest.medication[x].coding
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.asNeeded[x]
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.site.coding
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.route.coding
* The element 1 is sliced based on the value of MedicationRequest.dosageInstruction.doseAndRate.rate[x]
* The element 1 is sliced based on the value of MedicationRequest.substitution.allowed[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-medikation-medication-request.csv), [Excel](../StructureDefinition-mii-pr-medikation-medication-request.xlsx), [Schematron](../StructureDefinition-mii-pr-medikation-medication-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-medikation-medication-request",
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/StructureDefinition/mii-ex-meta-license-codeable",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hl7.org/fhir/spdx-license",
        "code" : "CC-BY-4.0",
        "display" : "Creative Commons Attribution 4.0 International"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Medikation_MedicationRequest",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Medikation_MedicationRequest"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Medikation MedicationRequest",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Medikationsverordnung"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "Medication request"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2025-12-18",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "Dieses Profil beschreibt die Verordnung einer Medikation.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Eine Anweisung oder Anforderung für die Bereitstellung des Medikaments und die Anweisungen zur Verabreichung des Medikaments."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    },
    {
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "An order or request for both supply of the medication and the instructions for administration of the medication to a patient."
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "comment" : "MI-I Medikamentenverordnung"
    },
    {
      "id" : "MedicationRequest.id",
      "path" : "MedicationRequest.id",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.meta",
      "path" : "MedicationRequest.meta",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.meta.source",
      "path" : "MedicationRequest.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.meta.profile",
      "path" : "MedicationRequest.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "short" : "Identifikator",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifikator"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Identifikator für die Medikationsverordnung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Identifikator für die Medikationsverordnung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "An identifier for this medication request"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "aktiv | pausiert | abgebrochen | abgeschlossen | Eingabe fehlerhaft | abgebrochen | Entwurf | unbekannt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "aktiv | pausiert | abgebrochen | abgeschlossen | Eingabe fehlerhaft | abgebrochen | Entwurf | unbekannt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "short" : "Intention",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Intention"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Intent"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Vorschlag | Plan | Auftrag | Original-Auftrag | ergänzender Auftrag | Erfüllungsauftrag | Vorgangsauftrag | Option",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Vorschlag | Plan | Auftrag | Original-Auftrag | ergänzender Auftrag | Erfüllungsauftrag | Vorgangsauftrag | Option"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "max" : "0"
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "short" : "Medikation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Medication"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Das Medikament, das verordnet wurde. Code oder Referenz auf Medication-Objekt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikation, die verordnet wurde. Code oder Referenz auf Medication-Objekt."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "The medication that was requested. Code or a reference to a Medication resource."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationReference",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationRequest.medication[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer",
      "path" : "MedicationRequest.medication[x].coding",
      "sliceName" : "Pharmazentralnummer",
      "short" : "PZN Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "PZN Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "PZN code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen von der Pharmazentralnummer (PZN) definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von der Pharmazentralnummer definierten Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A reference to a code defined by Pharmazentralnummer"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/ifa/pzn"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer.system",
      "path" : "MedicationRequest.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer.code",
      "path" : "MedicationRequest.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassDe",
      "path" : "MedicationRequest.medication[x].coding",
      "sliceName" : "atcClassDe",
      "short" : "ATC Klassifikation deutsche Version",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ATC Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "ATC code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von der deutschen Fassung der Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A reference to a code defined by the German edition of the Anatomical Therapeutic Chemical classification system"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/bfarm/atc"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-atc"
      }
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassDe.system",
      "path" : "MedicationRequest.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassDe.code",
      "path" : "MedicationRequest.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassEn",
      "path" : "MedicationRequest.medication[x].coding",
      "sliceName" : "atcClassEn",
      "short" : "Anatomical Therapeutic Chemical Classification System",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "ATC WHO Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "ATC WHO code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "ATC Classification International WHO Version",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von der WHO Anatomisch-Therapeutisch-Chemischen Klassifikation definierten Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A reference to a code defined by the WHO edition of the Anatomical Therapeutic Chemical classification system"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://www.whocc.no/atc"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassEn.system",
      "path" : "MedicationRequest.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassEn.code",
      "path" : "MedicationRequest.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:UNII",
      "path" : "MedicationRequest.medication[x].coding",
      "sliceName" : "UNII",
      "short" : "Unique Ingredient Identifier",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Unique Ingredient Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Unique Ingredient Identifier"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Global Susbstance Registration System Unique Ingredient Identifier. Soll nur eingesetzt werden, wenn weder ATC-Code noch PZN existiert, z.B. bei experimentellen Krebsmedikamenten.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Unique Ingredient Identifier (UNII) aus dem Global Substance Registration System der amerikanischen Food & Drug Administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A Unique Ingredient Identifier (UNII) from the american Food & Drug Administration's Global Substance Registration System"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fdasis.nlm.nih.gov"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:UNII.system",
      "path" : "MedicationRequest.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.coding:UNII.code",
      "path" : "MedicationRequest.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept.text",
      "path" : "MedicationRequest.medication[x].text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "short" : "Fall oder Kontakt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Fall / Kontakt"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Encounter"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Fall oder Kontakt, bei dem die Medikation verordnet wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Fall oder Kontakt, bei dem die Medikation verordnet wurde."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Encounter or episode of care during which the medication was requested."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "short" : "Datum der Verordnung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Datum der Verordnung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Authored on"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Das Datum und vielleicht die Uhrzeit, an dem die Verordnung ursprünglich verfasst wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Das Datum, an dem die Verordnung ursprünglich verfasst wurde."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "The date and perhaps time when the prescription was initially written or authored on."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "short" : "Anforderer",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Anforderer"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Requester"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Person, Organisation oder das Gerät, die die Verordnung initiiert hat und für deren Aktivierung verantwortlich ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Die Person, Organisation oder das Gerät, die die Verordnung initiiert hat und für deren Aktivierung verantwortlich ist."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "The individual, organization, or device that initiated the request and has responsibility for its activation."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "short" : "Auftragserfasser",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Auftragserfasser"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Recorder"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Person, die den Auftrag im Namen einer anderen Person eingegeben hat, zum Beispiel im Fall eines mündlichen oder telefonischen Auftrags.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Die Person, die den Auftrag im Namen einer anderen Person eingegeben hat, zum Beispiel im Fall eines mündlichen oder telefonischen Auftrags."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "The person who entered the order on behalf of another individual for example in the case of a verbal or a telephone order."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "short" : "Grund Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Reason code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für die Medikationsverordnung als Code.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für die Medikationverordnung als Code."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Reason for the medication request as a code."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "short" : "Grund Referenz",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund Referenz"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Reason reference"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Grund für die Medikationsverordnung als Referenz auf Condition- oder Observation-Objekt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für die Medikationsverordnung als Referenz auf Condition- oder Observation-Objekt."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Condition or observation that supports why the medication was administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "short" : "Basiert auf",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Basiert auf"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Based on"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Plan oder eine Anforderung, die ganz oder teilweise durch diese Medikationsverordnung erfüllt wird.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Plan oder eine Anforderung, die ganz oder teilweise durch diese Medikationsverordnung erfüllt wird."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A plan or request that is fulfilled in whole or in part by this medication request."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "short" : "Hinweis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Hinweis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Note"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zusätzliche Informationen zur Medikationsverordnung als Freitext.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zusätzliche Informationen zur Medikationsverordnung als Freitext."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Additional information about the medication request as free text."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "Dosierungsanweisung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dosierungsanweisung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Dosage instruction"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Gibt an, wie das Medikament vom Patienten zu verwenden ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Gibt an, wie das Medikament vom Patienten zu verwenden ist."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Indicates how the medication is to be used by the patient."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Dosage",
        "profile" : ["http://ig.fhir.de/igs/medication/StructureDefinition/DosageDE"]
      }],
      "constraint" : [{
        "key" : "dsg-1",
        "severity" : "error",
        "human" : "If present, dosage must include free text or structured data",
        "expression" : "text.exists() or doseAndRate.exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.sequence",
      "path" : "MedicationRequest.dosageInstruction.sequence",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.event",
      "path" : "MedicationRequest.dosageInstruction.timing.event",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsDuration",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
      "sliceName" : "boundsDuration",
      "type" : [{
        "code" : "Duration"
      }],
      "patternDuration" : {
        "system" : "http://unitsofmeasure.org"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsDuration.value",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].value",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsDuration.system",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].system",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsDuration.code",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].code",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
      "sliceName" : "boundsRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.low",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].low",
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.low.value",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.low.unit",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].low.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.low.system",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.low.code",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.high",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].high",
      "patternQuantity" : {
        "system" : "http://unitsofmeasure.org"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.high.value",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.high.unit",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].high.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.high.system",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange.high.code",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
      "sliceName" : "boundsPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod.start",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].start",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod.end",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x].end",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.count",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.count",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.countMax",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.countMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.durationMax",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.durationMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.durationUnit",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.durationUnit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.frequencyMax",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequencyMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.periodMax",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.periodMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.offset",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.offset",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.asNeeded[x]:asNeededBoolean",
      "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "sliceName" : "asNeededBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.asNeeded[x]:asNeededCodeableConcept",
      "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "sliceName" : "asNeededCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site",
      "path" : "MedicationRequest.dosageInstruction.site",
      "short" : "Verabreichungsort",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verabreichungsort"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Site of administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Ort, an dem das Medikament verabreicht werden soll.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Der Ort, an dem das Medikament verabreicht werden soll."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Anatomic site where the medication is to be administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site.coding",
      "path" : "MedicationRequest.dosageInstruction.site.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site.coding:SNOMED",
      "path" : "MedicationRequest.dosageInstruction.site.coding",
      "sliceName" : "SNOMED",
      "short" : "SNOMED CT Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen von SNOMED CT definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von SNOMED CT definierten Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A reference to a code defined by SNOMED CT"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://snomed.info/sct"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "example",
        "description" : "target site IPS",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site.coding:SNOMED.system",
      "path" : "MedicationRequest.dosageInstruction.site.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site.coding:SNOMED.code",
      "path" : "MedicationRequest.dosageInstruction.site.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route",
      "path" : "MedicationRequest.dosageInstruction.route",
      "short" : "Verabreichungsweg",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verabreichungsweg"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Route of administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Der Weg, auf dem das Medikament verabreicht werden soll.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Der Weg, auf dem das Medikament verabreicht werden soll."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "How drug should enter body"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route.coding",
      "path" : "MedicationRequest.dosageInstruction.route.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route.coding:EDQM",
      "path" : "MedicationRequest.dosageInstruction.route.coding",
      "sliceName" : "EDQM",
      "short" : "EDQM Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "EDQM Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "EDQM code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen durch EDQM Standard Terms definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen durch EDQM Standard Terms definierten Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A reference to a code defined by EDQM Standard Terms"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://standardterms.edqm.eu"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "description" : "EDQM Standard Terms",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route.coding:EDQM.system",
      "path" : "MedicationRequest.dosageInstruction.route.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route.coding:EDQM.code",
      "path" : "MedicationRequest.dosageInstruction.route.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route.coding:SNOMED",
      "path" : "MedicationRequest.dosageInstruction.route.coding",
      "sliceName" : "SNOMED",
      "short" : "SNOMED CT Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "SNOMED CT code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein Verweis auf einen von SNOMED CT definierten Code",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Verweis auf einen von SNOMED CT definierten Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "A reference to a code defined by SNOMED CT"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route.coding:SNOMED.system",
      "path" : "MedicationRequest.dosageInstruction.route.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route.coding:SNOMED.code",
      "path" : "MedicationRequest.dosageInstruction.route.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "sliceName" : "doseRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].low",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low.value",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low.unit",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].low.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low.system",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low.code",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].high",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high.value",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high.unit",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].high.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high.system",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high.code",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "sliceName" : "rateRatio",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.numerator",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].numerator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.numerator.value",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].numerator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.numerator.unit",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].numerator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.numerator.system",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].numerator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.numerator.code",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].numerator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.denominator",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].denominator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.denominator.value",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.denominator.unit",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].denominator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.denominator.system",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].denominator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio.denominator.code",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].denominator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "sliceName" : "rateRange",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].low",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low.value",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].low.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low.unit",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].low.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low.system",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].low.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low.code",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].low.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].high",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high.value",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].high.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high.unit",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].high.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high.system",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].high.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high.code",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].high.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
      "sliceName" : "rateQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity.value",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity.unit",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity.system",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity.code",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x].code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.value",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.unit",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.system",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.code",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.value",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.unit",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.system",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.code",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.value",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.unit",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.system",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.code",
      "path" : "MedicationRequest.dosageInstruction.maxDosePerAdministration.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "short" : "Substitution",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Substitution"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Substitution"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Etwaige Einschränkungen bei der Substitution von Medikamenten",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Etwaige Einschränkungen bei der Substitution von Medikamenten"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Any restrictions on medication substitution"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]:allowedBoolean",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "sliceName" : "allowedBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution.allowed[x]:allowedCodeableConcept",
      "path" : "MedicationRequest.substitution.allowed[x]",
      "sliceName" : "allowedCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.priorPrescription",
      "path" : "MedicationRequest.priorPrescription",
      "short" : "Vorherige Verschreibung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Vorherige Verschreibung"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Prior prescription"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eine Verschreibung, die ersetzt wird",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eine Verschreibung, die ersetzt wird"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "An order/prescription that is being replaced"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.detectedIssue",
      "path" : "MedicationRequest.detectedIssue",
      "short" : "Erkannte Probleme",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erkannte Probleme"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Detected issue"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten; z.B. Arzneimittelwechselwirkung, Doppeltherapie, Dosierungsalarm etc.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein tatsächliches oder potenzielles klinisches Problem mit oder zwischen einer oder mehreren aktiven oder vorgeschlagenen klinischen Maßnahmen für einen Patienten; z.B. Arzneimittelwechselwirkung, Doppeltherapie, Dosierungsalarm etc."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en-US"
          },
          {
            "url" : "content",
            "valueString" : "Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, duplicate therapy, dosage alert etc."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    }]
  }
}

```
