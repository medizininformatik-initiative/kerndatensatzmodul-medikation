### Inhalt

Diese MedicationAdministration-Ressource wird verwendet, um Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben usw. zu erfassen.

Das verabreichte Medikament soll entweder über eine Referenz auf ein *Medication*-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine *Medication* möglich.

### Dosiseinheit

Seit Version 2027.0.0 ist `MedicationAdministration.dosage.dose` (*required*) an das ValueSet [DosageDoseQuantityDE](https://ig.fhir.de/igs/medication/ValueSet-DosageDoseQuantityDE.html) aus dem Medication IG DE gebunden: UCUM-Einheiten, die Dosiereinheiten des BMP (KBV) und EDQM Units of Presentation. MedicationRequest und MedicationStatement verwenden diese Bindung bereits über das [DosageDE-Profil](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html); eine Verabreichung wird damit in denselben Einheiten kodiert wie die zugehörige Verordnung oder Medikationsinformation. `DosageDE` selbst kann hier nicht verwendet werden, weil `MedicationAdministration.dosage` in FHIR R4 ein eigenes Backbone-Element und kein `Dosage` ist. Dosisangaben in Einheiten außerhalb dieses ValueSets sind nicht mehr gültig.

### Zeitpunkt der Verabreichung

Als Best Practice SOLL `MedicationAdministration.effective[x]` (`effectiveDateTime` oder `effectivePeriod`) sekundengenau angegeben werden. Damit folgt das Profil dem [ISiK-Profil MedikationsVerabreichung der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsVerabreichung.html), das eine Verabreichung mit sekundengenauem Zeitpunkt abbildet und gröbere Angaben (nur Jahr, Monat oder Tag) an MedicationStatement verweist. Anders als ISiK erzwingt dieses Profil die Genauigkeit nicht: Daten aus retrospektiven Quellen, in denen nur das Datum einer Verabreichung bekannt ist, bleiben gültig. Das MedicationStatement-Profil bleibt unverändert und erlaubt weiterhin gröbere Angaben, etwa einen Zeitraum über mehrere Tage.

### Pausierung einer Medikation

Als Best Practice SOLL die Pausierung einer Medikation mit mehreren MedicationAdministration-Ressourcen abgebildet werden, anstatt eine bestehende zu überschreiben. Damit wird der Hinweis aus dem [ISiK-Profil ISiKMedikationsVerabreichung der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsVerabreichung.html) übernommen:

* **Aktueller Status:** `status` bildet stets den momentanen Zustand der Medikation ab und ist systemweit durchsuchbar.
* **Effiziente REST-Abfragen:** In Kombination mit dem Zeitraum lässt sich die zu einem Zeitpunkt aktive Medikation über eine Suche nach `status` finden. Würde nur die Dosierung einer bestehenden Ressource geändert, müssten alle Ressourcen abgerufen und ausgewertet werden.
* **Erhalt der Verlaufsinformation:** Ein `statusReason` (z. B. „pausiert wegen Nebenwirkungen") ginge bei einer Aktualisierung der bestehenden Ressource zur Fortsetzung verloren; getrennte Ressourcen erhalten ihn.

<div class="ig-highlight ig-highlight-blue" markdown="1">
**Offene Frage — Rückmeldungen erwünscht.** ISiK legt nicht fest, welchen `status` die erste MedicationAdministration trägt. Während der Pause ist sie `on-hold` oder `stopped`. Eine aktuelle Implementierung setzt die erste Ressource wieder auf `in-progress` (`in-progress` entspricht bei MedicationAdministration dem Status `active`), sobald die Fortsetzung in einer neuen MedicationAdministration mit Status `in-progress` dokumentiert ist: `effectivePeriod.start` und `effectivePeriod.end` zeigen, dass dieser Abschnitt abgeschlossen ist, während der Status zeigt, dass die Medikation selbst fortgesetzt wird. Rückmeldungen zu diesem Vorgehen sind willkommen.
</div>
