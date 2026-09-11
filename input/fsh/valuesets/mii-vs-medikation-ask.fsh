ValueSet: MII_VS_Medikation_ASK
Id: mii-vs-medikation-ask
Title: "MII VS Medikation ASK"
Description: "Enthaelt alle ASK-Codes" 
// CRMI-Artefakt-Metadaten (Muster: kerndatensatz-basis)
* insert CRMIShareableValueSet
* insert CRMIPublishableValueSet
* insert CRMIComputableValueSet
* insert CRMIKnowledgeCapabilitiesValueSet
* insert CRMIVersionPolicyStrict
* insert CRMIPackageSourceDefinitionalResource
* insert CRMIResourceEffectivePeriod
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C459)
* insert CRMIArtifactContributors
* insert CRMIApprovalDate(2026-09-09)
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^copyright = "BfArM 1994 - 2026 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)."
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^status = #active
* ^experimental = false
* ^date = "2026-02-13"
* include codes from system $cs-ask