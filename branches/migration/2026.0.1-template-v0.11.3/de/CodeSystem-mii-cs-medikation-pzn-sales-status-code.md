# MII CS Medikation PZN Sales Status Codes - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Medikation PZN Sales Status Codes**

## CodeSystem: MII CS Medikation PZN Sales Status Codes 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/mii-cs-medikation-pzn-sales-status-code | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_CS_Medikation_PZN_Sales_Status_Codes |
| **Copyright/Rechtliches**: Für die Nutzung der Rohdaten der Vidal MMI GmbH wurde mit der TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V. ein Nutzungsvertrag für die Nutzung der Daten innerhalb der Medizininformatik-Initiative gezeichnet. Diese Lizenzbedingungen erlauben die überlassenen Daten als 'Quelle zur Dokumentation, Recherche und Identifikation von Arzneimitteln zu installieren, zu testen, zu nutzen, bereitzustellen, sowie Anwendern der Lizenznehmer Produkte den Zugriff auf die Daten zu all diesen Zwecken zu gewähren (öffentliches Zugänglichmachen)'. Eine Nutzung dieser Distribution ist somit nur innerhalb der Projekte der Medizininformatik-Initiative und des Netzwerks Universitätsmedizin erlaubt. | |

 
This code system contains the sales status codes (catalog #116) for medications in the http://fhir.de/CodeSystem/ifa/pzn CodeSystem. This representation was generated from the MMI Pharmindex R3 raw data files. It is distributed under license for the purposes of integration into the software systems of the Medical Informatics Initiative and the Network University Medicine. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Medikation PZN Sales Status Codes](ValueSet-mii-vs-medikation-pzn-sales-status-code.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-medikation-pzn-sales-status-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/mii-cs-medikation-pzn-sales-status-code",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Medikation_PZN_Sales_Status_Codes",
  "title" : "MII CS Medikation PZN Sales Status Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-02T14:23:10+00:00",
  "publisher" : "NUM-DIZ",
  "_publisher" : {
    "extension" : [{
      "extension" : [{
        "url" : "lang",
        "valueCode" : "de"
      },
      {
        "url" : "content",
        "valueString" : "NUM-DIZ"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/translation"
    }]
  },
  "contact" : [{
    "name" : "NUM-DIZ",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.netzwerk-universitaetsmedizin.de"
    }]
  }],
  "description" : "This code system contains the sales status codes (catalog #116) for medications in the http://fhir.de/CodeSystem/ifa/pzn CodeSystem. This representation was generated from the MMI Pharmindex R3 raw data files. It is distributed under license for the purposes of integration into the software systems of the Medical Informatics Initiative and the Network University Medicine.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Für die Nutzung der Rohdaten der Vidal MMI GmbH wurde mit der TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V. ein Nutzungsvertrag für die Nutzung der Daten innerhalb der Medizininformatik-Initiative gezeichnet. Diese Lizenzbedingungen erlauben die überlassenen Daten als 'Quelle zur Dokumentation, Recherche und Identifikation von Arzneimitteln zu installieren, zu testen, zu nutzen, bereitzustellen, sowie Anwendern der Lizenznehmer Produkte den Zugriff auf die Daten zu all diesen Zwecken zu gewähren (öffentliches Zugänglichmachen)'. Eine Nutzung dieser Distribution ist somit nur innerhalb der Projekte der Medizininformatik-Initiative und des Netzwerks Universitätsmedizin erlaubt.",
  "caseSensitive" : false,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-pzn-sales-status-code",
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "D",
    "display" : "Wegfall",
    "definition" : "Verkehrsfähigkeit ist erloschen"
  },
  {
    "code" : "F",
    "display" : "Außer Vertrieb",
    "definition" : "Lagerware darf abverkauft werden, sofern der 'Verkehrsfähigkeitsstatus' dies zulässt"
  },
  {
    "code" : "N",
    "display" : "Im Vertrieb",
    "definition" : "Ein Artikel mit Status im Vertrieb ist im Markt erhältlich und wird vom Anbieter vertrieben"
  },
  {
    "code" : "R",
    "display" : "Rückruf",
    "definition" : "Ein Artikel, der zurückgerufen wurde darf nicht mehr abgegeben werden"
  },
  {
    "code" : "Z",
    "display" : "Zurückgezogen",
    "definition" : "Ein Artikel, der zurückgezogen wurde darf nicht mehr abgegeben werden"
  }]
}

```
