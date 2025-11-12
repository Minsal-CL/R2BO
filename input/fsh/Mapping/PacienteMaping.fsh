Mapping:        PacienterR2BOMappingNID
Source:         ModeloLogicoPacienteR2BO
Target:         "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
Id:             r2bo-paciente-nid-mapping 
Title:          "Mapeo de Paciente R2BO a NID"
Description:    "Mapeo entre el modelo lógico de Paciente R2BO y el perfil de Paciente MINSAL que se encuentra en la guía del \"Núcleo de interoperabilida de Datos (NID)\"."

* nombres -> "Patient.name[NombreOficial].given" "Nombres del paciente"
* primerApellido -> "Patient.name[NombreOficial].family" "Primer apellido del paciente"
* segundoApellido -> "Patient.name[NombreOficial].extension[segundoApellido].valueString" "Segundo apellido del paciente"
* sexoBiologico -> "Patient.extension[SexoBiologico].valueCode" "Sexo biológico del paciente"
* fechaDeNacimiento -> "Patient.birthDate" "Fecha de nacimiento del paciente"
* edad -> "Patient.birthDate" "Edad del paciente es calculada a partir de la fecha de nacimiento"
* numeroDeDocumento -> "Patient.identifier.value" "Número de documento de identidad del paciente."
* digitoVerificador -> "Patient.identifier.value" "Este dato es parte del número de documento de identidad del paciente."
* tipoDeDocumento -> "Patient.identifier.type" "Tipo de documento de identidad del paciente."
* run -> "Patient.identifier" "Paciente identificado con RUN"
* runProvisorio -> "Patient.identifier" "Paciente identificado con RUN Provisorio"
* dni -> "Patient.identifier" "Paciente identificado con DNI"
* pasaporte -> "Patient.identifier" "Paciente identificado con pasaporte"