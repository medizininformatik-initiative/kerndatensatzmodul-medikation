---
parent: 
---
## {{page-title}}

Um eine dezentrale Datenauswertung über das Deutsche Forschungsdatenportal für Gesundheit der Medizininformatik-Initiative zu ermöglichen, MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/http.html#capabilities) untersützt werden, sodass durch durch den FHIR-Server unter ```[BASE_URL]/metadata``` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden, welche Profile inkl. Version, sowie welche Suchparameter unterstüzt werden.

Nachfolgend wird aufgelistet, welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: ```https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata```

[Link Simplifier Profil Übersicht](https://simplifier.net/resolve?canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata&fhirVersion=R4&scope=de.medizininformatikinitiative.kerndatensatz.medikation@2025.0.0)


{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata}}