# MII PR Medikation Medication - MII IG Medikation v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR Medikation Medication**

## Resource Profile: MII PR Medikation Medication 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication | *Version*:2026.0.1 |
| Active as of 2025-03-19 | *Computable Name*:MII_PR_Medikation_Medication |

 
The profile describes a prepackaged drug or formulation. 

**Usages:**

* Refer to this Profile: [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.md), [MII PR Medikation MedicationRequest](StructureDefinition-mii-pr-medikation-medication-request.md), [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.md) and [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.md)
* Examples for this Profile: [Medication/mii-exa-medikation-medication-ass-100](Medication-mii-exa-medikation-medication-ass-100.md), [Medication/mii-exa-medikation-medication-caelyx](Medication-mii-exa-medikation-medication-caelyx.md), [Medication/mii-exa-medikation-medication-calcium](Medication-mii-exa-medikation-medication-calcium.md), [Medication/mii-exa-medikation-medication-dolomo-nacht](Medication-mii-exa-medikation-medication-dolomo-nacht.md)... Show 6 more, [Medication/mii-exa-medikation-medication-dolomo-tag](Medication-mii-exa-medikation-medication-dolomo-tag.md), [Medication/mii-exa-medikation-medication-dolomo](Medication-mii-exa-medikation-medication-dolomo.md), [Medication/mii-exa-medikation-medication-glucoseloesung](Medication-mii-exa-medikation-medication-glucoseloesung.md), [Medication/mii-exa-medikation-medication-propofol](Medication-mii-exa-medikation-medication-propofol.md), [Medication/mii-exa-medikation-medication-rezeptur](Medication-mii-exa-medikation-medication-rezeptur.md) and [Medication/mii-exa-medikation-medication-thiotepa](Medication-mii-exa-medikation-medication-thiotepa.md)
* CapabilityStatements using this Profile: [MII CPS Medikation CapabilityStatement](CapabilityStatement-mii-cps-medikation-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.medikation|current/StructureDefinition/StructureDefinition-mii-pr-medikation-medication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-medikation-medication.csv), [Excel](../StructureDefinition-mii-pr-medikation-medication.xlsx), [Schematron](../StructureDefinition-mii-pr-medikation-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-medikation-medication",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication",
  "version" : "2026.0.1",
  "name" : "MII_PR_Medikation_Medication",
  "_name" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII_PR_Medikation_Medication"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "title" : "MII PR Medikation Medication",
  "_title" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "MII PR Medikation Medication"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "status" : "active",
  "date" : "2025-03-19",
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
  "description" : "Dieses Profil beschreibt die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Die Angabe mindestens eines Wirkstoffes wird verlangt.",
  "_description" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "en-US"
      },
      {
        "url" : "content",
        "valueString" : "The profile describes a prepackaged drug or formulation."
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication",
      "comment" : "MI-I Medikation"
    },
    {
      "id" : "Medication.id",
      "path" : "Medication.id",
      "mustSupport" : true
    },
    {
      "id" : "Medication.meta",
      "path" : "Medication.meta",
      "mustSupport" : true
    },
    {
      "id" : "Medication.meta.source",
      "path" : "Medication.meta.source",
      "mustSupport" : true
    },
    {
      "id" : "Medication.meta.profile",
      "path" : "Medication.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "Code",
      "definition" : "Code für Medikation",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding",
      "path" : "Medication.code.coding",
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
      "id" : "Medication.code.coding:Pharmazentralnummer",
      "path" : "Medication.code.coding",
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
      "id" : "Medication.code.coding:Pharmazentralnummer.system",
      "path" : "Medication.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding:Pharmazentralnummer.code",
      "path" : "Medication.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding:atcClassDe",
      "path" : "Medication.code.coding",
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
      "id" : "Medication.code.coding:atcClassDe.system",
      "path" : "Medication.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding:atcClassDe.version",
      "path" : "Medication.code.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding:atcClassDe.code",
      "path" : "Medication.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding:atcClassEn",
      "path" : "Medication.code.coding",
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
      "id" : "Medication.code.coding:atcClassEn.system",
      "path" : "Medication.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding:atcClassEn.version",
      "path" : "Medication.code.coding.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding:atcClassEn.code",
      "path" : "Medication.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.text",
      "path" : "Medication.code.text",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form",
      "path" : "Medication.form",
      "short" : "Darreichungsform",
      "definition" : "Darreichungsform des Medikaments",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-doseform"
      }
    },
    {
      "id" : "Medication.form.coding",
      "path" : "Medication.form.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "definition" : "EDQM pharmaceutical dose forms sind bevorzugt zu verwenden. SNOMED CT und IFA Codes sind Alternativen.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.coding:EDQM",
      "path" : "Medication.form.coding",
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
      "max" : "*",
      "patternCoding" : {
        "system" : "http://standardterms.edqm.eu"
      },
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.coding:EDQM.system",
      "path" : "Medication.form.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.form.coding:EDQM.code",
      "path" : "Medication.form.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Bestandteil",
      "definition" : "Ein Bestandteil des Medikaments",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.extension",
      "path" : "Medication.ingredient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.extension:Wirkstofftyp",
      "path" : "Medication.ingredient.extension",
      "sliceName" : "Wirkstofftyp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.extension:Wirkstoffrelation",
      "path" : "Medication.ingredient.extension",
      "sliceName" : "Wirkstoffrelation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]",
      "path" : "Medication.ingredient.item[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemReference",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance",
        "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept",
      "path" : "Medication.ingredient.item[x]",
      "sliceName" : "itemCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding",
      "path" : "Medication.ingredient.item[x].coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:ASK",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "ASK",
      "short" : "ASK Code",
      "definition" : "Arzneistoffkatalog(ASK)-Nummer",
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fhir.de/CodeSystem/ask"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-ask"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:ASK.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:ASK.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:UNII",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "UNII",
      "short" : "UNII Code",
      "definition" : "Unique Ingredient Identifier (UNII)",
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://fdasis.nlm.nih.gov"
      },
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-unii"
      }
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:UNII.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:UNII.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:CAS",
      "path" : "Medication.ingredient.item[x].coding",
      "sliceName" : "CAS",
      "short" : "CAS Code",
      "definition" : "Chemical abstract codes (CAS)",
      "min" : 0,
      "max" : "*",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/CAS"
      },
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:CAS.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:CAS.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:SNOMED",
      "path" : "Medication.ingredient.item[x].coding",
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
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:SNOMED.system",
      "path" : "Medication.ingredient.item[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.coding:SNOMED.code",
      "path" : "Medication.ingredient.item[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.item[x]:itemCodeableConcept.text",
      "path" : "Medication.ingredient.item[x].text",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength",
      "path" : "Medication.ingredient.strength",
      "short" : "Menge|Stärke",
      "definition" : "Die Menge oder Stärke des Bestandteils",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength.numerator",
      "path" : "Medication.ingredient.strength.numerator",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength.denominator",
      "path" : "Medication.ingredient.strength.denominator",
      "mustSupport" : true
    }]
  }
}

```
