Profile: MII_PR_Medikation_Medication
Parent: Medication
Id: mii-pr-medikation-medication
Title: "MII PR Medikation Medication"
Description: "Dieses Profil beschreibt die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Die Angabe mindestens eines Wirkstoffes wird verlangt."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"
* insert Translation(^name, en-US, MII_PR_Medikation_Medication)
* insert Translation(^title, en-US, MII PR Medikation Medication)
* insert Translation(^description, en-US, The profile describes a prepackaged drug or formulation.)
* insert PR_CS_VS_Version
* ^status = #active
* ^date = "2024-05-29"
* insert Publisher
* insert KDS_Copyright
* . ^comment = "MI-I Medikation"
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    Pharmazentralnummer 0..* MS and
    atcClassDe 0..* MS and
    atcClassEn 0..* MS
* code.coding[Pharmazentralnummer] ^sliceName = "Pharmazentralnummer"
* code.coding[Pharmazentralnummer] from $pzn-vs (required)
* code.coding[Pharmazentralnummer] ^patternCoding.system = "http://fhir.de/CodeSystem/ifa/pzn"
* code.coding[Pharmazentralnummer] ^mustSupport = true
* code.coding[Pharmazentralnummer].system 1.. MS
* code.coding[Pharmazentralnummer].code 1.. MS
* code.coding[atcClassDe] from $vs-atc (required)
* code.coding[atcClassDe] ^sliceName = "atcClassDe"
* code.coding[atcClassDe] ^short = "ATC Klassifikation deutsche Version"
* code.coding[atcClassDe] ^definition = "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten"
* code.coding[atcClassDe] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/atc"
* code.coding[atcClassDe] ^mustSupport = true
* code.coding[atcClassDe].system 1.. MS
* code.coding[atcClassDe].version 1.. MS
* code.coding[atcClassDe].code 1.. MS
* code.coding[atcClassEn] ^sliceName = "atcClassEn"
* code.coding[atcClassEn] ^short = "Anatomical Therapeutic Chemical Classification System"
* code.coding[atcClassEn] ^definition = "ATC Classification International WHO Version"
* code.coding[atcClassEn] ^patternCoding.system = "http://www.whocc.no/atc"
* code.coding[atcClassEn] ^mustSupport = true
* code.coding[atcClassEn].system 1.. MS
* code.coding[atcClassEn].version 1.. MS
* code.coding[atcClassEn].code 1.. MS
* code.text MS
* form MS
* form from $medicine-doseform (preferred)
* form.coding MS
* form.coding ^slicing.discriminator.type = #pattern
* form.coding ^slicing.discriminator.path = "$this"
* form.coding ^slicing.rules = #open
* form.coding contains
    EDQM 0..*
* form.coding ^definition = "EDQM pharmaceutical dose forms sind bevorzugt zu verwenden. SNOMED CT und IFA Codes sind Alternativen."
* form.coding[EDQM] ^sliceName = "EDQM"
* form.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* form.coding[EDQM] ^mustSupport = true
* form.coding[EDQM].system 1.. MS
* form.coding[EDQM].code 1.. MS
* ingredient 1.. MS
* ingredient.extension MS
* ingredient.extension ^slicing.discriminator.type = #value
* ingredient.extension ^slicing.discriminator.path = "url"
* ingredient.extension ^slicing.rules = #open
* ingredient.extension contains
    $ex-wirkstofftyp named Wirkstofftyp 0..1 MS and
    $ex-wirkstoffrelation named Wirkstoffrelation 0..* MS
* ingredient.item[x] only CodeableConcept or Reference
* ingredient.item[x] ^slicing.discriminator.type = #type
* ingredient.item[x] ^slicing.discriminator.path = "$this"
* ingredient.item[x] ^slicing.rules = #open
* ingredient.itemReference MS
* ingredient.itemReference only Reference(Substance or mii-pr-medikation-medication)
* ingredient.itemCodeableConcept only CodeableConcept
* ingredient.itemCodeableConcept MS
* ingredient.itemCodeableConcept ^sliceName = "itemCodeableConcept"
* ingredient.itemCodeableConcept.coding 1.. MS
* ingredient.itemCodeableConcept.coding ^slicing.discriminator.type = #pattern
* ingredient.itemCodeableConcept.coding ^slicing.discriminator.path = "$this"
* ingredient.itemCodeableConcept.coding ^slicing.rules = #open
* ingredient.itemCodeableConcept.coding contains
    ASK 0..* MS and
    UNII 0..* MS and
    CAS 0..* MS and
    SNOMED 0..* MS
* ingredient.itemCodeableConcept.coding[ASK] from $vs-ask (required)
* ingredient.itemCodeableConcept.coding[ASK] ^sliceName = "ASK"
* ingredient.itemCodeableConcept.coding[ASK] ^short = "Arzneistoffkatalog(ASK)-Nummer"
* ingredient.itemCodeableConcept.coding[ASK] ^patternCoding.system = "http://fhir.de/CodeSystem/ask"
* ingredient.itemCodeableConcept.coding[ASK] ^mustSupport = true
* ingredient.itemCodeableConcept.coding[ASK].system 1.. MS
* ingredient.itemCodeableConcept.coding[ASK].code 1.. MS
* ingredient.itemCodeableConcept.coding[UNII] ^sliceName = "UNII"
* ingredient.itemCodeableConcept.coding[UNII] ^short = "Unique Ingredient Identifier"
* ingredient.itemCodeableConcept.coding[UNII] ^patternCoding.system = "http://fdasis.nlm.nih.gov"
* ingredient.itemCodeableConcept.coding[UNII] ^mustSupport = true
* ingredient.itemCodeableConcept.coding[UNII].system 1.. MS
* ingredient.itemCodeableConcept.coding[UNII].code 1.. MS
* ingredient.itemCodeableConcept.coding[CAS] ^sliceName = "CAS"
* ingredient.itemCodeableConcept.coding[CAS] ^short = "Chemical abstract codes"
* ingredient.itemCodeableConcept.coding[CAS] ^patternCoding.system = "urn:oid:2.16.840.1.113883.6.61"
* ingredient.itemCodeableConcept.coding[CAS] ^mustSupport = true
* ingredient.itemCodeableConcept.coding[CAS].system 1.. MS
* ingredient.itemCodeableConcept.coding[CAS].code 1.. MS
* ingredient.itemCodeableConcept.coding[SNOMED] ^sliceName = "SNOMED"
* ingredient.itemCodeableConcept.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* ingredient.itemCodeableConcept.coding[SNOMED] ^mustSupport = true
* ingredient.itemCodeableConcept.coding[SNOMED].system 1.. MS
* ingredient.itemCodeableConcept.coding[SNOMED].code 1.. MS
* ingredient.itemCodeableConcept.text MS
* ingredient.strength MS
* ingredient.strength.numerator MS
* ingredient.strength.denominator MS