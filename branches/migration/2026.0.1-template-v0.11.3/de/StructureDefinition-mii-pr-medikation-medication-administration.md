# MII PR Medikation MedicationAdministration - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR Medikation MedicationAdministration**

## Ressourcenprofil: MII PR Medikation MedicationAdministration 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration | *Version*:2026.0.1 |
| Active Stand: 2025-12-18 | *Maschinenlesbarer Name*:MII_PR_Medikation_MedicationAdministration |

 
Beschreibt den Sachverhalt, dass ein Patient ein Medikament einnimmt oder auf andere Weise verabreicht bekommt. 

### Inhalt

Diese MedicationAdministration-Ressource wird verwendet, um Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben usw. zu erfassen.

Das verabreichte Medikament soll entweder über eine Referenz auf ein **Medication**-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine **Medication** möglich.

**Usages:**

* Examples for this Profile: [MedicationAdministration/mii-exa-medikation-medication-administration](MedicationAdministration-mii-exa-medikation-medication-administration.md)
* CapabilityStatements using this Profile: [MII CPS Medikation CapabilityStatement](CapabilityStatement-mii-cps-medikation-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.medikation|current/StructureDefinition/StructureDefinition-mii-pr-medikation-medication-administration.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

** Summary **

Mandatory: 0 element(26 nested mandatory elements)
 Must-Support: 72 elements

**Structures**

This structure refers to these other structures:

* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](StructureDefinition-mii-pr-medikation-medication.md)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationAdministration.medication[x]
* The element 1 is sliced based on the value of MedicationAdministration.medication[x].coding
* The element 1 is sliced based on the value of MedicationAdministration.effective[x]
* The element 1 is sliced based on the value of MedicationAdministration.dosage.site.coding
* The element 1 is sliced based on the value of MedicationAdministration.dosage.route.coding
* The element 1 is sliced based on the value of MedicationAdministration.dosage.rate[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) 

** Summary **

Mandatory: 0 element(26 nested mandatory elements)
 Must-Support: 72 elements

**Structures**

This structure refers to these other structures:

* [MII PR Medikation Medication (https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication)](StructureDefinition-mii-pr-medikation-medication.md)
* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of MedicationAdministration.medication[x]
* The element 1 is sliced based on the value of MedicationAdministration.medication[x].coding
* The element 1 is sliced based on the value of MedicationAdministration.effective[x]
* The element 1 is sliced based on the value of MedicationAdministration.dosage.site.coding
* The element 1 is sliced based on the value of MedicationAdministration.dosage.route.coding
* The element 1 is sliced based on the value of MedicationAdministration.dosage.rate[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-medikation-medication-administration.csv), [Excel](../StructureDefinition-mii-pr-medikation-medication-administration.xlsx), [Schematron](../StructureDefinition-mii-pr-medikation-medication-administration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-medikation-medication-administration",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration",
  "version" : "2026.0.1",
  "name" : "MII_PR_Medikation_MedicationAdministration",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Medikation_MedicationAdministration"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Medikation MedicationAdministration",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Medikationsverabreichung"
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
        "valueString" : "Medication administration"
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
  "description" : "Dieses Profil beschreibt Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben etc.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de-DE"
      },
      {
        "url" : "content",
        "valueString" : "Beschreibt den Sachverhalt, dass ein Patient ein Medikament einnimmt oder auf andere Weise verabreicht bekommt."
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
        "valueString" : "Describes the event of a patient consuming or otherwise being administered a medication."
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.id",
      "path" : "MedicationAdministration.id",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.meta",
      "path" : "MedicationAdministration.meta",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.meta.source",
      "path" : "MedicationAdministration.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.meta.profile",
      "path" : "MedicationAdministration.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.identifier",
      "path" : "MedicationAdministration.identifier",
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
      "definition" : "Ein Identifikator für die Medikationsverabreichung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ein Identifikator für die Medikationsverabreichung"
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
            "valueString" : "An identifier for this medication administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.partOf",
      "path" : "MedicationAdministration.partOf",
      "short" : "Teil von",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Teil von"
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
            "valueString" : "Part of"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Teil einer weiteren Medikationsverabreichung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Teil einer weiteren Medikationsverabreichung"
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
            "valueString" : "Part of another medication administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.status",
      "path" : "MedicationAdministration.status",
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
      "definition" : "in Durchführung | nicht durchgeführt | in Wartestellung | abgeschlossen | Eingabe fehlerhaft | abgebrochen | unbekannt",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "in Durchführung | nicht durchgeführt | in Wartestellung | abgeschlossen | Eingabe fehlerhaft | abgebrochen | unbekannt"
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
            "valueString" : "in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.category",
      "path" : "MedicationAdministration.category",
      "short" : "Kategorie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorie"
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
            "valueString" : "Category"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Eine Kategorie, die der Medikationsverabreichung zugeordnet ist.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Eine Kategorie, die der Medikationsverabreichung zugeordnet ist."
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
            "valueString" : "A category assigned to the medication administration."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
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
      "definition" : "Die Medikation, die verarbreicht wurde. Code oder Referenz auf Medication-Objekt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Medikation, die verarbreicht wurde. Code oder Referenz auf Medication-Objekt."
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
            "valueString" : "The medication that was administered. Code or a reference to a Medication resource."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationReference",
      "path" : "MedicationAdministration.medication[x]",
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
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept",
      "path" : "MedicationAdministration.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationAdministration.medication[x].coding",
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
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer",
      "path" : "MedicationAdministration.medication[x].coding",
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
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer.system",
      "path" : "MedicationAdministration.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer.code",
      "path" : "MedicationAdministration.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassDe",
      "path" : "MedicationAdministration.medication[x].coding",
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
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassDe.system",
      "path" : "MedicationAdministration.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassDe.code",
      "path" : "MedicationAdministration.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassEn",
      "path" : "MedicationAdministration.medication[x].coding",
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
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassEn.system",
      "path" : "MedicationAdministration.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassEn.code",
      "path" : "MedicationAdministration.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:UNII",
      "path" : "MedicationAdministration.medication[x].coding",
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
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:UNII.system",
      "path" : "MedicationAdministration.medication[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding:UNII.code",
      "path" : "MedicationAdministration.medication[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.text",
      "path" : "MedicationAdministration.medication[x].text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.context",
      "path" : "MedicationAdministration.context",
      "short" : "Kontext",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kontext"
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
            "valueString" : "Context"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Fall oder Kontakt, bei dem die Medikation verabreicht wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Fall oder Kontakt, bei dem die Medikation verabreicht wurde."
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
            "valueString" : "Encounter or episode of care during which the medication was administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.effective[x]",
      "path" : "MedicationAdministration.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Zeitpunkt oder Zeitraum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt oder Zeitraum"
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
            "valueString" : "Date or period"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Datum oder Zeitraum, in dem die Medikation verabreicht wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt oder Zeitraum in dem die Medikation verabreicht wurde."
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
            "valueString" : "The date or time period over which the medication was administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.effective[x]:effectiveDateTime",
      "path" : "MedicationAdministration.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "Zeitpunkt",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt"
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
            "valueString" : "Date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitpunkt, zu der die Medikation verabreicht wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitpunkt, zu der die Medikation verabreicht wurde."
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
            "valueString" : "The date or time the medication was administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.effective[x]:effectivePeriod",
      "path" : "MedicationAdministration.effective[x]",
      "sliceName" : "effectivePeriod",
      "short" : "Zeitraum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum"
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
            "valueString" : "Period"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Zeitraum, in dem die Medikation verabreicht wurde.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zeitraum, in dem die Medikation verabreicht wurde."
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
            "valueString" : "The time period over which the medication was administered."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer",
      "path" : "MedicationAdministration.performer",
      "short" : "Ausführende*r",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ausführende*r"
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
            "valueString" : "Performer"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Person oder das Gerät, das die Medikation verabreicht hat.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Wer die Medikation verabreicht hat und was sie getan haben."
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
            "valueString" : "Who performed the medication administration and what they did."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.reasonCode",
      "path" : "MedicationAdministration.reasonCode",
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
      "definition" : "Grund für die Medikationsverabreichung als Code.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für die Medikationverabreichung als Code."
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
            "valueString" : "Reason for the medication administration as a code."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.reasonReference",
      "path" : "MedicationAdministration.reasonReference",
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
      "definition" : "Grund für die Medikationsverabreichung als Referenz auf Condition- oder Observation-Objekt.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Grund für die Medikationsverabreichung als Referenz auf Condition- oder Observation-Objekt."
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
      "id" : "MedicationAdministration.request",
      "path" : "MedicationAdministration.request",
      "short" : "Verordnung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verordnung"
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
            "valueString" : "Request"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Die Verordnung zur Medikationsverabreichung.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verordnung zur Medikationsverabreichung."
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
            "valueString" : "Request administration performed against."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.note",
      "path" : "MedicationAdministration.note",
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
      "definition" : "Zusätzliche Informationen zur Medikationsverabreichung als Freitext.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Zusätzliche Informationen zur Medikationsverabreichung als Freitext."
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
            "valueString" : "Additional information about the medication administration as free text."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage",
      "path" : "MedicationAdministration.dosage",
      "short" : "Dosierung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dosierung"
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
            "valueString" : "Dosage"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Details der Medikamentendosierung, wie Dosis, Menge, Applikationsort, Verabreichungsweg, etc.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Details der Medikamentendosierung, wie Dosis, Menge, Applikationsort, Verabreichungsweg, etc."
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
            "valueString" : "Describes the medication dosage information details e.g. dose, rate, site, route, etc."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.text",
      "path" : "MedicationAdministration.dosage.text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.site",
      "path" : "MedicationAdministration.dosage.site",
      "short" : "Applikationsort",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Applikationsort"
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
            "valueString" : "Site"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Körperstelle der Verabreichung",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Körperstelle der Verabreichung"
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
            "valueString" : "Body site of the administration"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.site.coding",
      "path" : "MedicationAdministration.dosage.site.coding",
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
      "id" : "MedicationAdministration.dosage.site.coding:SNOMED",
      "path" : "MedicationAdministration.dosage.site.coding",
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
      "id" : "MedicationAdministration.dosage.site.coding:SNOMED.system",
      "path" : "MedicationAdministration.dosage.site.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.site.coding:SNOMED.code",
      "path" : "MedicationAdministration.dosage.site.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route",
      "path" : "MedicationAdministration.dosage.route",
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
      "definition" : "Weg des Medikaments in den Körper",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Weg des Medikaments in den Körper"
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
            "valueString" : "Path of substance into the body"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route.coding",
      "path" : "MedicationAdministration.dosage.route.coding",
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
      "id" : "MedicationAdministration.dosage.route.coding:EDQM",
      "path" : "MedicationAdministration.dosage.route.coding",
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
      "id" : "MedicationAdministration.dosage.route.coding:EDQM.system",
      "path" : "MedicationAdministration.dosage.route.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route.coding:EDQM.code",
      "path" : "MedicationAdministration.dosage.route.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route.coding:SNOMED",
      "path" : "MedicationAdministration.dosage.route.coding",
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
      "id" : "MedicationAdministration.dosage.route.coding:SNOMED.system",
      "path" : "MedicationAdministration.dosage.route.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route.coding:SNOMED.code",
      "path" : "MedicationAdministration.dosage.route.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose",
      "path" : "MedicationAdministration.dosage.dose",
      "short" : "Dosis",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Dosis"
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
            "valueString" : "Dose"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Menge des Medikaments pro Dosis",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Menge des Medikaments pro Dosis"
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
            "valueString" : "The amount of medication per dose"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.value",
      "path" : "MedicationAdministration.dosage.dose.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.unit",
      "path" : "MedicationAdministration.dosage.dose.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.system",
      "path" : "MedicationAdministration.dosage.dose.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose.code",
      "path" : "MedicationAdministration.dosage.dose.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]",
      "path" : "MedicationAdministration.dosage.rate[x]",
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
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "sliceName" : "rateRatio",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.numerator",
      "path" : "MedicationAdministration.dosage.rate[x].numerator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.numerator.value",
      "path" : "MedicationAdministration.dosage.rate[x].numerator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.numerator.unit",
      "path" : "MedicationAdministration.dosage.rate[x].numerator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.numerator.system",
      "path" : "MedicationAdministration.dosage.rate[x].numerator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.numerator.code",
      "path" : "MedicationAdministration.dosage.rate[x].numerator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.denominator",
      "path" : "MedicationAdministration.dosage.rate[x].denominator",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.denominator.value",
      "path" : "MedicationAdministration.dosage.rate[x].denominator.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.denominator.unit",
      "path" : "MedicationAdministration.dosage.rate[x].denominator.unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.denominator.system",
      "path" : "MedicationAdministration.dosage.rate[x].denominator.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateRatio.denominator.code",
      "path" : "MedicationAdministration.dosage.rate[x].denominator.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "sliceName" : "rateQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity.value",
      "path" : "MedicationAdministration.dosage.rate[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity.unit",
      "path" : "MedicationAdministration.dosage.rate[x].unit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity.system",
      "path" : "MedicationAdministration.dosage.rate[x].system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity.code",
      "path" : "MedicationAdministration.dosage.rate[x].code",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
