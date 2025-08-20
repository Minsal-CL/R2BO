Profile:        BundleDocumento
Parent:         Bundle
Id:             r2bo-bundle-documento
Title:          "Perfil de Bundle del Documento"
Description:    "Perfil de Bundle que contiene los recursos necesarios para el documento de anatomía patológica."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* timestamp 1..1 
  * ^short = "Fecha y hora de creación del documento"
* type = #document
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Diferenciador de recursos por tipo y perfil"
* entry ^slicing.ordered = false

* entry
  * fullUrl 1..1 MS
  * fullUrl ^short = "URL completa del recurso, la cual debe ser una URL de un recurso existente"
  * resource 1..1 MS
  * resource ^short = "Recurso que se está incluyendo en el Bundle"

* entry contains 
    CabeceraDocumento 1..1 and
    Solicitud 1..1 and 
    Paciente 1..1 and
    RolProfesional 2..* and
    Profesional 2..* and
    Organizacion 1..* and
    Muestra 1..1 and
    Tumor 1..1 and
    ObservacionMicroscopica 1..1 and
    ObservacionMacroscopica 0..1 and
    Estadificacion 0..1 and
    CategoriaT 0..1 and
    CategoriaN 0..1 and
    CategoriaM 0..1 and
    ObservacionInfiltracionPerineuralR2BO 0..1 and
    ObservacionGangliosLinfaticos 0..1 and
    ObservacionInfiltradoPeritumoralR2BO 0..1 and
    ObservacionInvasionLinfaticaR2BO 0..1 and
    ObservacionInvasionVascularR2BO 0..1 and
    ObservacionMargenQuirugico 0..1 and
    ObservacionCentricidad 0..1 and
    ObservacionMultifocalidad 0..1 and
    ObservacionPostNeoadjudancia 0..1 and
    ObservacionPorcentajeNecrosisR2BO 0..1 and
    ObservacionTejidoTumoralAdjacente 0..1 and
    TamanoTumorR2BO 0..1

* entry[CabeceraDocumento]
  
  * resource only R2BOCompositionBiopsia

* entry[Solicitud]
  
  * resource only SolicitudInformeAPA

* entry[Paciente]
  
  * resource only MINSALPaciente
  
* entry[RolProfesional]
  
  * resource only RolProfesionalR2BO
  

* entry[Profesional]
  
  * resource only MINSALPrestadorProfesional
  

* entry[Organizacion]
  
  * resource only MINSALPrestadorOrganizacional
  

* entry[Muestra]
  
  * resource only MuestraR2BO

* entry[Tumor]
  
  * resource only R2BOTumor
  
* entry[ObservacionMicroscopica]
  
  * resource only ObservacionMicroscopicaR2BO


* entry[ObservacionMacroscopica]
  
  * resource only ObservacionMacroscopicaR2BO
  
* entry[Estadificacion]
  
  * resource only EstadificacionTNM 
  

* entry[CategoriaT]
  
  * resource only TNMCategoriaTumorPrimario
  

* entry[CategoriaN]
  
  * resource only TNMCategoriaNodoRegional
  

* entry[CategoriaM]
  
  * resource only TNMCategoriaMetastasisDistante
  
* entry[ObservacionInfiltracionPerineuralR2BO]
  
  * resource only ObservacionInfiltracionPerineuralR2BO

* entry[ObservacionGangliosLinfaticos]
  
  * resource only ObservacionGangliosLinfaticos

* entry[ObservacionInfiltradoPeritumoralR2BO]
  
  * resource only ObservacionInfiltradoPeritumoralR2BO
  
* entry[ObservacionInvasionLinfaticaR2BO]
  
  * resource only ObservacionInvasionLinfaticaR2BO
  

* entry[ObservacionInvasionVascularR2BO]
  
  * resource only ObservacionInvasionVascularR2BO
 

* entry[ObservacionMargenQuirugico]
  
  * resource only ObservacionMargenQuirugico
  

* entry[ObservacionCentricidad]
  
  * resource only ObservacionCentricidad


* entry[ObservacionMultifocalidad]
  
  * resource only ObservacionMultifocalidad

* entry[ObservacionPostNeoadjudancia]
  
  * resource only ObservacionPostNeoadjudancia
  
* entry[ObservacionPorcentajeNecrosisR2BO]
  
  * resource only ObservacionPorcentajeNecrosisR2BO


* entry[ObservacionTejidoTumoralAdjacente]
  
  * resource only ObservacionTejidoTumoralAdjacente

* entry[TamanoTumorR2BO]
  
  * resource only TamanoTumorR2BO
