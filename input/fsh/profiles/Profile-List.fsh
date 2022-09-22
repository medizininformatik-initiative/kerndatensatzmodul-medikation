
Profile: MII_PR_Medikation_Medikationsliste
Parent: List
Id: mii-pr-medikation-medikationsliste
Title: "MII PR Medikation Medikationsliste"
Description: "Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
* insert Translation(^name, en-US, MII_PR_Medikation_Medicationlist)
* insert Translation(^title, en-US, MII PR Medikation Medicationlist)
* insert Translation(^description, en-US, List of discrete medications e.g. for documentation of admission or discharge medication.)
* ^status = #draft
* insert Publisher
* obeys medication-list-context-1 and medication-list-context-2
* meta MS
* meta.source MS
* meta.profile MS
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
* code.coding[contextCode] from mii-vs-medikation-fallkontext (required)
* subject MS
* subject only Reference(Patient)
* encounter MS
* date MS
* entry MS
* entry.flag ..0
* entry.deleted ..0
* entry.item MS
* entry.item only Reference(mii-pr-medikation-medication-statement)

ValueSet: MII_VS_Medikation_Fallkontext
Id: mii-vs-medikation-fallkontext
Title: "MII VS Medikation Fallkontext"
Description: "Codes zur Differenzierung des Kontextes in dem eine Medikationsliste verwaltet wird."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/fallkontext"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
//* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"
* urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E100 "ambulanter Kontakt"
* urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E200 "stationärer Aufenthalt"
* urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E210 "stationäre Aufnahme"
* urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E230 "stationäre Entlassung"

Invariant: medication-list-context-1
Description: "Wenn der Kontext Aufnahme oder Entlassung ist, soll der mode 'snapshot' sein. "
Severity: #error
Expression: "List.code.coding.where(system='urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16' and code='E210' or system='urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16' and code='E230').exists() implies List.mode='snapshot'"

Invariant: medication-list-context-2
Description: "Wenn der Kontext stationärer Aufenthalt ist, soll der mode 'working' sein."
Severity: #error
Expression: "List.code.coding.where(system='urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16' and code='E200').exists() implies List.mode='working'"
