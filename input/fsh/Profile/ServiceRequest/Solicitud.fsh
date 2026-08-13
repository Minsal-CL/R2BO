Profile:     SolicitudInformeAPA
Parent:      ServiceRequest
Id:          r2bo-solicitud-informe-apa
Title:       "Perfil de Solicitud de Informe de Anatomía Patológica"
Description: "Solicitud generada por el médico para la realización de un informe de anatomía patológica"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* status MS 
  * ^definition = "Estado de la Solicitud"
* intent MS
  * ^definition = "Propósito de la Solicitud"
  
// * priority MS
//   * ^short = "routine = \"Diferida\", asap  = \"Rápida\""
//   * ^definition = "Urgencia de la Solicitud de biopsia"
// * priority from VSPrioridadSolicitudR2BO (required)

* code 1..1 MS
  * ^short = "Código de la Solicitud"
  * ^definition = "Código que define el tipo de solicitud"
  * ^binding.description = "Código de Solicitud de Informe de Anatomía Patológica"
* code = $snomed#116784002
* subject MS
  * ^short = "Paciente que requiere un informe de anatomía patológica"
* subject only Reference(MINSALPaciente)
* requester 1..1 MS
  * ^short = "Profesional que solicita el informe de anatomía patológica"
* requester only Reference(RolProfesionalR2BO)
* performer 1..1 MS
  * ^short = "Laboratorio o Anatomopatólogo que realizara el informe"
* performer only Reference(MINSALPrestadorOrganizacional or RolProfesionalR2BO)
* locationCode MS
  * ^short = "Locación de a la cual está dirigida la solicitud"
* reasonCode 1..1 MS
  * ^short = "Sospecha Diagnóstica"
// * reasonCode only CodeableConceptSCTCIE10
* reasonCode from HallazgosClinicosCIE10VS (extensible)
  * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[0].url = "key"
  * ^binding.extension[=].extension[=].valueId = "1"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #extensible
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = Canonical(HallazgosClinicosCIE11VS)
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Set de valores utilizados de la CIE-11 para neoplasias"
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "Set de valores utilizados para la neoplasias de la CIE-11 que permiten el mapeo a la CIE-10"

* specimen 1..* MS
  * ^short = "Muestra de Biopsia"
* specimen only Reference(MuestraR2BO)