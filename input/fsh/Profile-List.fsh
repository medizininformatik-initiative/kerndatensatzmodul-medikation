
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
* code = $list-example-use-codes#medications "Medication List"
* subject only Reference(Patient)
* entry.flag ..0
* entry.deleted ..0
* entry.date ..0
* entry.item only Reference(ProfileMedicationStatementMedikation)