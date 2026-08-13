Instance:       r2bo-solicitud-informe-apa-ej
InstanceOf:     SolicitudInformeAPA
Usage:          #example
Title:          "Ejemplo de una Solicitud de Biopsia"
Description:    "Solicitud de biopsia de tejido mamario"

* meta.versionId = "2"
* identifier.value = "111111101"
* status = #completed
* intent = #order
* priority = #routine
* code = $snomed#116784002
* code.text = "Informe de Biopsia"
* subject = Reference(paciente-requiere-examen)
* requester = Reference(ProfesionalHospital)
* reasonCode = ReasonCodeSospechaDiagnostica
* specimen = Reference(r2bo-specimen-example)
* performer = Reference(hospital-collector)	
* locationCode  = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HLAB "hospital laboratory"

Instance:       ReasonCodeSospechaDiagnostica
InstanceOf:     CodeableConcept
Usage: #inline

* coding[+] = $ICD-10|2019-covid-expanded#D48.6