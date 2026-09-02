# MII VS Medikation PZN Sales Status Codes - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Medikation PZN Sales Status Codes**

## ValueSet: MII VS Medikation PZN Sales Status Codes 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-pzn-sales-status-code | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-02 | *Maschinenlesbarer Name*:MII_VS_Medikation_PZN_Sales_Status_Codes |
| **Copyright/Rechtliches**: Für die Nutzung der Rohdaten der Vidal MMI GmbH wurde mit der TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V. ein Nutzungsvertrag für die Nutzung der Daten innerhalb der Medizininformatik-Initiative gezeichnet. Diese Lizenzbedingungen erlauben die überlassenen Daten als 'Quelle zur Dokumentation, Recherche und Identifikation von Arzneimitteln zu installieren, zu testen, zu nutzen, bereitzustellen, sowie Anwendern der Lizenznehmer Produkte den Zugriff auf die Daten zu all diesen Zwecken zu gewähren (öffentliches Zugänglichmachen)'. Eine Nutzung dieser Distribution ist somit nur innerhalb der Projekte der Medizininformatik-Initiative und des Netzwerks Universitätsmedizin erlaubt. | |

 
Alle Verkaufsstatus-Codes des CodeSystems MII CS Medikation PZN Sales Status Codes. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-medikation-pzn-sales-status-code",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-pzn-sales-status-code",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Medikation_PZN_Sales_Status_Codes",
  "title" : "MII VS Medikation PZN Sales Status Codes",
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
  "description" : "Alle Verkaufsstatus-Codes des CodeSystems MII CS Medikation PZN Sales Status Codes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "Für die Nutzung der Rohdaten der Vidal MMI GmbH wurde mit der TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V. ein Nutzungsvertrag für die Nutzung der Daten innerhalb der Medizininformatik-Initiative gezeichnet. Diese Lizenzbedingungen erlauben die überlassenen Daten als 'Quelle zur Dokumentation, Recherche und Identifikation von Arzneimitteln zu installieren, zu testen, zu nutzen, bereitzustellen, sowie Anwendern der Lizenznehmer Produkte den Zugriff auf die Daten zu all diesen Zwecken zu gewähren (öffentliches Zugänglichmachen)'. Eine Nutzung dieser Distribution ist somit nur innerhalb der Projekte der Medizininformatik-Initiative und des Netzwerks Universitätsmedizin erlaubt.",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CodeSystem/mii-cs-medikation-pzn-sales-status-code"
    }]
  }
}

```
