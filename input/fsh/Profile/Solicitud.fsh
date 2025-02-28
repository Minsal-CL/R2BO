Profile:     SolicitudBiopsia
Parent:      ServiceRequest
Id:          rbi-solicitud-biopsia
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
* requester only Reference(RolProfesionalRBI)
* performer 1..1 MS
  * ^short = "Laboratorio o Anatomopatólogo que realizara el informe"
* performer only Reference(MINSALPrestadorOrganizacional or RolProfesionalRBI)
* locationCode MS
  * ^short = "Locación de a la cual está dirigida la solicitud"
* reasonCode 1..1 MS
  * ^short = "Sospecha Diagnóstica"
* reasonCode only CodeableConceptSCTCIE10
* reasonCode from SnomedCTHallazgosClinicosCIE10VS (extensible)
  * coding[SCT] from SnomedCTHallazgosClinicos (required)
  * coding[CIE10] from rbi-cie10-vs (required)
* specimen 1..1 MS
  * ^short = "Muestra de Biopsia"
* specimen only Reference(MuestraRBI)