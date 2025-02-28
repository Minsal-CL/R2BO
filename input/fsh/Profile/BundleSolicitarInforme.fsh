Profile:        BundleSolicitarInforme
Parent:         Bundle
Id:             rbi-bundle-solicitar-informe
Title:          "Perfil de Bundle para Solicitar Informe"
Description:    "Perfil de Bundle que contiene los recursos necesarios para solicitar un informe de patología."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* type = #transaction
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.discriminator[1].type = #profile
* entry ^slicing.discriminator[1].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Diferenciador de recursos por tipo y perfil"
* entry ^slicing.ordered = false

* entry contains 
    Solicitud 1..1 and 
    Paciente 1..1 and
    RolProfesional 1..2 and
    Profesional 1..1 and
    Organizacion 1..2 and
    Muestra 1..1 

* entry[Solicitud]
  * ^short = "Solicitud de informe de anatomía patológica"
  * resource 1..1 MS
    * ^short = "ServiceRequest de informe de anatomía patológica"
  * resource only SolicitudBiopsia
  * request 1..1
    * method 1..1
      * ^short = "Método de la operación HTTP"
    * method = #POST
    * url 1..1
      * ^short = "Uri del recurso \"ServiceRequest\""
    * url = "ServiceRequest"

* entry[Paciente]
  * ^short = "Paciente que requiere un informe de anatomía patológica"
  * resource 1..1 MS
    * ^short = "Recurso Patient según lo especificado por el MINSAL"
  * resource only MINSALPaciente
  * request 1..1
    * method 1..1
      * ^short = "Método de la operación HTTP"
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Patient\""
    * ifNoneExist 1..1
      * ^short = "En caso de no existir el recurso paciente por RUT, lo crea"
      * ^example.label = "General" 
      * ^example.valueString = "Patient?identifier=1-9"

* entry[RolProfesional]
  * resource 1..1 MS
    * ^short = "Rol profesional que solicita el informe de anatomía patológica o del Laboratorio de Patología"
  * resource only RolProfesionalRBI
    * ^short = "Rol profesional según lo especificado para esta guía"
  * request 1..1
    * method 1..1
      * ^short = "Método de la operación HTTP"
    * method = #POST
    * url 1..1
      * ^short = "Uri del recurso \"PractitionerRole\""
    * ifNoneExist 1..1
      * ^short = "En caso de no existir el recurso rol profesional por RUT más el identificador de la organización, lo crea"
      * ^example.label = "General" 
      * ^example.valueString = "PractitionerRole?practitioner.identifier=1-9&organization.identifier=1312"

* entry[Profesional]
  * resource 1..1 MS
  * resource only MINSALPrestadorProfesional
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
      * ^short = "Uri del recurso \"Practitioner\""
    * ifNoneExist 1..1
      * ^short = "En caso de no existir el recurso profesional por RUT, lo crea"
      * ^example.label = "General" 
      * ^example.valueString = "Practitioner?identifier=1-9"

* entry[Organizacion]
  * resource 1..1 MS
  * resource only MINSALPrestadorOrganizacional
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
      * ^short = "Uri del recurso \"Organization\""
    * ifNoneExist 1..1
      * ^short = "En caso de no existir el recurso organización por RUT, lo crea"
      * ^example.label = "General" 
      * ^example.valueString = "Organization?identifier=1-9"

* entry[Muestra]
  * resource 1..1 MS
  * resource only MuestraRBI
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
      * ^short = "Uri del recurso \"Specimen\""
