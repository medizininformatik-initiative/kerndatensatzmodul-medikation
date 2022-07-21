Extension: ExtensionWirkstofftyp
Id: ExtensionWirkstofftyp
Title: "Extension - Wirkstofftyp"
Description: "Extension zur Differenzierung des Wirkstofftyps in allgemeinen, genauen oder Kombinationswirkstoff."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp"
* ^experimental = false
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* ^context.type = #element
* ^context.expression = "Medication.ingredient"
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x] from ValueSetWirkstofftyp (required)
  * system 1..
  * system = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp" (exactly)
  * code 1..