Instance:       profesional-hospital-anatopatologo
InstanceOf:     MINSALPrestadorProfesional
Usage:          #example
Title:          "Profesional Anatopatologó"
Description:    "Profesional que realiza el informe de anatomía patológica"

* identifier[run]
  * type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "RUN"
  * value = "19283789-2"

* name
  * given = "Patricia"
  * family = "Gutierrez"

* gender = #female

* birthDate = "1983-11-18"

* qualification[TituloProfesional]
  * identifier.value = "cert"
  * code = https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional#1 "MÉDICO CIRUJANO"
  * code.text = "MÉDICO CIRUJANO"

* qualification[EspecialidadMedica]
  * identifier.value = "esp"
  * code = https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed#30 "MEDICINA INTERNA"
  * code.text = "MEDICINA INTERNA"

* qualification[Subespecialidad]
  * identifier.value = "subesp"
  * code = https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSEspecialidadMed#1 "ANATOMÍA PATOLÓGICA"
  * code.text = "ANATOMÍA PATOLÓGICA"

