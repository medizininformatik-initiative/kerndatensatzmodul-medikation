Extension: MII_EX_Medikation_Wirkstofftyp
Id: mii-ex-medikation-wirkstofftyp
Title: "MII EX Medikation Wirkstofftyp"
Description: "Extension zur Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* insert Translation(^name, en-US, MII_EX_Medikation_IngredientType)
* insert Translation(^title, en-US, MII EX Medikation Ingredient Type)
* insert Translation(^description, en-US, Extension to differentiate the type of ingredient into general\, exact or combination ingredient.)
* insert PR_CS_VS_Version
* ^experimental = false
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* ^context.type = #element
* ^context.expression = "Medication.ingredient"
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x] from $vs-wirkstofftyp (required)
* value[x].system 1..
* value[x].system = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp" (exactly)
* value[x].code 1..