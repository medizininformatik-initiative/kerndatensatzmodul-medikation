Profile: ProfileMedicationAdministrationMedikation
Parent: MedicationAdministration
Id: ProfileMedicationAdministrationMedikation
Title: "Profile - MedicationAdministration - Medikation"
Description: "Dieses Profil beschreibt Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben etc."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"
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
* effective[x] MS
* reasonReference MS
* dosage MS
  * site MS
    * coding MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains SNOMED 0..* MS
    * coding[SNOMED] from TargetSiteCodeUvIps (example)
      * ^patternCoding.system = "http://snomed.info/sct"
      * ^binding.description = "target site IPS"
      * system 1.. MS
      * code 1.. MS
  * route MS
    * coding MS
    * coding from RouteOfAdminUvIps (preferred)
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
      * ^binding.description = "EDQM Standards Terms"
    * coding contains
        EDQM 0..1 MS and
        SNOMED 0..1 MS
    * coding[EDQM] from RouteOfAdminUvIps (preferred)
      * ^patternCoding.system = "http://standardterms.edqm.eu"
      * ^binding.description = "EDQM Standard Terms"
      * system 1.. MS
      * code 1.. MS
    * coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
      * system 1.. MS
      * code 1.. MS
  * dose MS
  * rate[x] MS