### Inhalt

Die MedicationRequest Ressource beschreibt einen Auftrag zur Lieferung des Medikaments oder die Anordnung und die Anweisungen zur Verabreichung des Medikaments an einen Patienten.

Das verabreichte Medikament soll entweder über eine Referenz auf ein *Medication*-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine *Medication* möglich.

Dosierungsangaben sollen gemäß dem [Dosage-Profil aus dem Medication IG DE](https://ig.fhir.de/igs/medication/StructureDefinition-DosageDE.html) erfolgen. Weitere Informationen zur Dokumentation von Dosierungen finden sich im [Medication IG DE (STU1)](https://ig.fhir.de/igs/medication/index.html).
