CodeSystem: MII_CS_Medikation_Wirkstofftyp
Id: mii-cs-medikation-wirkstofftyp
Title: "MII CS Medikation Wirkstofftyp"
Description: "Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp"
* insert Translation(^name, en-US, MII_CS_Medikation_IngredientType)
* insert Translation(^title, en-US, MII CS Medikation Ingredient Type)
* insert Translation(^description, en-US, Codes for differentiating ingredients between exact substance e.g. salt\, ester\, general normalized substance and combination code for several active ingredients.)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert LicenseCodeableCCBY40
* ^date = "2024-11-14"
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/wirkstofftyp"
* ^content = #complete
* #IN "ingredient" "The name of the substance."
* #IN ^designation.language = #de-DE
* #IN ^designation.value = "Wirkstoff allgemein"
* #PIN "precise ingredient" "The name of the substance expressed precisely as a salt or ester of the ingredient."
* #PIN ^designation.language = #de-DE
* #PIN ^designation.value = "Wirkstoff präzise"
* #MIN "multiple ingredients" "The name of the substances in a combination product."
* #MIN ^designation.language = #de-DE
* #MIN ^designation.value = "Kombinationswirkstoff"