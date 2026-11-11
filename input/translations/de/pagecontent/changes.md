<!-- markdownlint-disable MD041 -->

### Release Notes

**Version 2027.0.0** — unveröffentlicht

<!-- Ab 2027.0.0 beginnt jeder Eintrag mit einem Link auf das betroffene Artefakt. -->

Änderungen aus der Ballot-Kommentierung zu 2027.0.0-ballot:

* `Changed`: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.html) — `Medication.ingredient` ist optional (`1..*` → `0..*`), sodass ein nur per
  PZN oder ATC kodiertes Fertigarzneimittel ohne Platzhalter-Bestandteil konform ist.
  Die neue Invariante `mii-med-1` verlangt einen `code` oder mindestens ein `ingredient`
  ([HDB-980](https://hl7germany.atlassian.net/browse/HDB-980),
  [HDB-1038](https://hl7germany.atlassian.net/browse/HDB-1038)).
* `Changed`: [MII PR Medikation MedicationRequest](StructureDefinition-mii-pr-medikation-medication-request.html) — `MedicationRequest.doNotPerform` ist erlaubt und Must Support
  (`0..0` → `0..1`), wie in ISiK Stufe 6, sodass ISiK-Verordnungen mit diesem Element
  konform sind ([HDB-984](https://hl7germany.atlassian.net/browse/HDB-984)).
* `Changed`: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.html) — `Medication.status` ist Must Support, mit dem Hinweis, dass `inactive`
  und `entered-in-error` ausgewertet werden müssen. Anders als in ISiK Stufe 6 bleibt
  `status` optional (`0..1`) ([HDB-982](https://hl7germany.atlassian.net/browse/HDB-982)).
* `Changed`: [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.html) — **breaking:** `MedicationAdministration.dosage.dose` ist (*required*)
  an `DosageDoseQuantityDE` gebunden, die Bindung, die MedicationRequest und
  MedicationStatement über `DosageDE` bereits verwenden. Dosisangaben in anderen
  Einheiten werden ungültig ([HDB-967](https://hl7germany.atlassian.net/browse/HDB-967)).
* `Deprecated`: [MII PR Medikation Medication](StructureDefinition-mii-pr-medikation-medication.html), [MII EX Medikation Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.html) — der Wirkstofftyp verwendet die Basisprofil-DE-Extension
  `WirkstofftypEX` (Codes aus `WirkstofftypCS`), wie ISiK. MII-Extension, ValueSet und
  CodeSystem bleiben im Leitfaden, sind veraltet und werden in einem späteren Release stillgelegt;
  die Invariante `mii-med-2` warnt bei Verwendung der MII-Extension. Die neue ConceptMap
  [MII CM Medikation Wirkstofftyp](ConceptMap-mii-cm-medikation-wirkstofftyp.html) bildet die MII-Codes auf `WirkstofftypCS` ab. Beispiele angepasst
  ([HDB-983](https://hl7germany.atlassian.net/browse/HDB-983)).
* `Added`: [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.html) — Hinweis, dass `effective[x]` als Best Practice nach ISiK Stufe 6
  sekundengenau angegeben werden SOLL; gröbere Angaben bleiben gültig. MedicationStatement
  bleibt unverändert ([HDB-985](https://hl7germany.atlassian.net/browse/HDB-985)).
* `Added`: [MII PR Medikation MedicationStatement](StructureDefinition-mii-pr-medikation-medication-statement.html), [MII PR Medikation MedicationAdministration](StructureDefinition-mii-pr-medikation-medication-administration.html) — Best Practice aus ISiK Stufe 6 zur Pausierung einer Medikation: mehrere
  Ressourcen statt Überschreiben einer bestehenden. Der Status der ersten Ressource nach einer
  Fortsetzung ist eine offene Frage; eine aktuelle Implementierung ist beschrieben,
  Rückmeldungen sind erwünscht ([HDB-979](https://hl7germany.atlassian.net/browse/HDB-979)).

**Version 2027.0.0-ballot** — 11.09.2026

* `Added`: Alle Konformitaetsartefakte tragen jetzt CRMI-Metadaten — die
  Shareable-/Publishable-/Computable-Profilangaben, Knowledge Capabilities,
  Versionspolitik, Paketherkunft, Freigabedatum, Gueltigkeitsbeginn, Thema und
  Mitwirkende. Die RuleSets lagen seit der Template-Migration vor, wurden aber nie
  angewandt.
* `Fixed`: `dosage.site` band an `target-site-uv-ips`, das IPS mit 2.0 entfernt hat.
  Die Bindung zeigt nun auf `body-site-uv-ips` — inhaltlich dasselbe ValueSet
  (SNOMED-CT-Nachfahren von 442083009).
* `Changed`: `artifact-author` ist wieder der Autor des Moduls; die redaktionelle
  Pflege dieses Moduls steht als zweiter `artifact-editor`.

*Dies ist die Ballot-Fassung. Zu `2027.0.0-ballot.rc1` bis `rc5` existieren Git-Tags;
rc1 und rc2 erschienen nie (Fehler in den Release-Werkzeugen), rc3 und rc4 liegen vor
den obigen Korrekturen, rc5 war der erste foermlich publizierte Kandidat.*

* `Fixed`: Publikations-Metadaten korrigiert. `ci-build` verwies auf `branches/dev/` —
  ein Branch, den dieses Repository nicht hat; der Default-Branch heisst `master`. `status`
  stand auf `release`, obwohl die Version ein Ballot-Kandidat ist, und `sequence` auf `2026`
  bei einer 2027er-Version. Der `releaseLabel` lautet nun `Release` statt `ci-build`, damit
  die publizierte Fassung sich nicht als fortlaufender Build ausweist.
* `Fixed`: 19 unaufloesbare Referenzen in den Beispielinstanzen. Zwei Ziele existierten
  nach einer frueheren Zusammenfuehrung unter anderen Ids; `Patient` und `Encounter` gab es
  in diesem Modul nie und werden nun als minimale Kontext-Instanzen mitgeliefert.
* `Fixed`: Die zwoelf Artefakte, deren Canonical nicht auf ihre Id endet, sind jetzt ueber
  den IG-Parameter `special-url` ausgewiesen — den Mechanismus, den der IG Publisher genau
  dafuer vorsieht. Die Canonicals selbst bleiben unveraendert, da sie seit 2026.0.1
  publiziert sind.
* `Fixed`: Der Link auf die International Patient Summary verwies auf STU1; das Modul haengt
  an IPS 2.0.0, und das ist STU2.

*Der QA-Report des IG Publishers faellt damit von 60 auf 1 Fehler. Der verbliebene,
`IG_DEPENDENCY_DIRECT`, ist von hier aus nicht behebbar: `de.ihe-d.terminology` deklariert
eine Canonical ohne `/ImplementationGuide/`-Segment und liefert keine solche Ressource.*

*Zu den frueheren Release-Kandidaten dieser Reihe existieren Git-Tags, aber keine
Publikationen: rc1 und rc2 scheiterten an den Release-Werkzeugen, rc3 liegt vor den oben
genannten Korrekturen.*

* `Changed`: Der Implementierungsleitfaden wurde von Simplifier auf das MII-KDS-Modul-Template (IG Publisher) migriert. Inhalte und Artefakt-URLs sind unveraendert; die Seitenstruktur folgt jetzt dem modulweit einheitlichen Seitenset, und der Leitfaden erscheint zweisprachig.
* `Changed`: ATC-ValueSet um die Version 2026 erweitert (bisher 2018 bis 2025).
* `Fixed`: Der Suchparameter `raterange` im CapabilityStatement verwies auf eine Canonical unterhalb des Moduls, die nie als Artefakt existierte; er zeigt nun auf `mii-sp-meta-medication-dosage-raterange` des Meta-Moduls, konsistent mit `raterange-low` und `raterange-high`.
* `Added`: Anleitung fuer Forschende zu den Abbildungsmustern (Wirkstoff gegen Arzneimittel, geschachtelte Medikationsressourcen, Verordnung gegen Verabreichung).

**Version 2026.0.1** — 13.02.2026

* `Changed`: ASK-ValueSet — spezifische Versionierung in `ValueSet.compose.include.version` entfernt, um automatisch gegen die aktuelle CodeSystem-Version auf dem Terminologie-Server zu expandieren.

**Version 2026.0.0** — 18.12.2025

* `Added`: Dependency auf `de.fhir.medication` hinzugefügt, Version [STU1](https://ig.fhir.de/igs/medication/index.html).
* `Added`: `MedicationStatement.dosage` und `MedicationRequest.dosageInstruction` verwenden für Dosierungsangaben das [Dosage-Profil](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) aus `de.fhir.medication`.
* `Fixed`: Dosierungsangaben in Beispielinstanzen sind konform zu `de.fhir.medication` [STU1](https://ig.fhir.de/igs/medication/index.html).

**Version 2025.0.1** — 06.11.2025

* `Added`: `(MedicationAdministration|MedicationStatement|MedicationRequest).medicationCodeableConcept` enthält einen Verweis auf UNII (siehe [PR #106](https://github.com/medizininformatik-initiative/kerndatensatzmodul-medikation/pull/106)).
* `Added`: Neue ValueSets und Bindings für ATC (`.../ValueSet/mii-vs-medikation-atc`), ASK (`.../ValueSet/mii-vs-medikation-ask`) und UNII (`.../ValueSet/mii-vs-medikation-unii`), die mit dem [MII-Terminologieserver](https://www.ontoserver.mii-termserv.de/) expandiert werden können und damit erweiterte Validierung ermöglichen.
* `Changed`: Beispielressourcen entsprechen dem Best-Practice-Ansatz für Dosis- und Mengen- bzw. Stärkeangaben, indem eine `Quantity` bevorzugt unter Verwendung von UCUM angegeben wird. UCUM-Annotationen in geschweiften Klammern sollten vermieden werden; alternativ können andere Einheitensysteme über die Quantity-Translation-Extension angegeben werden.

**Version 2025.0.0** — 16.12.2024

* Dependency auf `de.basisprofil.r4` aktualisiert auf Version 1.5.0. Die Änderung hat keine Auswirkung auf Implementierungen dieses Moduls.
* Profile enthalten zusätzliche Beschreibungen und Übersetzungen für Implementierer und das Forschungsdatenportal für Gesundheit (FDPG).
* Suchparameter aus diesem Modul entfernt. SearchParameter-Ressourcen werden nun zentral im Modul Meta verwaltet.
* CodeSystem-Ressourcen für ATC und ASK wurden entfernt. Diese können nun über die Service Unit Terminologische Dienste (SU-TermServ) bezogen werden: <https://www.ontoserver.mii-termserv.de/>
* Referenzen auf die Medication-Ressource innerhalb des Moduls jetzt eingeschränkt auf das Profil MII_PR_Medikation_Medication.
* Profil MII_PR_Medikation_MedicationRequest: Entfernen der MustSupport-Labels auf `MedicationRequest.recorder` und `MedicationRequest.detectedIssue` (siehe [Issue #96](https://github.com/medizininformatik-initiative/kerndatensatzmodul-medikation/issues/96)).
* Das CodeSystem [Chemical Abstracts Service (CAS)](https://terminology.hl7.org/CodeSystem-CAS.html) verwendet ab dieser Version die Canonical URL `http://terminology.hl7.org/CodeSystem/CAS` statt `urn:oid:2.16.840.1.113883.6.61` (siehe [Issue #70](https://github.com/medizininformatik-initiative/kerndatensatzmodul-medikation/issues/70)).

**Version 2024.0.0** — 24.05.2023

* Die veröffentlichten FHIR-Packages verwenden nun [Calendar Versioning (CalVer)](https://calver.org/) nach dem Schema YYYY.MINOR.PATCH. Damit wird ein Releasezyklus im Jahresrhythmus etabliert. Die Jahresversion (YYYY) zeigt das Jahr an, in dem das Kerndatensatzmodul angewendet wird. MINOR-Versionen werden bei Einführung neuer Funktionen, Erweiterungen oder substantieller Änderungen veröffentlicht. PATCH-Versionen umfassen Bugfixes oder textuelle Korrekturen.
* Die Benennung der Conformance-Ressourcen und Beispielinstanzen folgt nun einheitlichen [MII-Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII).
* Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version `http://snomed.info/sct/900000000000207008/version/20230731`, um eine stabile [ValueSet-Expansion](http://hl7.org/fhir/R4/valueset.html#expansion) sicherzustellen.
* Neu im Vergleich zu Version 1.0 sind die Profile [MedicationRequest](StructureDefinition-mii-pr-medikation-medication-request.html) zur Abbildung einer Verordnung/Anordnung einer Medikation und [List](StructureDefinition-mii-pr-medikation-medikationsliste.html) zur Verwaltung von Medikationen in einem bestimmten Kontext.
* Im Profil [List](StructureDefinition-mii-pr-medikation-medikationsliste.html) ist das ValueSet „Fallkontext" neu hinzugekommen.
* Neue Dependency auf [de.ihe-d.terminology 3.0.0](https://simplifier.net/packages/de.ihe-d.terminology/3.0.0) und Verwendung innerhalb des ValueSets „Fallkontext".
* Im Profil [Medication](StructureDefinition-mii-pr-medikation-medication.html) ist nun die Angabe der Version bei Verwendung von ATC-Codes verpflichtend.
