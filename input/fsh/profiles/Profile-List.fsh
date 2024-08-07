
Profile: MII_PR_Medikation_Medikationsliste
Parent: List
Id: mii-pr-medikation-medikationsliste
Title: "MII PR Medikation Medikationsliste"
Description: "Liste einzelner Medikationen z.B. zur Dokumentation der Aufnahme- oder Entlassmedikation."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"
* insert Translation(^name, en-US, MII_PR_Medikation_Medicationlist)
* insert Translation(^title, en-US, MII PR Medikation Medicationlist)
* insert Translation(^description, en-US, List of discrete medications e.g. for documentation of admission or discharge medication.)
* insert PR_CS_VS_Version
* insert Publisher
* insert KDS_Copyright
* ^date = "2024-05-29"
* obeys medication-list-context-1 and medication-list-context-2
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* status MS
* mode MS
* code MS
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
