Extension: MII_EX_Medikation_Wirkstoffrelation
Id: mii-ex-medikation-wirkstoffrelation
Title: "MII EX Medikation Wirkstoffrelation"
Description: "Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* insert Translation(^name, en-US, MII_EX_Medikation_IngredientRelation)
* insert Translation(^title, en-US, MII EX Medikation Ingredient Relation)
* insert Translation(^description, en-US, The extension enables the assignment of an exact substance e.g. salt\, ester to a general substance.)
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* ^date = "2024-11-14"
* ^experimental = false
* insert Publisher
* insert ExtensionContext(Medication.ingredient)
* extension contains
    ingredientReference 0..1 and
    ingredientUri 0..1
* extension[ingredientReference].value[x] only Reference(Medication or Substance)
* extension[ingredientUri].value[x] only uri