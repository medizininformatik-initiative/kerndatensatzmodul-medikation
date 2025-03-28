## {{page-title}}

**Version: 2025.0.1**

Datum 25.03.2025

- Neu hinzugefügt wurden ValueSets und Bindings für ATC (Canonical URL: `https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-atc`), ASK (Canonical URL: `https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-ask`) und UNII (Canonical URL: `https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-unii`), die mit dem MII-Terminologieserver (https://www.ontoserver.mii-termserv.de/) expandiert werden können und somit erweiterte Validierung ermöglichen.
- Beispielressourcen aktualisiert: Die Ressourcen entsprechen nun dem Best-Practice-Ansatz für Dosis- und Menge/Stärke-Angaben, indem eine Quantity bevorzugt unter Verwendung von UCUM angegeben wird. UCUM-Annotations in Curly Braces sollten vermieden werden. Alternativ können andere Einheitensysteme über die Quantity Translation Extension (Canonical URL: `http://hl7.org/fhir/StructureDefinition/extension-quantity-translation`) definiert werden.
- CapabilityStatement aktualisiert: das CapabilityStatement enthält nun Anforderungsdokumentation für Suchparameter `_count` und `_summary`.

**Version: 2025.0.0**

Datum 16.12.2024

- Dependency auf de.basisprofil.r4 aktualisiert auf Version 1.5.0. Die Änderung hat keine Auswirkung auf Implementierungen dieses Moduls.
- Profile enthalten zusätzliche Beschreibungen und Übersetzungen für Implementierer und das Forschungsdatenportal für Gesundheit (FDPG).
- Suchparameter aus diesem Modul entfernt. SearchParameter-Ressourcen werden nun zentral im Modul Meta verwaltet.
- CodeSystem Ressourcen für ATC und ASK wurden entfernt. Diese können nun über die Service Unit Terminologische Dienste (SU-TermServ) bezogen werden: https://www.ontoserver.mii-termserv.de/
- Referenzen auf Medication-Ressource innerhalb des Moduls jetzt eingeschränkt auf Profil MII_PR_Medikation_Medication.
- Profil MII_PR_Medikation_MedicationRequest (MedicationRequest) entfernen der MustSupport-Labels auf `MedicationRequest.recorder` und `MedicationRequest.detectedIssue`. Siehe: https://github.com/medizininformatik-initiative/kerndatensatzmodul-medikation/issues/96
- Das CodeSystem [Chemical Abstracts Service (CAS)](https://terminology.hl7.org/CodeSystem-CAS.html) verwendet ab dieser Version die Canonical URL `http://terminology.hl7.org/CodeSystem/CAS`, statt `urn:oid:2.16.840.1.113883.6.61`. Siehe: https://github.com/medizininformatik-initiative/kerndatensatzmodul-medikation/issues/70

**Version: 2024.0.0**

Datum 24.05.2023

- Die veröffentlichten FHIR-Packages verwenden nun [Calender Versioning (CalVer)](https://calver.org/) nach dem Schema YYYY.MINOR.PATCH. Damit wird ein Releasezyklus im Jahresrhythmus etabliert. Die Jahresversion (YYYY) zeigt das Jahr an, in dem das Kerndatensatzmodul angewendet wird. MINOR-Versionen werden bei Einführung neuer Funktionen, Erweiterungen oder substantieller Änderungen veröffentlicht. PATCH-Versionen umfassen Bugfixes oder textuelle Korrekturen.
- Die Benennung der Conformance-Ressourcen und Beispielinstanzen folgt nun einheitlichen [MII-Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII).
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version `http://snomed.info/sct/900000000000207008/version/20230731`, um eine stabile [ValueSet-Expansion](http://hl7.org/fhir/R4/valueset.html#expansion) sicherzustellen.
- Neu im Vergleich zu Version 1.0 sind die Profile {{pagelink: MedikationMedicationRequest, text: MedicationRequest, hint: MII_PR_Medikation_MedicationRequest}} zur Abbildung einer Verordnung/Anordnung einer Medikation und {{pagelink: MedikationList, text: List, hint: MII_PR_Medikation_Medikationsliste}} zur Verwaltung von Medikationen in einem bestimmten Kontext.
- Im Profil {{pagelink: MedikationList, text: List, hint: MII_PR_Medikation_Medikationsliste}} ist das ValueSet ‘Fallkontext’ neu hinzugekommen.
- Neue Dependency auf [de.ihe-d.terminology 3.0.0](https://simplifier.net/packages/de.ihe-d.terminology/3.0.0) und Verwendung innerhalb ValueSet 'Fallkontext'
- Im Profil {{pagelink: MedikationMedication, text: Medication, hint: MII_PR_Medikation_Medication}} ist nun die Angabe der Version bei Verwendung von ATC-Codes verpflichtend. 