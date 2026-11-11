### Identifikation der Medikation

Eine *Medication* MUSS einen `code` oder mindestens ein `ingredient` enthalten (Invariante `mii-med-1`). Der Wirkstoff SOLL angegeben werden.

Seit Version 2027.0.0 ist `Medication.ingredient` optional (bisher `1..*`). Damit folgt das Profil dem [ISiK-Profil Medikament der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html), das ebenfalls nur einen Code oder einen Bestandteil verlangt (Invariante `isik-med-1`, `code.exists() or ingredient.exists()`). Ein Fertigarzneimittel, das ein ISiK-6-System nur per PZN oder ATC kodiert, ist damit ohne Anpassung konform zu diesem Profil; der bisherige Workaround eines `ingredient`, das nur eine `data-absent-reason`-Extension trägt, entfällt. Empfangende Systeme DÜRFEN NICHT davon ausgehen, dass `ingredient` vorhanden ist.

### Status

Seit Version 2027.0.0 ist `Medication.status` Must Support. `status` ist ein Modifier-Element: `inactive` und `entered-in-error` ändern die Bedeutung der Ressource, empfangende Systeme MÜSSEN den Wert daher auswerten. Das [ISiK-Profil Medikament der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html) verlangt `status` zusätzlich als Pflichtangabe (`1..1`). Dieses Profil lässt `status` bewusst optional (`0..1`), damit bestehende MII-Daten ohne `status` gültig bleiben; ISiK-Daten sind in beiden Fällen konform.

### Wirkstofftyp

Seit Version 2027.0.0 wird der Wirkstofftyp (`IN`, `PIN`, `MIN`) mit der Extension [WirkstofftypEX](https://simplifier.net/packages/de.basisprofil.r4/1.6.0/files/3644264) aus den deutschen Basisprofilen angegeben, wie in [ISiK Stufe 6](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html); der Slice `Medication.ingredient.extension:Wirkstofftyp` verwendet sie jetzt. Die MII-Extension [Wirkstofftyp](StructureDefinition-mii-ex-medikation-wirkstofftyp.html) ist veraltet (deprecated): Sie wird weiterhin akzeptiert, die Invariante `mii-med-2` warnt jedoch bei ihrer Verwendung und empfiehlt, sie zu ersetzen. Beide Extensions verwenden dieselben Codes; Daten lassen sich durch Austausch der Extension-URL und des CodeSystems (`http://fhir.de/CodeSystem/WirkstofftypCS`) umstellen; die ConceptMap [MII CM Medikation Wirkstofftyp](ConceptMap-mii-cm-medikation-wirkstofftyp.html) hält diese 1:1-Abbildung fest.
