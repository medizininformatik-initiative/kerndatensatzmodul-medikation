### Inhalt

Diese MedicationAdministration-Ressource wird verwendet, um Medikamentenverabreichungen, einschließlich der Selbstverabreichung von oralen Medikamenten, Injektionen, intravenösen Gaben usw. zu erfassen.

Das verabreichte Medikament soll entweder über eine Referenz auf ein *Medication*-Objekt, über eine Pharmazentralnummer oder über einen ATC-Code erfolgen. Eine Kodierung des Medikaments über den Unique Ingredient Identifier (UNII) ist nur für Medikamente zu erwägen, bei denen weder PZN noch ATC-Code verfügbar ist, beispielsweise bei Studienmedikamenten oder bestimmten Präparate für den Einsatz in der Onkologie oder bei seltenen Erkrankungen. Hierbei ist zu beachten, dass der UNII nur einen Wirkstoff - kein Medikament - kodiert. Bei Kombipräparaten ist daher nur eine Modellierung über eine *Medication* möglich.
