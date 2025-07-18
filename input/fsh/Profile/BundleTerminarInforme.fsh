Profile:        BundleGenerarInforme
Parent:         Bundle
Id:             ribco-bundle-generar-informe
Title:          "Perfil de Bundle para Generar Informe"
Description:    "Perfil de Bundle que contiene los recursos necesarios para generar un informe de patología."

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
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
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
    CategoriaT 0..1 and
    CategoriaN 0..1 and
    CategoriaM 0..1 and
    ObservacionInfiltracionPerineuralRIBCO 0..1 and
    ObservacionGangliosLinfaticos 0..1 and
    ObservacionInfiltradoPeritumoralRIBCO 0..1 and
    ObservacionInvasionLinfaticaRIBCO 0..1 and
    ObservacionInvasionVascularRIBCO 0..1 and
    ObservacionMargenQuirugico 0..1 and
    ObservacionCentricidad 0..1 and
    ObservacionMultifocalidad 0..1 and
    ObservacionPostNeoadjudancia 0..1 and
    ObservacionPorcentajeNecrosisRIBCO 0..1 and
    ObservacionTejidoTumoralAdjacente 0..1 and
    TamanoTumorRIBCO 0..1 

    // Resultados 0..*

* entry[Solicitud]
  * resource 1..1 MS
  * resource only SolicitudInformeAPA
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
  * resource only RolProfesionalRIBCO
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
  * resource only MuestraRIBCO
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
  * resource only ObservacionMicroscopicaRIBCO
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionMacroscopica]
  * resource 1..1 MS
  * resource only ObservacionMacroscopicaRIBCO
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

* entry[CategoriaT]
  * resource 1..1 MS
  * resource only TNMCategoriaTumorPrimario
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[CategoriaN]
  * resource 1..1 MS
  * resource only TNMCategoriaNodoRegional
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[CategoriaM]
  * resource 1..1 MS
  * resource only TNMCategoriaMetastasisDistante
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionInfiltracionPerineuralRIBCO]
  * resource 1..1 MS
  * resource only ObservacionInfiltracionPerineuralRIBCO
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionGangliosLinfaticos]
  * resource 1..1 MS
  * resource only ObservacionGangliosLinfaticos
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionInfiltradoPeritumoralRIBCO]
  * resource 1..1 MS
  * resource only ObservacionInfiltradoPeritumoralRIBCO
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionInvasionLinfaticaRIBCO]
  * resource 1..1 MS
  * resource only ObservacionInvasionLinfaticaRIBCO
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionInvasionVascularRIBCO]
  * resource 1..1 MS
  * resource only ObservacionInvasionVascularRIBCO
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionMargenQuirugico]
  * resource 1..1 MS
  * resource only ObservacionMargenQuirugico
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionCentricidad]
  * resource 1..1 MS
  * resource only ObservacionCentricidad
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionMultifocalidad]
  * resource 1..1 MS
  * resource only ObservacionMultifocalidad
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionPostNeoadjudancia]
  * resource 1..1 MS
  * resource only ObservacionPostNeoadjudancia
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""
  
* entry[ObservacionPorcentajeNecrosisRIBCO]
  * resource 1..1 MS
  * resource only ObservacionPorcentajeNecrosisRIBCO
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[ObservacionTejidoTumoralAdjacente]
  * resource 1..1 MS
  * resource only ObservacionTejidoTumoralAdjacente
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""

* entry[TamanoTumorRIBCO]
  * resource 1..1 MS
  * resource only TamanoTumorRIBCO
  * request 1..1
    * method 1..1
    * method = #POST
    * url 1..1
    * url
      * ^short = "Uri del recurso \"Observation\""