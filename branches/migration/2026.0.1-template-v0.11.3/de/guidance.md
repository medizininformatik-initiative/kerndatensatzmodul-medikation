# Anleitung - MII IG Medikation v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* **Anleitung**

## Anleitung

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

> Diese Einleitung und die Linkliste sind bei der Migration neu entstanden — die Quell-Hubseite trug nur den Satz „Diese Seite wurde absichtlich leer gelassen".

Dieser Abschnitt bündelt die fachlichen Hinweise zur Umsetzung und Nutzung des Moduls **Medikation**. Die Unterseiten vertiefen einzelne Aspekte:

* **[Anleitung für Implementierende](implementer-guidance.md)** — Kontext im Gesamtprojekt, Bezüge zu den Modulen Person, Fall, Prozedur und Diagnose sowie die berücksichtigten Referenzspezifikationen.
* **[Datensätze und Beschreibungen](logical-models.md)** — die Datenelemente des Moduls als logisches Modell, mit Erklärung je Element.
* **[UML-Diagramme](uml-diagrams.md)** — das Informationsmodell als UML-Klassendiagramm.
* **[Terminologien](code-systems.md)** — Wirkstoffe, Arzneimittelprodukte, Darreichungsformen und die Liste der externen Code-Systeme.
* **[Anleitung für Forschende](researcher-guidance.md)** — für Forschende, die Moduldaten nutzen.

### Beschreibung von Szenarien für die Anwendung der Module

**Angabe zur Medikation während stationärer Behandlung mit entsprechender Dokumentation des Operationen- und Prozedurenschlüssels (OPS)**

Beispiel: Eine Patientin mit Mammakarzinom wird während ihres stationären Aufenthaltes mit einem Chemotherapeutikum behandelt. Die behandelnde Ärztin verordnet zunächst die Therapie mit Doxorubicin (Caelyx) einmal alle vier Wochen. Die Anordnung des Wirkstoffes bzw. des Arzneimittels wird dokumentiert.

Entsprechend der Anwendungshinweise des verordneten Arzneimittelproduktes wird die auf die Patientin abgestimmte Dosis von 85 mg Doxorubicin in 5-prozentiger Glucoselösung zu einer Infusionslösung vorbereitet. Die Infusionslösung mit ihren Einzelbestandteilen sowie Zeitpunkt bzw. Zeitraum der Verabreichung werden festgehalten.

Nach erfolgter Verabreichung der Infusion wird der OPS-Code 6-002.87 (Pegyliertes liposomales Doxorubicin, parenteral 80 mg bis unter 90 mg) codiert.

