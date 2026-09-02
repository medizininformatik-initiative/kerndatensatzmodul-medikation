// Lizenz- und Herausgeberangabe für Inhalte, die aus den MMI-Pharmindex-Rohdaten
// stammen.
//
// HERKUNFT: wörtlich übernommen aus
//   https://gitlab.com/mii-termserv/fhir-resources/de.pharmazentralnummer
//   babelfsh/pzn.babel.fsh, RuleSet `Legal` (Stand main, abgerufen 2026-09-02)
// Das ist dieselbe Definition, mit der die Service Unit Terminologische Dienste
// das PZN-CodeSystem selbst auszeichnet.
//
// WARUM NICHT `insert Publisher` UND `insert LicenseCodeableCCBY40`:
// Beide wären hier sachlich falsch. Herausgeber der Inhalte ist nicht die MII,
// sondern die IFA GmbH beziehungsweise Vidal MMI Germany GmbH; und die Daten
// stehen nicht unter CC-BY-4.0, sondern unter einem Nutzungsvertrag, der die
// Verwendung auf Projekte der MII und des NUM beschränkt. Jede Ressource, die
// MMI-Pharmindex-Inhalte transportiert, trägt daher `insert Legal_PZN` statt
// der modulweiten Publisher- und Lizenz-RuleSets.

RuleSet: Legal_PZN
* ^publisher = "Informationsstelle für Arzneispezialitäten – IFA GmbH / Vidal MMI Germany GmbH"
* ^copyright = "Für die Nutzung der Rohdaten der Vidal MMI GmbH wurde mit der TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e.V. ein Nutzungsvertrag für die Nutzung der Daten innerhalb der Medizininformatik-Initiative gezeichnet. Diese Lizenzbedingungen erlauben die überlassenen Daten als 'Quelle zur Dokumentation, Recherche und Identifikation von Arzneimitteln zu installieren, zu testen, zu nutzen, bereitzustellen, sowie Anwendern der Lizenznehmer Produkte den Zugriff auf die Daten zu all diesen Zwecken zu gewähren (öffentliches Zugänglichmachen)'. Eine Nutzung dieser Distribution ist somit nur innerhalb der Projekte der Medizininformatik-Initiative und des Netzwerks Universitätsmedizin erlaubt."
