Extension: SD_MII_Medikation_Wirkstoffrelation
Id: sd-mii-medikation-wirkstoffrelation
Title: "SD MII Medikation Wirkstoffrelation"
Description: "Die Extension ermöglicht die Zuordnung von einem genauem Wirkstoff (z.B. Salz, Ester) zu einem allgemeinem Wirkstoff."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* ^version = "2.0"
* ^experimental = false
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* ^context.type = #element
* ^context.expression = "Medication.ingredient"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    ingredientReference 0..1 and
    ingredientUri 0..1
* extension[ingredientReference].value[x] only Reference
* extension[ingredientReference].value[x] ^slicing.discriminator.type = #type
* extension[ingredientReference].value[x] ^slicing.discriminator.path = "$this"
* extension[ingredientReference].value[x] ^slicing.rules = #open
* extension[ingredientReference].valueReference only Reference(Medication or Substance)
* extension[ingredientReference].valueReference ^sliceName = "valueReference"
* extension[ingredientUri].value[x] only uri
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" (exactly)