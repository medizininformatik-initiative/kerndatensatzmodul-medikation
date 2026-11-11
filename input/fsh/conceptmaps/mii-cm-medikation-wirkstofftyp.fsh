Instance: mii-cm-medikation-wirkstofftyp
InstanceOf: ConceptMap
Usage: #definition
Title: "MII CM Medikation Wirkstofftyp"
Description: "Abbildung der veralteten MII-Wirkstofftypen auf das CodeSystem WirkstofftypCS der deutschen Basisprofile (de.basisprofil.r4)."
// CRMI-Artefakt-Metadaten (Muster: kerndatensatz-basis)
* insert CRMIVersionPolicyStrictInstance
* insert CRMIPackageSource
* insert CRMIApprovalDateInstance(2026-11-11)
* insert CRMIResourceEffectivePeriodInstance
* insert CRMIArtifactTopicInstance(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C459)
* insert CRMIArtifactContributorsInstance
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ConceptMap/mii-cm-medikation-wirkstofftyp"
* insert Version
* insert LicenseCodeableCCBY40Instance
* name = "MII_CM_Medikation_Wirkstofftyp"
* insert Translation(name, en-US, MII_CM_Medikation_IngredientType)
* title = "MII CM Medikation Wirkstofftyp"
* insert Translation(title, en-US, MII CM Medikation Ingredient Type)
* description = "Abbildung der veralteten MII-Wirkstofftypen auf das CodeSystem WirkstofftypCS der deutschen Basisprofile (de.basisprofil.r4)."
* insert Translation(description, en-US, Maps the deprecated MII ingredient types to the code system WirkstofftypCS of the German base profiles de.basisprofil.r4.)
* status = #active
* experimental = false
* date = "2026-11-11"
* insert SP_Publisher
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/wirkstofftyp"
* targetUri = "http://fhir.de/ValueSet/WirkstofftypVS"
* group[+].source = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp"
* group[=].target = "http://fhir.de/CodeSystem/WirkstofftypCS"
* group[=].element[+].code = #IN
* group[=].element[=].display = "ingredient"
* group[=].element[=].target[+].code = #IN
* group[=].element[=].target[=].display = "ingredient"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #PIN
* group[=].element[=].display = "precise ingredient"
* group[=].element[=].target[+].code = #PIN
* group[=].element[=].target[=].display = "precise ingredient"
* group[=].element[=].target[=].equivalence = #equal
* group[=].element[+].code = #MIN
* group[=].element[=].display = "multiple ingredients"
* group[=].element[=].target[+].code = #MIN
* group[=].element[=].target[=].display = "multiple ingredients"
* group[=].element[=].target[=].equivalence = #equal
