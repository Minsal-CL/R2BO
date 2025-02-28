Profile:        BundleTerminarInforme
Parent:         Bundle
Id:             rbi-bundle-terminar-informe
Title:          "Perfil de Bundle para Terminar Informe"
Description:    "Perfil de Bundle que contiene los recursos necesarios para terminar un informe de patología."

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
    RolProfesional 2..2 and
    Profesional 2..2 and
    Organizacion 1..2 and
    Muestra 1..1 and
    InformeDiagnostico 1..1 and
    ObservacionMicroscopica 1..1 and
    ObservacionMacroscopica 1..1 and
    Estadificacion 0..1 and
    CategoriaTNM 0..3 and
    ObservacionesAdicionales 0..*

* entry[Solicitud]
  * resource 1..1 MS
  * resource only SolicitudBiopsia
  * request 1..1
    * method 1..1
    * method = #PUT
    * url 1..1
    * url
      * ^short = "Uri del recurso \"ServiceRequest\" + Identifier de la solicitud"
      * ^example.label = "General" 
      * ^example.valueUri = "ServiceRequest?identifier=12314"
* entry[Paciente]
  * resource 1..1 MS
  * resource only MINSALPaciente
  * request 1..1
    * method 1..1
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
  * resource only RolProfesionalRBI
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
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
    * url
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
    * url
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
    * method = #PUT
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Specimen\" + Identifier de la muestra"

* entry[InformeDiagnostico]
  * resource 1..1 MS
  * resource only InformeBiopsia
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"DiagnosticReport\""

* entry[ObservacionMicroscopica]
  * resource 1..1 MS
  * resource only ObservacionMicroscopicaRBI
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionMacroscopica]
  * resource 1..1 MS
  * resource only ObservacionMacroscopicaRBI
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[Estadificacion]
  * resource 0..1 MS
  * resource only EstadificacionTNM 
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[CategoriaTNM]
  * resource 1..1 MS
  * resource only CategoriaTNM 
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionesAdicionales]
  * resource 1..1 MS
  * resource only ResultadosReporteBiopsia
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""