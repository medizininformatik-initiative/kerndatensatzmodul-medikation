# Anleitung für Forschende - MII IG Medikation v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Forschende**

## Anleitung für Forschende

 Diese Seite enthält Übersetzungen aus der Originalsprache, in der der Leitfaden verfasst wurde. Informationen zu diesen Übersetzungen und Anweisungen zum Abgeben von Feedback zu den Übersetzungen finden Sie [hier](translationinfo.md). 

> Diese Seite ist bei der Migration neu geschrieben worden. Der Simplifier-Guide hatte keine Anleitung für Forschende; der Text fasst Aussagen aus Modulbeschreibung, Terminologien und Kontextkapitel für diese Zielgruppe zusammen. Fachlich zu prüfen.

### Anleitung für Forschende

Wer Medikationsdaten auswertet, stößt schnell darauf, dass dieselbe Therapie in den Daten sehr unterschiedlich aussehen kann. Das ist kein Modellierungsfehler, sondern Absicht: die Standorte dokumentieren unterschiedlich detailliert, und das Modul bildet diese Bandbreite bewusst ab. Für Abfragen bedeutet das, dass eine Suche über nur ein Muster systematisch Fälle übersieht.

#### Wirkstoff oder Arzneimittel — zwei Wege zur selben Aussage

Ein Medikament kann auf drei Ebenen codiert sein, und alle drei sind zulässig:

* **Über das Fertigarzneimittel**, per Pharmazentralnummer (PZN). Damit ist das konkrete Produkt einer Packung identifiziert — Handelsname, Hersteller, Packungsgröße.
* **Über den Wirkstoff**, per ASK-Nummer, UNII oder CAS. Damit ist die Substanz identifiziert, aber nicht das Präparat.
* **Über die ATC-Klassifikation**, die anatomisch-therapeutisch-chemisch einordnet. Ein ATC-Code ist keiner Substanz eindeutig zugeordnet — für eine wirkstoffgenaue Frage ist er zu grob.

Praktische Folge: Wer nach „allen Patientinnen unter Bisoprolol" sucht, findet über die PZN nur die Fälle, in denen ein Präparat erfasst wurde, und über den ATC-Code auch Kombinationspräparate, die mehr enthalten als gesucht. Eine belastbare Kohorte entsteht in der Regel erst aus der Kombination mehrerer Zugänge.

Hinzu kommt die Unterscheidung zwischen **genauem und allgemeinem Wirkstoff**: „Bisoprololhemifumarat" und „Bisoprolol" sind nicht dasselbe, und ihre Mengenangaben unterscheiden sich — 10 mg des Salzes entsprechen 8,49 mg der reinen Substanz. Welche Ebene vorliegt, sagt die Extension [Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.md); die Zuordnung zwischen beiden stellt [Wirkstoffrelation](StructureDefinition-mii-ex-medikation-wirkstoffrelation.md) her. Wer Dosen aggregiert, ohne das zu berücksichtigen, addiert Ungleiches.

#### Medikationsressourcen können geschachtelt sein

Eine `Medication` verweist über `ingredient.itemReference` auf weitere `Medication`-Ressourcen. Das wird an zwei Stellen gebraucht:

* **Kombinationspackungen.** Die äußere Ressource trägt die PZN der Packung, die inneren beschreiben die einzelnen Präparate mit ihren Wirkstoffen — jeweils ohne eigene PZN.
* **Rezepturen und Infusionslösungen.** Die zubereitete Lösung verweist auf ihre Bestandteile.

Für Auswertungen heißt das: **eine einzelne `Medication` ist nicht notwendigerweise die ganze Geschichte.** Wer Wirkstoffe zählt, ohne der Referenzkette zu folgen, verliert bei Kombinationspackungen genau die Information, die er sucht — der Wirkstoff steht dort eine Ebene tiefer.

#### Verordnet ist nicht verabreicht

Drei Ressourcen beschreiben scheinbar Ähnliches, meinen aber Verschiedenes:

* **MedicationRequest** — eine Anordnung. Sie sagt nicht, ob das Medikament gegeben wurde.
* **MedicationAdministration** — eine tatsächliche Einzelgabe, mit Zeitpunkt und Dosis.
* **MedicationStatement** — ein Eintrag, oft aus einem Medikationsplan oder aus Patientenangaben. Ob und wann eingenommen wurde, ist hier ausdrücklich offen.

Eine Frage nach Exposition beantwortet die Verabreichung, eine Frage nach Therapieabsicht die Verordnung. Beides zu vermischen überschätzt die Exposition.

#### Der Detailgrad schwankt zwischen den Standorten

Das Modul verlangt als Minimum den Wirkstoff. Handelsname, Dosis mit Einheit, Dosierungsschema, Darreichungsform sowie Applikationsort und -weg sind vorgesehen, aber nicht überall vorhanden — der Anteil strukturierter Medikationsdokumentation unterscheidet sich zwischen den Standorten erheblich. Für multizentrische Auswertungen empfiehlt es sich, die Vollständigkeit je Standort vorab zu prüfen, statt sie vorauszusetzen.

Welche Codesysteme wofür gelten, beschreibt der Abschnitt [Terminologien](code-systems.md); die Datenelemente im Überblick stehen unter [Datensätze und Beschreibungen](logical-models.md).

