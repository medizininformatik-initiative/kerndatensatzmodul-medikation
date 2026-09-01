<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page TechnischeImplementierung/CapabilityStatement.page.md (de) -->

### CapabilityStatement

To enable decentralised data analysis via the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE_URL]/metadata`. That CapabilityStatement MUST state which profiles — including version — and which search parameters are supported.

The following lists the content that MUST be stated in the CapabilityStatement. In addition, conformance with the CapabilityStatement below MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/CapabilityStatement/metadata`

{% lang-fragment CapabilityStatement-mii-cps-medikation-capabilitystatement-html.xhtml %}
