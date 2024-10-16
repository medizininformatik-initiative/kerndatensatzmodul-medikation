
Profile: MII_PR_Medikation_Medikationsliste
Parent: List
Id: mii-pr-medikation-medikationsliste
Title: "MII PR Medikation Medikationsliste"
Description: "Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
* insert Translation(^name, en-US, MII_PR_Medikation_Medicationlist)
* insert Translation(^title, de-DE, Medikationsliste)
* insert Translation(^title, en-US, Medicationlist)
* insert Translation(^description, de-DE, Sammlung der Medikationen\, die ein Patient zu einem bestimmten Zeitpunkt einnimmt\, beispielsweise bei Aufnahme oder Entlassung)
* insert Translation(^description, en-US, List of discrete medications e.g. for documentation of admission or discharge medication.)
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* ^date = "2024-10-15"
* obeys medication-list-context-1 and medication-list-context-2
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* status MS
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, aktuell | inaktiv | Eingabe fehlerhaft)
* insert Translation(status ^definition, en-US, current | retired | entered-in-error)
* mode MS
* insert Translation(mode ^short, de-DE, Modus)
* insert Translation(mode ^short, en-US, Mode)
* insert Translation(mode ^definition, de-DE, Arbeitsmodus | Momentaufnahme | Änderungen)
* insert Translation(mode ^definition, en-US, working | snapshot | changes)
* code MS
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, ambulanter Kontakt | stationärer Aufenthalt | stationäre Aufnahme | stationäre Entlassung)
* insert Translation(code ^definition, en-US, ambulatory contact | inpatient stay | inpatient admission | inpatient discharge)
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains medCode 1..1 and contextCode 1..1
* code.coding[medCode] MS
* code.coding[medCode].system MS
* code.coding[medCode].code MS
* code.coding[medCode] = http://terminology.hl7.org/CodeSystem/list-example-use-codes#medications
* code.coding[contextCode] MS
* code.coding[contextCode] from mii-vs-medikation-fallkontext (required)
* code.coding[contextCode].system MS
* code.coding[contextCode] ^patternCoding.system = "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung"
* code.coding[contextCode].code MS
* subject 1.. MS
* subject only Reference(Patient)
* encounter MS
* insert Translation(encounter ^short, de-DE, Fall oder Kontakt)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Fall oder Kontakt\, bei dem die Medikationsliste erstellt wurde.)
* insert Translation(encounter ^definition, en-US, Encounter during which the medication list was created.)
* date MS
* insert Translation(date ^short, de-DE, Datum)
* insert Translation(date ^short, en-US, Date)
* insert Translation(date ^definition, de-DE, Das Datum\, an dem die Medikationsliste erstellt wurde.)
* insert Translation(date ^definition, en-US, The date that the medication list was prepared.)
* entry MS
* insert Translation(entry ^short, de-DE, Eintrag)
* insert Translation(entry ^short, en-US, Entry)
* insert Translation(entry ^definition, de-DE, Eintrag in der Medikationsliste vom Typ MedicationStatement.)
* insert Translation(entry ^definition, en-US, An entry in the medication list that is a MedicationStatement.)
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
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* insert IHE_Copyright
* ^date = "2024-05-29"
* $ihe-xds-fallkontext#E100 "ambulanter Kontakt"
* $ihe-xds-fallkontext#E200 "stationärer Aufenthalt"
* $ihe-xds-fallkontext#E210 "stationäre Aufnahme"
* $ihe-xds-fallkontext#E230 "stationäre Entlassung"

Invariant: medication-list-context-1
Description: "Wenn der Kontext Aufnahme, Entlassung oder ambulanter Kontakt ist, soll der mode 'snapshot' sein."
Severity: #error
Expression: "List.code.coding.where(system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E210' or system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E230' or system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E100').exists() implies List.mode='snapshot'"

Invariant: medication-list-context-2
Description: "Wenn der Kontext stationärer Aufenthalt ist, soll der mode 'working' sein."
Severity: #error
Expression: "List.code.coding.where(system='http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung' and code='E200').exists() implies List.mode='working'"
