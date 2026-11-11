

### Zeitpunkt der Verabreichung

Als Best Practice SOLL `MedicationAdministration.effective[x]` (`effectiveDateTime` oder `effectivePeriod`) sekundengenau angegeben werden. Damit folgt das Profil dem [ISiK-Profil MedikationsVerabreichung der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikationsVerabreichung.html), das eine Verabreichung mit sekundengenauem Zeitpunkt abbildet und gröbere Angaben (nur Jahr, Monat oder Tag) an MedicationStatement verweist. Anders als ISiK erzwingt dieses Profil die Genauigkeit nicht: Daten aus retrospektiven Quellen, in denen nur das Datum einer Verabreichung bekannt ist, bleiben gültig. Das MedicationStatement-Profil bleibt unverändert und erlaubt weiterhin gröbere Angaben, etwa einen Zeitraum über mehrere Tage.
