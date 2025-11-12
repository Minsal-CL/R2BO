Mapping:        PacienterR2BOMappingNID
Source:         ModeloLogicoPacienteR2BO
Target:         "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"
Id:             r2bo-paciente-nid-mapping 
Title:          "Mapeo de Paciente R2BO a NID"
Description:    "Mapeo entre el modelo lógico de Paciente R2BO y el perfil de Paciente MINSAL que se encuentra en la guía del \"Núcleo de interoperabilida de Datos (NID)\"."

* nombres -> "Patient.name.given" "Nombres del paciente"
* primerApellido -> "Patient.name.family" "Primer apellido del paciente"
* segundoApellido -> "Patient.extension[segundoApellido].valueString" "Segundo apellido del paciente"