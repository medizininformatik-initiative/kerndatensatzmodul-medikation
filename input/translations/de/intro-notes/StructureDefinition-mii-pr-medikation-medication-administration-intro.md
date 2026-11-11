### Inhalt

Diese MedicationAdministration-Ressource wird verwendet, um Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben usw. zu erfassen.

Das verabreichte Medikament soll entweder über eine Referenz auf ein *Medication*-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine *Medication* möglich.

### Dosiseinheit

Seit Version 2027.0.0 ist `MedicationAdministration.dosage.dose` (*required*) an das ValueSet [DosageDoseQuantityDE](https://ig.fhir.de/igs/medication/ValueSet-DosageDoseQuantityDE.html) aus dem Medication IG DE gebunden: UCUM-Einheiten, die Dosiereinheiten des BMP (KBV) und EDQM Units of Presentation. MedicationRequest und MedicationStatement verwenden diese Bindung bereits über das [DosageDE-Profil](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html); eine Verabreichung wird damit in denselben Einheiten kodiert wie die zugehörige Verordnung oder Medikationsinformation. `DosageDE` selbst kann hier nicht verwendet werden, weil `MedicationAdministration.dosage` in FHIR R4 ein eigenes Backbone-Element und kein `Dosage` ist. Dosisangaben in Einheiten außerhalb dieses ValueSets sind nicht mehr gültig.

### Zeitpunkt der Verabreichung

Als Best Practice SOLL `MedicationAdministration.effective[x]` (`effectiveDateTime` oder `effectivePeriod`) sekundengenau angegeben werden. Damit folgt das Profil dem [ISiK-Profil MedikationsVerabreichung der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsVerabreichung.html), das eine Verabreichung mit sekundengenauem Zeitpunkt abbildet und gröbere Angaben (nur Jahr, Monat oder Tag) an MedicationStatement verweist. Anders als ISiK erzwingt dieses Profil die Genauigkeit nicht: Daten aus retrospektiven Quellen, in denen nur das Datum einer Verabreichung bekannt ist, bleiben gültig. Das MedicationStatement-Profil bleibt unverändert und erlaubt weiterhin gröbere Angaben, etwa einen Zeitraum über mehrere Tage.
