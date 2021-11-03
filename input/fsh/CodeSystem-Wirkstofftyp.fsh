CodeSystem: CodeSystemWirkstofftyp
Id: CodeSystemWirkstofftyp
Title: "CodeSystem - Wirkstofftypen"
Description: "Codes zur Differenzierung von Wirkstoffen zwischen genauer Substanz (z.B. Salz, Ester etc.), allgemeiner (normalisierter) Substanz und Kombinationscode für mehrere Wirkstoffe."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/wirkstofftyp"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"
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