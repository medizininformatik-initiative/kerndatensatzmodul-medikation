<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md (de) -->

### Logical models

The logical data models of the **Medikation** module describe the domain dataset independently of the concrete FHIR representation.

#### Datasets and descriptions

The Medikation module covers datasets on the medication itself (medicinal product, compounded preparation, active ingredient), on its use in the patient (duration of intake, dosage) and metadata (status, references, author, date and so on).

The official, approved version of the information model for the Medikation module is available on [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). To harmonise the representation, the information model was additionally expressed as a FHIR logical model: [MII LM Medikation](StructureDefinition-mii-lm-medikation.html).

Note that the logical model aims purely at representing the data elements and their descriptions. The data types and cardinalities used are not to be regarded as binding — that is determined conclusively by the FHIR profiles. For every element within the logical model there is a 1:1 mapping to an element of a concrete FHIR resource.

{% lang-fragment StructureDefinition-mii-lm-medikation-dict.xhtml %}
