Profile:        RolProfesionalRIBCO
Parent:         CoreRolClinicoCl
Id:             ribco-rol-profesional-minsal
Title:          "Perfil de Rol Profesional"
Description:    "Rol que cumple un profesional en un establecimiento de salud. Este puede ser un profesional solicitante o un anatomopatólogo que realiza un informe."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* practitioner 1..1 MS
* practitioner only Reference(MINSALPrestadorProfesional)
* organization 1..1 MS
* organization only Reference(MINSALPrestadorOrganizacional)
* code 1..1 MS
* code from $VSTituloProfesional-NID (required)
* specialty MS
* specialty from $VSEspecialidades-NID (required)