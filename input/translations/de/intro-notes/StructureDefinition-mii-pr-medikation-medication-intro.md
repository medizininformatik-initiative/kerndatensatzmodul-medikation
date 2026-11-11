### Identifikation der Medikation

Eine *Medication* MUSS einen `code` oder mindestens ein `ingredient` enthalten (Invariante `mii-med-1`). Der Wirkstoff SOLL angegeben werden.

Seit Version 2027.0.0 ist `Medication.ingredient` optional (bisher `1..*`). Damit folgt das Profil dem [ISiK-Profil Medikament der ISiK-Stufe 6 (6.0.0)](https://gematik.github.io/spec-ISiK-Basismodul/main-stufe-6/ISiK-Medikation/en/StructureDefinition-ISiKMedikament.html), das ebenfalls nur einen Code oder einen Bestandteil verlangt (Invariante `isik-med-1`, `code.exists() or ingredient.exists()`). Ein Fertigarzneimittel, das ein ISiK-6-System nur per PZN oder ATC kodiert, ist damit ohne Anpassung konform zu diesem Profil; der bisherige Workaround eines `ingredient`, das nur eine `data-absent-reason`-Extension trägt, entfällt. Empfangende Systeme DÜRFEN NICHT davon ausgehen, dass `ingredient` vorhanden ist.
