Invariant: dsg-1
Description: "If present, dosage must include free text or structured data"
Severity: #error
Expression: "text.exists() or doseAndRate.exists()"

Invariant: mii-med-1
Description: "Medication must carry a code or at least one ingredient"
Severity: #error
Expression: "code.exists() or ingredient.exists()"
