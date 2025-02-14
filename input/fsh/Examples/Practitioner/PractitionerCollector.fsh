Instance:       profesional-hospital-collector
InstanceOf:     MINSALPrestadorProfesional
Usage:          #example
Title:          "Profesional recolector de muestra"
Description:    "Profesional que recolecta muestras en un hospital"

* identifier[run]
  * type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "RUN"
  * value = "5135329-3"

* name
  * given = "Juan"
  * family = "Perez"
  * family.extension[SegundoApellido] = Perez

* birthDate = "1991-05-18"

* qualification[TituloProfesional]
  * identifier.value = "cert"
  * code = https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTituloProfesional#1 "MÉDICO CIRUJANO"
  * code.text = "MÉDICO CIRUJANO"


Instance: Perez
InstanceOf: SegundoApellido
Usage: #inline

* valueString = "Perez"