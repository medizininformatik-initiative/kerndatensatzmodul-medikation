<!-- markdownlint-disable MD041 -->

### Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Die Medikamentenverordnung und -vergabe sind Kernprozesse der Routineversorgung und finden an allen Kliniken der MII statt. Der Anteil digital dokumentierter Verordnungen ist zwischen den Standorten in Bezug auf den Strukturierungsgrad, die abgedeckten Populationen und Medikamente jedoch sehr unterschiedlich. Ein Gesamtüberblick zur Verfügbarkeit strukturierter Medikationsdaten an den Konsortialstandorten liegt aktuell nicht vor. Diesem Umstand wird durch die vorgeschlagene abgestufte Bereitstellung — abhängig von den vorhandenen Daten — Rechnung getragen. Die Dokumentation von Medikationsplänen ist gesetzlich vorgeschrieben und sollte an allen Standorten verfügbar sein, wobei auch hier der Anteil strukturierter Dokumentation sehr unterschiedlich ist.

Medikationsdaten sind von zentraler Bedeutung für eine Vielzahl von Fragestellungen, z. B. in der Pharmakovigilanz (AMTS) oder als Ein- und Ausschlusskriterium für Studienkollektive. In den von der [AG Data Sharing](https://www.medizininformatik-initiative.de/index.php/de/zusammenarbeit/arbeitsgruppe-data-sharing) zusammengestellten Audit-Abfragen werden sie in den Vorschlägen z. B. des [SMITH-Konsortiums](https://www.medizininformatik-initiative.de/de/konsortien/smith) aufgeführt. Zusätzlich wird das Modul MEDIKATION für den konsortienübergreifenden Use Case POLAR — Polypharmazie benötigt.

#### Beziehung zum Modul Person

Die Zuordnung von Medikationsdaten zu einer Patientin oder einem Patienten erfolgt über Referenzen vom Modul MEDIKATION zum Modul [PERSON](https://simplifier.net/medizininformatikinitiative-modulperson).

#### Beziehung zum Modul Fall

Die Zuordnung von Medikationsdaten zu einem Fall erfolgt über Referenzen vom Modul MEDIKATION zum Modul [FALL](https://simplifier.net/medizininformatikinitiative-modulfall). Wann immer verfügbar sollte eine Referenz auf den Behandlungsfall mitgeführt werden, um den Fallbezug der Medikation zu erhalten.

* Statements bzw. Liste im Sinne von Entlass- und Aufnahmemedikation ⇒ Einrichtungskontakt
* Request ⇒ Abteilungsstellen, besser auch Versorgungsstellen
* Administration ⇒ Versorgungsstellen

#### Beziehung zum Modul Prozedur

Die Einnahme, Verabreichung oder Anordnung einer Medikation kann in Bezug zu einer durchgeführten Prozedur stehen, beispielsweise eine Kontrastmittelgabe vor einer Röntgen-Diagnostik. Das Modul MEDIKATION spezifiziert in diesem Rahmen unter anderem das Medikament sowie Dosis und Verabreichungszeitpunkt. Für die Angaben zur Prozedur wird das Modul [PROZEDUR](https://simplifier.net/medizininformatikinitiative-modulprozeduren) verwendet. Die Datenstrukturen dieses Moduls ermöglichen es, den Bezug zur Prozedur über Referenzen von MEDIKATION zu PROZEDUR auszudrücken.

Die Beziehung zwischen den beiden Modulen ist darüber hinaus relevant für Use Cases in Verbindung mit dem Operationen- und Prozedurenschlüssel (OPS). Zu Abrechnungszwecken werden in den Kliniken ausgewählte teure Medikamente unter Nutzung des Kapitels 6 des OPS-Kataloges fallbezogen erfasst. In diesem Fall kann die klinische Dokumentation der medikamentösen Therapie mit der Prozedurenklassifikation nach OPS verknüpft werden.

#### Beziehung zum Modul Diagnose

Das Modul MEDIKATION enthält Verbindungen zum Modul [DIAGNOSE](https://simplifier.net/medizininformatikinitiative-moduldiagnosen), die es ermöglichen, die zugrundeliegende Erkrankung als Ursache und Behandlungsgrund für eine medikamentöse Therapie zu erfassen.

### Referenzen

Bei der Erstellung des Datensatzes zur Dokumentation der Medikation wurden Spezifikationen berücksichtigt, die für den [KBV patientenbezogenen Medikationsplan V2.6](https://www.kbv.de/media/sp/Medikationsplan_Anlage3.pdf) bzw. [Medikationsplan PLUS](https://simplifier.net/medikationsplanplus) und für die [International Patient Summary](http://international-patient-summary.net/) erstellt wurden.

Bei Terminologien zur Medikation (Arzneimittel, Substanzen etc.) sollen die ISO-Standards zur [Identification of Medicinal Products (IDMP)](https://www.ema.europa.eu/en/human-regulatory/overview/data-medicines-iso-idmp-standards-overview) berücksichtigt werden.

Die Spezifikation des Medikationsplan PLUS wurde zur Modellierung des Datensatzes und der FHIR-Profile herangezogen, es kann jedoch keine Konformität dieser Spezifikation mit dem Medikationsplan hergestellt werden. Dies liegt vor allem daran, dass der Medikationsplan PLUS auf der FHIR-Version STU3 basiert, während die Medizininformatik-Initiative mit FHIR R4 arbeitet. Einige Elemente in der Datenstruktur der FHIR-Ressourcen unterscheiden sich grundlegend zwischen den Versionen, wie beispielsweise die Angabe einer Wirkstärke innerhalb einer `Medication`-Ressource.
