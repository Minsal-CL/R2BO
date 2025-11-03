Profile:        R2BOTumor
Parent:         BodyStructure   
Id:             r2bo-tumor
Title:          "Peril de la Morfología y Topología del Tumor"
Description:    "Este recurso permite entregar la morfología y la topología resultante de un informe de anatomía patológica"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* extension contains ExtensionGradoDiferenciacion named gradoDiferenciacion 0..1 MS
  * ^short = "Grado de diferenciación tumoral"

* morphology 1..1 MS
  * ^short = "Tipo de estructura"
* morphology only CodeableConceptSCTCIEO
* morphology from MorfologicoSnomedCIEOVS (extensible)

* location 1..1 MS
  * ^short = "Sitio del cuerpo"
* location only CodeableConceptSCTCIEO
* location from TopograficaSnomedCIEOVS (extensible)	

* description 0..1 MS
  * ^short = "Descripción adicional del tumor"

* patient 1..1 MS
  * ^short = "Paciente asociado al tumor"
* patient only Reference(MINSALPaciente)