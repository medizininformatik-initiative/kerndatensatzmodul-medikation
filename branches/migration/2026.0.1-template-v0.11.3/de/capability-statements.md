# CapabilityStatements - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* **CapabilityStatements**

## CapabilityStatements

### CapabilityStatement

Um eine dezentrale Datenauswertung über das Deutsche Forschungsdatenportal für Gesundheit der Medizininformatik-Initiative zu ermöglichen, MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/http.html#capabilities) unterstützt werden, sodass durch den FHIR-Server unter `[BASE_URL]/metadata` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden, welche Profile inklusive Version sowie welche Suchparameter unterstützt werden.

Nachfolgend wird aufgelistet, welche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement-Instanz unter [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: `https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata`

#### Suchparameter

Dieses Modul deklariert **keine eigenen SearchParameter-Ressourcen**. Welche Suchparameter unterstützt werden MÜSSEN, ergibt sich aus dem oben dargestellten CapabilityStatement; die Definitionen stammen aus der FHIR-Basisspezifikation und aus der MII-weiten Suchparameterliste des [Meta-Moduls](https://github.com/medizininformatik-initiative/kerndatensatz-meta). Die MII-weiten Festlegungen werden dort zentral gepflegt und hier nicht wiederholt.

