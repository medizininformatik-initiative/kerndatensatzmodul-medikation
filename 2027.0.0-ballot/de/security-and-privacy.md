# Sicherheit und Datenschutz - MII IG Medikation v2027.0.0-ballot

* [**Inhaltsverzeichnis**](toc.md)
* **Sicherheit und Datenschutz**

## Sicherheit und Datenschutz

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

Dieser Abschnitt richtet sich an Sicherheits- und Datenschutz-Fachleute. Allgemeine Anforderungen stehen in der FHIR-Kernspezifikation — [Security & Privacy Module](https://build.fhir.org/secpriv-module.html) und die [Security-Checkliste](https://build.fhir.org/security.html). Diese Seite wiederholt sie nicht; sie verlinkt den übergreifenden Datenschutzrahmen und nennt, was **für dieses Modul spezifisch** ist.

#### 1. Das übergreifende Datenschutzkonzept

Das [übergreifende Datenschutzkonzept der Medizininformatik-Initiative](https://www.medizininformatik-initiative.de/de/datenschutzkonzept) regelt, wie Patientendaten über das Netz der Datenintegrationszentren hinweg für die Forschung verarbeitet werden dürfen: die Rechtsgrundlage (der Broad Consent der MII), die Rollen der Datenintegrationszentren und der Use-&-Access-Committees sowie die standortübergreifenden Anwendungsszenarien (Machbarkeitsanfragen, verteilte Analysen, Daten- und Bioproben-Bereitstellung). Alles, was dieses Modul spezifiziert, bewegt sich innerhalb dieses Rahmens — dieser Leitfaden fügt keinen eigenen Verarbeitungszweck hinzu.

#### 2. De-Identifikation, Minimierung und Pseudonymisierung (DIMP)

Wie Daten, die ein Datenintegrationszentrum verlassen, praktisch de-identifiziert werden, spezifiziert [DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html) in der Dokumentation des Datenportals: direkte Identifikatoren werden entfernt, vom genehmigten Projekt nicht benötigte Datenelemente entfallen, und identifizierende Werte werden durch projektspezifische Pseudonyme ersetzt (FHIR-Pseudonymizer-Konfiguration). Die Profile dieses Moduls beschreiben die Daten **vor** Anwendung von DIMP; welche Elemente eine konkrete Datenbereitstellung erreicht, entscheidet je Projekt die DIMP-Konfiguration, nicht dieser Leitfaden.

#### 3. Modul-spezifische Aspekte

Dies ist der eigene Beitrag des Moduls: die Sicherheits- und Datenschutz-Eigenschaften, die aus der **Art der Daten dieses Moduls** folgen. **Der Inhalt dieses Abschnitts ist optional** — nicht jedes Modul hat eigene Aspekte. Hat Ihres keine, besteht der gesamte Abschnitt aus dem folgenden Standardtext (löschen Sie die Beispiel- und TODO-Boxen unten und übernehmen Sie ihn wörtlich):

> Abschnitt 3 ist bei der Migration neu geschrieben worden. Der Simplifier-Guide hatte keine Sicherheits- und Datenschutzseite; die genannten Aspekte leiten sich aus den Datenkategorien ab, die dieses Modul führt. Fachlich zu prüfen.

Medikationsdaten werfen über den übergreifenden Rahmen hinaus eigene Aspekte auf, weil sie **mittelbar auf Diagnosen schließen lassen**. Ein Wirkstoff ist häufig für eine Indikation spezifisch; die Verordnung eines antiretroviralen Präparats, eines Neuroleptikums oder eines Zytostatikums offenbart die zugrundeliegende Erkrankung auch dann, wenn keine Diagnose übermittelt wird. Diese Inferenz überlebt eine Pseudonymisierung, weil sie nicht an Identifikatoren hängt, sondern am Inhalt.

Vier Punkte folgen daraus für dieses Modul:

* **Seltene Erkrankungen und Onkologie.** Für Präparate, die nur bei sehr kleinen Kollektiven eingesetzt werden, kann bereits die Kombination aus Wirkstoff, Zeitraum und Standort eine Person faktisch eindeutig machen. Das Modul sieht für solche Fälle ausdrücklich die Kodierung über UNII vor — die Kodierung erhöht die Datenqualität, mindert aber das Risiko nicht.
* **Studienmedikation und Verblindung.** Das Modul kann Studienmedikation abbilden. Wo eine Verblindung besteht, darf die Bereitstellung strukturierter Medikationsdaten sie nicht unterlaufen; ob ein Datensatz eine Zuordnung erlaubt, ist vor der Herausgabe zu prüfen.
* **Freitext in Dosierungsangaben.** `Dosage.text` ist ein Freitextfeld. Es kann unbeabsichtigt identifizierende Angaben enthalten — Namen, Stationsbezeichnungen, Bemerkungen aus der Verlaufsdokumentation. DIMP entfernt sie nicht automatisch; Freitextfelder sind vor der Bereitstellung gesondert zu betrachten.
* **Handelsnamen und Bezugsweg.** Pharmazentralnummern und Handelsbezeichnungen können Rückschlüsse auf die abgebende Stelle oder das versorgende Haus zulassen. Wo der Wirkstoff für die Fragestellung genügt, ist die Angabe der PZN nach dem Grundsatz der Datenminimierung entbehrlich.

Über diese Aspekte hinaus stellt das Modul keine eigenen Sicherheits- oder Datenschutzanforderungen an Implementierende; es gelten das übergreifende Datenschutzkonzept und DIMP wie oben beschrieben.

