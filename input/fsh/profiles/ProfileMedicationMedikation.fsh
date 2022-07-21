Profile: ProfileMedicationMedikation
Parent: Medication
Id: ProfileMedicationMedikation
Title: "Profile - Medication - Medikation"
Description: "Dieses Profil beschreibt die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Die Angabe mindestens eines Wirkstoffes wird verlangt."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* ^status = #active
* ^date = "2021-09-14"
* ^publisher = "Medizininformatik Initiative"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de/"
* . ^comment = "MI-I Medikation"
* id MS
* meta MS
  * source MS
  * profile MS
* code MS
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      Pharmazentralnummer 0..* MS and
      atcClassDe 0..* MS and
      atcClassEn 0..* MS
  * coding[Pharmazentralnummer] ^patternCoding.system = "http://fhir.de/CodeSystem/ifa/pzn"
    * system 1.. MS
    * code 1.. MS
  * coding[atcClassDe] from $atc_2 (example)
    * ^short = "ATC Klassifikation deutsche Version"
    * ^definition = "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten"
    * ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/atc"
    * system 1.. MS
    * code 1.. MS
  * coding[atcClassEn] ^short = "Anatomical Therapeutic Chemical Classification System"
    * ^definition = "ATC Classification International WHO Version"
    * ^patternCoding.system = "http://www.whocc.no/atc"
    * system 1.. MS
    * code 1.. MS
  * text MS
* form MS
* form from DoseFormUvIps (preferred)
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
    * ^definition = "EDQM pharmaceutical dose forms sind bevorzugt zu verwenden. SNOMED CT und IFA Codes sind Alternativen."
  * coding contains EDQM 0..* MS
  * coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
    * system 1.. MS
    * code 1.. MS
* ingredient 1.. MS
  * extension ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "url"
    * ^slicing.rules = #open
  * extension contains
      ExtensionWirkstofftyp named Wirkstofftyp 0..1 MS and
      ExtensionWirkstoffrelation named Wirkstoffrelation 0..* MS
  * item[x] only CodeableConcept or Reference
    * ^slicing.discriminator.type = #type
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * itemCodeableConcept only CodeableConcept
  * itemCodeableConcept MS
    * ^sliceName = "itemCodeableConcept"
    * coding 1.. MS
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        ASK 0..* MS and
        UNII 0..* MS and
        CAS 0..* MS and
        SNOMED 0..* MS
    * coding[ASK] from $ask_1 (example)
      * ^short = "Arzneistoffkatalog(ASK)-Nummer"
      * ^patternCoding.system = "http://fhir.de/CodeSystem/ask"
      * system 1.. MS
      * code 1.. MS
    * coding[UNII] ^short = "Unique Ingredient Identifier"
      * ^patternCoding.system = "http://fdasis.nlm.nih.gov"
      * system 1.. MS
      * code 1.. MS
    * coding[CAS] ^short = "Chemical abstract codes"
      * ^patternCoding.system = "urn:oid:2.16.840.1.113883.6.61"
      * system 1.. MS
      * code 1.. MS
    * coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
      * system 1.. MS
      * code 1.. MS
    * text MS
  * strength MS
    * numerator MS
    * denominator MS