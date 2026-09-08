<!-- markdownlint-disable MD041 -->

### Release Notes

**Version 2027.0.0-ballot.rc1** — 02.09.2026

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
