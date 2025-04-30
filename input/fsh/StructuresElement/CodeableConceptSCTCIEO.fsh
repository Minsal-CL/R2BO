Profile:        CodeableConceptSCTCIEO
Parent:         CodeableConcept
Id:             riap-codeableconcept-sct-cie-o
Title:          "Estructura del Dato CodeableConcept con SCT y CIE-O"
Description:    "Esta definición permitira registra los datos que vengan desde snomed y cie-o, para ser utilizados en los informes de anatomía patológica"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* . ^short = "CodeableConcept para permitir el uso del SCT y CIE-O en un solo elemento"	

* coding 1..* MS
* coding ^short = "Códigos definidos en SnomedCT y CIE-O"
* coding ^slicing.discriminator.type = #value
* coding ^slicing.discriminator.path = "system"
* coding ^slicing.rules = #open
* coding ^slicing.description = "Diferencia entre los sistemas de codificación"
* coding ^slicing.ordered = false

* coding contains SCT 0..1 MS and CIEO 0..1 MS
* coding[SCT]
  * ^short = "Sistema de Codificación SNOMED CT"
  * system = $snomed
* coding[CIEO]
  * ^short = "Sistema de Codificación CIE-O"
  * system = $ICD-O-3
 