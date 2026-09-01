<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source pages TechnischeImplementierung/FHIR-Profile/Index.page.md and .../Medication/Index.page.md (de) -->

### FHIR profiles

The core dataset specifications are based, wherever possible, on international standards and terminologies — notably the [International Patient Summary](http://hl7.org/fhir/uv/ips/STU1/). Adaptation to the conditions of the German healthcare system is achieved by using the [German base profiles](https://ig.fhir.de/basisprofile-de/) of HL7 Germany. Compatibility with the FHIR specifications of the [National Association of Statutory Health Insurance Physicians (KBV)](https://simplifier.net/organization/kassenrztlichebundesvereinigungkbv) and of [gematik](https://simplifier.net/organization/gematik) is also sought.

All elements of the core dataset, adapted to the details and requirements of the use cases of the Medical Informatics Initiative, are described as FHIR StructureDefinitions. The reason for adapting each FHIR profile is explained in prose on the profile's own page.

The KDS-wide conformance rules — requirements language per RFC-2119, Must Support and the handling of missing data — are maintained centrally by the [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance) and are not repeated here.

#### Medication

The medication that is ordered, planned or administered. It may be a finished medicinal product or a compounded preparation; stating only the active ingredient is also possible. At least one active ingredient MUST be given.
