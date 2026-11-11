### Inhalt

Die MedicationRequest Ressource beschreibt einen Auftrag zur Lieferung des Medikaments oder die Anordnung und die Anweisungen zur Verabreichung des Medikaments an einen Patienten.

Das verabreichte Medikament soll entweder über eine Referenz auf ein *Medication*-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine *Medication* möglich.

Dosierungsangaben sollen gemäß dem [Dosage-Profil aus dem Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) erfolgen. Weitere Informationen zur Dokumentation von Dosierungen finden sich im [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).

### Nicht durchführen

Seit Version 2027.0.0 ist `MedicationRequest.doNotPerform` erlaubt (`0..1`, Must Support; bisher `0..0`). Damit übernimmt das Profil die Festlegung des [ISiK-Profils MedikationsVerordnung der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsVerordnung.html), das das Element als Must Support kennzeichnet, weil es in der Kernspezifikation ein Modifier-Element ist und die Profile von E-Rezept und ePA seine Angabe nicht verbieten. Verordnungen aus ISiK-6-Systemen, die `doNotPerform` enthalten, sind damit konform zu diesem Profil. `doNotPerform` ist ein Modifier: Der Wert `true` macht die Verordnung zu einer Anordnung, das Medikament NICHT zu geben; empfangende Systeme MÜSSEN den Wert daher auswerten.
