Profile: ProfileMedicationStatementMedikation
Parent: MedicationStatement
Id: ProfileMedicationStatementMedikation
Title: "Profile - MedicationStatement - Medikation"
Description: "Dieses Profil beschreibt die Verordnung eines Arzneimittels oder den Konsum durch einen Patienten. MedicationStatement kann anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei kann es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"
* ^status = #active
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* id MS
* meta MS
  * source MS
  * profile MS
* partOf MS
* status MS
* medication[x] MS
* subject only $MII-Reference
* subject MS
* context MS
* effective[x] 1.. MS
* reasonReference MS
* dosage MS
  * text MS
  * timing MS
  * site MS
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains SNOMED 0..*
    * coding[SNOMED] from TargetSiteCodeUvIps (example)
      * ^patternCoding.system = "http://snomed.info/sct"
      * ^binding.description = "target site IPS"
      * system 1.. MS
      * code 1.. MS
  * route MS
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        EDQM 0..* MS and
        SNOMED 0..* MS
    * coding[EDQM] from RouteOfAdminUvIps (preferred)
      * ^patternCoding.system = "http://standardterms.edqm.eu"
      * ^binding.description = "EDQM Standard Terms"
      * system 1.. MS
      * code 1.. MS
    * coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
      * system 1.. MS
      * code 1.. MS
  * doseAndRate MS
    * dose[x] MS
    * rate[x] MS