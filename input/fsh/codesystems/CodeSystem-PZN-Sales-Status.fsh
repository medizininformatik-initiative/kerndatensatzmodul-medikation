// Verkaufsstatus-Codes (MMI-Pharmindex-Katalog #116) zu Artikeln des
// PZN-CodeSystems http://fhir.de/CodeSystem/ifa/pzn.
//
// Zweck: die Angabe soll als PROPERTY an einer PZN-Codierung hinterlegt werden
// koennen, damit erkennbar bleibt, ob ein Artikel zum Dokumentationszeitpunkt
// im Vertrieb war. Das adressiert unmittelbar das Problem, dass PZN fluechtig
// sind: ein Code, der heute im Katalog fehlt, war moeglicherweise zum
// Behandlungszeitpunkt regulaer im Verkehr.
//
// LIZENZ: Der Inhalt stammt aus den MMI-Pharmindex-R3-Rohdaten. Herausgeber und
// Lizenz kommen aus `insert Legal_PZN` - dem RuleSet, mit dem die Service Unit
// Terminologische Dienste das PZN-CodeSystem selbst auszeichnet (uebernommen aus
// gitlab.com/mii-termserv/fhir-resources/de.pharmazentralnummer). Weder
// `insert Publisher` (MII) noch `insert LicenseCodeableCCBY40` waeren hier
// zutreffend: Herausgeber ist die IFA/Vidal MMI, und die Nutzung ist
// vertraglich auf Projekte der MII und des NUM beschraenkt.

CodeSystem: MII_CS_Medikation_PZN_Sales_Status_Codes
Id: mii-cs-medikation-pzn-sales-status-code
Title: "MII CS Medikation PZN Sales Status Codes"
Description: "This code system contains the sales status codes (catalog #116) for medications in the http://fhir.de/CodeSystem/ifa/pzn CodeSystem. This representation was generated from the MMI Pharmindex R3 raw data files. It is distributed under license for the purposes of integration into the software systems of the Medical Informatics Initiative and the Network University Medicine."
// CRMI-Artefakt-Metadaten (Muster: kerndatensatz-basis)
* ^date = "2026-09-09"
* insert CRMIShareableCodeSystem
* insert CRMIPublishableCodeSystem
// shr-1 verlangt: wenn knowledge capabilities angegeben sind, MUSS shareable
// dabei sein. Die ...Publishable-Variante setzt nur publishable und ist fuer
// CodeSystems gedacht, die das Shareable-Profil NICHT beanspruchen. Unsere tun
// es (meta.profile crmi-shareablecodesystem), also die vollstaendige Variante.
* insert CRMIKnowledgeCapabilitiesCodeSystem
* insert CRMIVersionPolicyStrict
* insert CRMIPackageSourceDefinitionalResource
* insert CRMIApprovalDate(2026-09-09)
* insert CRMIResourceEffectivePeriod
* insert CRMIArtifactContributors
* insert CRMIArtifactTopic(http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl, C459)
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/mii-cs-medikation-pzn-sales-status-code"
* ^status = #active
* ^experimental = false
* ^caseSensitive = false
* ^content = #complete
* insert PR_CS_VS_Version
* insert Legal_PZN
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-pzn-sales-status-code"
* #D "Wegfall" "Verkehrsfähigkeit ist erloschen"
* #F "Außer Vertrieb" "Lagerware darf abverkauft werden, sofern der 'Verkehrsfähigkeitsstatus' dies zulässt"
* #N "Im Vertrieb" "Ein Artikel mit Status im Vertrieb ist im Markt erhältlich und wird vom Anbieter vertrieben"
* #R "Rückruf" "Ein Artikel, der zurückgerufen wurde darf nicht mehr abgegeben werden"
* #Z "Zurückgezogen" "Ein Artikel, der zurückgezogen wurde darf nicht mehr abgegeben werden"

ValueSet: MII_VS_Medikation_PZN_Sales_Status_Codes
Id: mii-vs-medikation-pzn-sales-status-code
Title: "MII VS Medikation PZN Sales Status Codes"
Description: "Alle Verkaufsstatus-Codes des CodeSystems MII CS Medikation PZN Sales Status Codes."
// CRMI-Artefakt-Metadaten (Muster: kerndatensatz-basis)
* ^date = "2026-09-09"
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
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-pzn-sales-status-code"
* ^status = #active
* ^experimental = false
* insert PR_CS_VS_Version
* insert Legal_PZN
* include codes from system MII_CS_Medikation_PZN_Sales_Status_Codes
