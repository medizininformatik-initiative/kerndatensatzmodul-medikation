## {{page-title}}

**Version: 2024.0.0**

- Die veröffentlichten FHIR-Packages verwenden nun [Calender Versioning (CalVer)](https://calver.org/) nach dem Schema YYYY.MINOR.PATCH. Damit wird ein Releasezyklus im Jahresrhythmus etabliert. Die Jahresversion (YYYY) zeigt das Jahr an, in dem das Kerndatensatzmodul angewendet wird. MINOR-Versionen werden bei Einführung neuer Funktionen, Erweiterungen oder substantieller Änderungen veröffentlicht. PATCH-Versionen umfassen Bugfixes oder textuelle Korrekturen.
- Die Benennung der Conformance-Ressourcen und Beispielinstanzen folgt nun einheitlichen [MII-Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII).
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version `http://snomed.info/sct/900000000000207008/version/20230731`, um eine stabile [ValueSet-Expansion](http://hl7.org/fhir/R4/valueset.html#expansion) sicherzustellen.
- Neu im Vergleich zu Version 1.0 sind die Profile {{pagelink: MedikationMedicationRequest, text: MedicationRequest, hint: MII_PR_Medikation_MedicationRequest}} zur Abbildung einer Verordnung/Anordnung einer Medikation und {{pagelink: MedikationList, text: List, hint: MII_PR_Medikation_Medikationsliste}} zur Verwaltung von Medikationen in einem bestimmten Kontext.
- Im Profil {{pagelink: MedikationList, text: List, hint: MII_PR_Medikation_Medikationsliste}} ist das ValueSet ‘Fallkontext’ neu hinzugekommen.
- Neue Dependency auf [de.ihe-d.terminology 3.0.0](https://simplifier.net/packages/de.ihe-d.terminology/3.0.0) und Verwendung innerhalb ValueSet 'Fallkontext'
- Im Profil {{pagelink: MedikationMedication, text: Medication, hint: MII_PR_Medikation_Medication}} ist nun die Angabe der Version bei Verwendung von ATC-Codes verpflichtend. 