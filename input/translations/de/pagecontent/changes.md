<!-- markdownlint-disable MD041 -->

### Release Notes

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

<!-- TODO:REVIEW Die vollständige Release-Historie älterer Versionen steht in der Quellseite Release-Notes.page.md des Simplifier-Guides und sollte hier ergänzt werden. -->
