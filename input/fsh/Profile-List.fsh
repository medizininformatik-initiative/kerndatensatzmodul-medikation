
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
* mode = #snapshot
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains medCode 1..1 and contextCode 1..1
* code.coding[medCode] = http://terminology.hl7.org/CodeSystem/list-example-use-codes#medications
* code.coding[contextCode] from CaseContextCodes (required)
* subject only Reference(Patient)
* entry.flag ..0
* entry.deleted ..0
* entry.date ..0
* entry.item only Reference(ProfileMedicationStatementMedikation)

ValueSet: CaseContextCodes
Id: case-context-codes
Title: "Case Context Codes"

* include urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E210 "stationäre Aufnahme"
* include urn:oid:1.3.6.1.4.1.19376.3.276.1.5.16#E230 "stationäre Entlassung"