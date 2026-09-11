ValueSet: MII_VS_Medikation_UNII
Id: mii-vs-medikation-unii
Title: "MII VS Medikation UNII"
Description: "Enthaelt Unique Ingredient Identifier (UNII-Codes)" 
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
* ^copyright = "U.S. Food and Drug Administration (FDA)"
* insert PR_CS_VS_Version
* insert Publisher
* insert LicenseCodeableCCBY40
* ^status = #active
* ^experimental = false
* ^date = "2025-11-05"
* include codes from system $unii|20250702