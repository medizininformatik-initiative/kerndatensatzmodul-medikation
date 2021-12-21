
Profile: ProfileListMedikationsliste
Parent: List
Id: ProfileListMedikationsliste
Title: "Profile - List- Medikationsliste"
Description: "Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/List"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* obeys medication-list-context-1 and medication-list-context-2
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains medCode 1..1 and contextCode 1..1
* code.coding[medCode] = http://terminology.hl7.org/CodeSystem/list-example-use-codes#medications
* code.coding[contextCode] from CaseContextCodes (required)
* subject only Reference(Patient)
* entry.flag ..0
* entry.deleted ..0
* entry.item only Reference(ProfileMedicationStatementMedikation)

ValueSet: CaseContextCodes
Id: ValueSetCaseContextCodes
Title: "ValueSet - Case Context Codes"
Description: "Codes zur Differenzierung des Kontextes in dem eine Medikationsliste verwaltet wird."
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

Instance: ExampleMedicationList-1
InstanceOf: ProfileListMedikationsliste
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/List"
* status = #current
* mode = #snapshot
* title = "Aufnahmemedikation"
* code.coding[medCode] = http://terminology.hl7.org/CodeSystem/list-example-use-codes#medications
* code.coding[contextCode] = urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E210
* subject = Reference(Patient/example)
* entry[+].item = Reference(MedicationStatement/example)

Instance: ExampleMedicationList-2
InstanceOf: ProfileListMedikationsliste
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/List"
* status = #current
* mode = #working
* title = "Aktuelle medikamentöse Therapie"
* code.coding[medCode] = http://terminology.hl7.org/CodeSystem/list-example-use-codes#medications
* code.coding[contextCode] = urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E200
* subject = Reference(Patient/example)
* entry[+].item = Reference(MedicationStatement/example)