Instance:       riap-anatopatologo-hospital
InstanceOf:     RolProfesionalRIAP
Usage:          #example
Title:          "Profesional de Anatomía Patológica del Hospital"
Description:    "Profesional que realiza el informe de anatomía patológica en un hospital"

* practitioner = Reference(profesional-hospital-anatopatologo)
* organization = Reference(hospital-collector)
* code = https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional#1 "MÉDICO CIRUJANO"
* specialty = https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed#1 "ANATOMÍA PATOLÓGICA"