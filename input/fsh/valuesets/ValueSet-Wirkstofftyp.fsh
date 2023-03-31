ValueSet: MII_VS_Medikation_Wirkstofftyp
Id: mii-vs-medikation-wirkstofftyp
Title: "MII VS Medikation Wirkstofftypen"
Description: "Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/wirkstofftyp"
* insert Translation(^name, en-US, MII_VS_Medikation_IngredientType)
* insert Translation(^title, en-US, MII VS Medikation IngredientType)
* insert Translation(^description, en-US, Codes for differentiating ingredients between exact substance e.g. salt\, ester\, general normalized substance and combination code for several active ingredients.)
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* include codes from system $cs-wirkstofftyp