Extension: ExtensionWirkstoffrelation
Id: ExtensionWirkstoffrelation
Title: "Extension - Wirkstoffrelation"
Description: "Ermöglicht die Zuordnung von genauem (z.B. Salz, Ester) zu allgemeinem Wirkstoff."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation"
* ^experimental = false
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* ^context.type = #element
* ^context.expression = "Medication.ingredient"
* extension ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains
    ingredientReference 0..1 and
    ingredientUri 0..1
* extension[ingredientReference].value[x] only Reference
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* extension[ingredientReference].valueReference only Reference(Medication or Substance)
  * ^sliceName = "valueReference"
* extension[ingredientUri].value[x] only uri
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstoffrelation" (exactly)