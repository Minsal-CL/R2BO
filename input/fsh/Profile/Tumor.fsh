Profile:        R2BOTumor
Parent:         BodyStructure   
Id:             r2bo-tumor
Title:          "Peril de la Morfología y Topología del Tumor"
Description:    "Este recurso permite entregar la morfología y la topograí resultante de un informe de anatomía patológica"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

// * extension contains CondicionRelacionada named condicionRelacionada 0..1 MS
//   * value[x] only Reference(DiagnosticoCl)

// * identifier ^slicing.discriminator.type = #pattern
// * identifier ^slicing.discriminator.path = "type"
// * identifier ^slicing.rules = #open
// * identifier ^slicing.description = "Diferenciación entre los identificadores"
// * identifier ^slicing.ordered = false

// * identifier contains bodyStructureIdentifier 1..* MS
// * identifier[bodyStructureIdentifier] only IdentificadorEstructuraCorporal

* morphology 1..1 MS
  * ^short = "Tipo de estructura"
* morphology only CodeableConceptSCTCIEO
* morphology from MorfologicoSnomedCIEOVS (extensible)
// * morphology ^binding.extension[0].extension[0].url = "purpose"
// * morphology ^binding.extension[=].extension[=].valueCode = #maximum
// * morphology ^binding.extension[=].extension[+].url = "valueSet"
// * morphology ^binding.extension[=].extension[=].valueCanonical = Canonical(TumorMorphologyCodeMaxVS)
// * morphology ^binding.extension[=].extension[+].url = "documentation"
// * morphology ^binding.extension[=].extension[=].valueMarkdown = "TNM Primary Tumor Maximum Value Set"
// * morphology ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* location 1..1 MS
  * ^short = "Sitio del cuerpo"
* location only CodeableConceptSCTCIEO
* location from TopograficaSnomedCIEOVS (extensible)	

// * locationQualifier MS
//   * ^short = "Sitio del cuerpo modificado"
// * locationQualifier from BodyLocationAndLateralityQualifierVS (required)

* patient 1..1 MS
* patient only Reference(MINSALPaciente)