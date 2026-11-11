### Inhalt

Das MedicationStatement dokumentiert die Verordnung eines Arzneimittels oder den Konsum durch einen Patienten. MedicationStatement KANN anzeigen, dass der Patient ein Medikament zur Zeit einnimmt, in der Vergangenheit genommen hat oder in Zukunft einnehmen wird. Dabei KANN es sich sowohl um verschreibungspflichtige Medikamente handeln, wie auch um OTC-Präparate, welche ein Patient in Eigenverantwortung einnimmt.

Der Hauptunterschied zwischen der konkreten Verabreichung einer Medikation (MedicationAdministration) und dem MedicationStatement besteht darin, dass die Medikamentenverabreichung über vollständige Verabreichungsinformationen verfügt und auf den tatsächlichen Informationen der Person basiert, die das Medikament verabreicht hat. MedicationStatement hat im Vergleich eher den Charakter z.B. eines Medikationsplans. Es ist nicht klar, ob der Patient diese Arzneimittel tatsächlich eingenommen hat oder diese verabreicht wurden.

Das verabreichte Medikament soll entweder über eine Referenz auf ein *Medication*-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine *Medication* möglich.

Dosierungsangaben sollen gemäß dem [Dosage-Profil aus dem Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) erfolgen. Weitere Informationen zur Dokumentation von Dosierungen finden sich im [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).

### Pausierung einer Medikation

Als Best Practice SOLL die Pausierung einer Medikation mit mehreren MedicationStatement-Ressourcen abgebildet werden, anstatt eine bestehende zu überschreiben. Damit wird der Hinweis aus dem [ISiK-Profil ISiKMedikationsInformation der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsInformation.html) übernommen:

* **Aktueller Status:** `status` bildet stets den momentanen Zustand der Medikation ab und ist systemweit durchsuchbar.
* **Effiziente REST-Abfragen:** In Kombination mit dem Zeitraum lässt sich die zu einem Zeitpunkt aktive Medikation über eine Suche nach `status` finden. Würde nur die Dosierung einer bestehenden Ressource geändert, müssten alle Ressourcen abgerufen und ausgewertet werden.
* **Erhalt der Verlaufsinformation:** Ein `statusReason` (z. B. „pausiert wegen Nebenwirkungen") ginge bei einer Aktualisierung der bestehenden Ressource zur Fortsetzung verloren; getrennte Ressourcen erhalten ihn.

<div class="ig-highlight ig-highlight-blue" markdown="1">
**Offene Frage — Rückmeldungen erwünscht.** ISiK legt nicht fest, welchen `status` die erste MedicationStatement trägt. Während der Pause ist sie `on-hold` oder `stopped`. Eine aktuelle Implementierung setzt die erste Ressource wieder auf `active`, sobald die Fortsetzung in einer neuen MedicationStatement mit Status `active` dokumentiert ist: `effectivePeriod.start` und `effectivePeriod.end` zeigen, dass dieser Abschnitt abgeschlossen ist, während der Status zeigt, dass die Medikation selbst fortgesetzt wird. Rückmeldungen zu diesem Vorgehen sind willkommen.
</div>
