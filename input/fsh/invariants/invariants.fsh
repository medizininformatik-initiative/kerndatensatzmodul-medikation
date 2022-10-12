Invariant: dsg-1
Description: "If present, dosage must include free text or structured data"
Severity: #error
Expression: "text.exists() or doseAndRate.exists()"