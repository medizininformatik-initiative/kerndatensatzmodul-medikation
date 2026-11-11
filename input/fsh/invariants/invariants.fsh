Invariant: dsg-1
Description: "If present, dosage must include free text or structured data"
Severity: #error
Expression: "text.exists() or doseAndRate.exists()"

Invariant: mii-med-1
Description: "Medication must carry a code or at least one ingredient"
Severity: #error
Expression: "code.exists() or ingredient.exists()"

Invariant: mii-med-2
Description: "The MII extension wirkstofftyp is deprecated and planned for retirement. Replace it with the Basisprofil DE extension http://fhir.de/StructureDefinition/WirkstofftypEX (codes from http://fhir.de/CodeSystem/WirkstofftypCS)."
Severity: #warning
Expression: "extension.where(url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/wirkstofftyp').empty()"
