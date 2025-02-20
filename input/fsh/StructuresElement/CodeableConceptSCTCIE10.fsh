Profile:        CodeableConceptSCTCIE10
Parent:         CodeableConcept
Id:             rbi-codeableconcept-sct-cie-10
Title:          "Estructura del Dato CodeableConcept con SCT y CIE-10"
Description:    "Esta definición permitira registra los datos que vengan desde snomed y cie-10, para ser utilizados como códigos de sospecha o hipotesis diagnóstica"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* . ^short = "CodeableConcept para permitir el uso del SCT y CIE-10 en un solo elemento"	

* coding 1..* MS
* coding ^short = "Códigos definidos en SnomedCT y CIE-10"
* coding ^slicing.discriminator.type = #value
* coding ^slicing.discriminator.path = "system"
* coding ^slicing.rules = #open
* coding ^slicing.description = "Diferencia entre los sistemas de codificación"
* coding ^slicing.ordered = false

* coding contains SCT 0..1 MS and CIE10 0..1 MS
* coding[SCT]
  * ^short = "Sistema de Codificación SNOMED CT"
  * system = $snomed
* coding[CIE10]
  * ^short = "Sistema de Codificación CIE-10"
  * system = $ICD-10
* coding[CIE10] from rbi-cie10-vs (required)