Instance:       rbi-solicitud-biopsia-ej
InstanceOf:     SolicitudBiopsia
Usage:          #example
Title:          "Ejemplo de una Solicitud de Biopsia"
Description:    "Solicitud de biopsia de tejido mamario"

* identifier.value = "111111101"
* status = #completed
* intent = #order
* code = $snomed#116784002
* code.text = "Informe de Biopsia"
* subject = Reference(paciente-requiere-examen)
* requester = Reference(ProfesionalHospital)
* reasonCode = ReasonCodeSospechaDiagnostica
* specimen = Reference(rbi-specimen-example)	

Instance:       ReasonCodeSospechaDiagnostica
InstanceOf:     CodeableConceptSCTCIE10
Usage: #inline

* coding[SCT] = $snomed#269497004 "Neoplasm of uncertain behavior of breast"
* coding[CIE10] = $ICD-10#D48.6