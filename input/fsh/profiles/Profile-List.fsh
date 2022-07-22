
Profile: SD_MII_Medikation_Medikationsliste
Parent: List
Id: sd-mii-medikation-medikationsliste
Title: "SD MII Medikation Medikationsliste"
Description: "Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
//* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* obeys medication-list-context-1 and medication-list-context-2
* status MS
* mode MS
* code MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains medCode 1..1 and contextCode 1..1
* code.coding[medCode] MS
* code.coding[contextCode] MS
* code.coding[medCode] = http://terminology.hl7.org/CodeSystem/list-example-use-codes#medications
* code.coding[contextCode] from VS_MII_Medikation_Fallkontext (required)
* subject MS
* subject only Reference(Patient)
* encounter MS
* date MS
* entry MS
* entry.flag ..0
* entry.deleted ..0
* entry.item MS
* entry.item only Reference(SD_MII_Medikation_MedicationStatement)

ValueSet: VS_MII_Medikation_Fallkontext
Id: vs-mii-medikation-fallkontext
Title: "VS MII Medikation Fallkontext"
Description: "Codes zur Differenzierung des Kontextes in dem eine Medikationsliste verwaltet wird."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"
* include urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E200 "stationärer Aufenthalt"
* include urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E210 "stationäre Aufnahme"
* include urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E230 "stationäre Entlassung"

Invariant: medication-list-context-1
Description: "Wenn der Kontext Aufnahme oder Entlassung ist, soll der mode 'snapshot' sein. "
Severity: #error
Expression: "List.code.coding.where(system='urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16' and code='E210' or system='urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16' and code='E230').exists() implies List.mode='snapshot'"

Invariant: medication-list-context-2
Description: "Wenn der Kontext stationärer Aufenthalt ist, soll der mode 'working' sein."
Severity: #error
Expression: "List.code.coding.where(system='urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16' and code='E200').exists() implies List.mode='working'"
