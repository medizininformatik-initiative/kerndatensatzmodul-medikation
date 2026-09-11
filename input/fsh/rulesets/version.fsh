// Versions- und Paketherkunfts-RuleSets.
//
// Uebernommen aus kerndatensatz-basis (origin/HEAD: input/fsh/rulesets/version.fsh),
// mit der Identitaet DIESES Moduls. Die Version steht hier an EINER Stelle und
// wird beim Release gemeinsam gebumpt -- deshalb liegen CRMIPackageSource* hier
// und nicht in crmi.fsh.
//
// ACHTUNG beim Bump: alle Vorkommen von 2027.0.0-ballot in dieser Datei
// gehoeren zur EIGENEN Version. Die Abhaengigkeit auf kerndatensatz.meta traegt
// zufaellig eine aehnliche Nummer und darf NICHT mitgezogen werden.

Alias: $artifact-versionAlgorithm = http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm
Alias: $version-algorithm = http://hl7.org/fhir/version-algorithm

RuleSet: Version
* version = "2027.0.0-ballot"
* extension[+].url = $artifact-versionAlgorithm
* extension[=].valueCoding = $version-algorithm#semver "SemVer"

RuleSet: PR_CS_VS_Version
* ^version = "2027.0.0-ballot"
* ^extension[+].url = $artifact-versionAlgorithm
* ^extension[=].valueCoding = $version-algorithm#semver "SemVer"

// Paketherkunft. Die uri ist die Canonical DIESES Moduls -- mit `core/`, wie
// sie seit 2026.0.1 publiziert ist. (Das Template-Muster ohne Raumsegment
// steht an mehreren Stellen noch falsch; siehe sushi-config.yaml.)
RuleSet: CRMIPackageSource
* meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* meta.extension[=].extension[+].url = "packageId"
* meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.medikation"
* meta.extension[=].extension[+].url = "version"
* meta.extension[=].extension[=].valueString = "2027.0.0-ballot"
* meta.extension[=].extension[+].url = "uri"
* meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation"

RuleSet: CRMIPackageSourceDefinitionalResource
* ^meta.extension[+].url = "http://hl7.org/fhir/StructureDefinition/package-source"
* ^meta.extension[=].extension[+].url = "packageId"
* ^meta.extension[=].extension[=].valueId = "de.medizininformatikinitiative.kerndatensatz.medikation"
* ^meta.extension[=].extension[+].url = "version"
* ^meta.extension[=].extension[=].valueString = "2027.0.0-ballot"
* ^meta.extension[=].extension[+].url = "uri"
* ^meta.extension[=].extension[=].valueUri = "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation"

// Gueltigkeitsbeginn. Ein Release bleibt gueltig, bis ein spaeteres es ersetzt --
// deshalb nur der Start, kein Ende (wie in basis).
RuleSet: CRMIResourceEffectivePeriod
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension[=].valuePeriod.start = "2027"

RuleSet: CRMIResourceEffectivePeriodInstance
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension[=].valuePeriod.start = "2027"
