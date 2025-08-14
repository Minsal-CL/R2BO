Profile:        CompositionBiopsia
Parent:         DocumentoCl
Id:             r2bo-composition-biopsia
Title:          "Documento de Biopsía"
Description:    "Este recurso representa la cabecera del documento de un reporte de analisis de anatomía patológica"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* extension contains ExtensionReporteDiagnostico named ReporteBiopsia 1..1 MS

* identifier 1.. MS 
  * ^short = "Identificador del reporte"

* status 1.. MS
* type  1.. MS
  * ^short = "Tipo de documento, que representa al informe de biopsía"
* type from ReporteBiopsiaVS (extensible)

* category 1.. MS
* category from CategoriaReporteBiopsiaVS (extensible)
  * ^short = "Categoría del Documento de Anatomía Patológica"
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology (gross & histopath, not surgical)"

* date 1..1 MS
  * ^short = "Fecha de creación del reporte de antomía patológica"

* title 1..1 MS
  * ^short = "Nombre/título legible para humanos"

* author 1.. MS
  * ^short = "Autor del documento"
* author only Reference(RolProfesionalR2BO or MINSALPrestadorProfesional or MINSALPrestadorOrganizacional)
* author ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* author ^type.targetProfile[=].extension.valueBoolean = true

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Diferencias entre cada sección del documento"
* section ^slicing.ordered = false

* section contains
  solicitud 1..1 MS and
  muestra 1..1 MS and
  macroscopica 1..1 MS and
  microscopica 1..1 MS and
  hallazgos 1..1 MS and
  conclusiones 1..1 MS and
  Notas 0..1 

* section[solicitud]
  * ^short = "Indica la solicitud por la cual se generó el documento, con su sospecha diagnóstica"
  * code = $loinc#22636-5
  * entry 1..1
  * entry only Reference(SolicitudInformeAPA)

* section[muestra]
  * ^short = "Describe la muestra por la cual se realizo el informe"
  * code = $loinc#22633-2
  * entry 1..1
  * entry only Reference(MuestraR2BO)

* section[macroscopica]
  * ^short = "Observaciones realizadas a la muestra a simple vista"
  * code = $loinc#22634-0
  * entry 1..1
  * entry only Reference(ObservacionMacroscopicaR2BO)

* section[microscopica]
  * ^short = "Observaciones realizadas a traves de un microscopio"
  * code = $loinc#22635-7
  * entry 1..1
  * entry only Reference(ObservacionMicroscopicaR2BO)

* section[hallazgos]
  * ^short = "Resultado de observaciones que fueron realizadas a la muestra"
  * code = $loinc#33746-9
  * entry 0..*
  * entry only Reference(ObservacionInfiltracionPerineuralR2BO or ObservacionGangliosLinfaticos or ObservacionInfiltradoPeritumoralR2BO or ObservacionInvasionLinfaticaR2BO or ObservacionInvasionVascularR2BO or ObservacionMargenQuirugico or ObservacionCentricidad or ObservacionMultifocalidad or ObservacionPostNeoadjudancia or ObservacionPorcentajeNecrosisR2BO or ObservacionTejidoTumoralAdjacente or TamanoTumorR2BO)
  * emptyReason 0..1 

* section[conclusiones]
  * ^short = "Observaciones realizadas a traves de un microscopio"
  * code = $loinc#22637-3
  * entry ^slicing.discriminator.type = #profile
  * entry ^slicing.discriminator.path = "$this"
  * entry ^slicing.rules = #open
  * entry ^slicing.description = "Diferenciación entre las conclusiones"
  * entry ^slicing.ordered = false
  
  * entry only Reference(EstadificacionTNM  or R2BOTumor or DiagnosticoCl)
  * entry contains TNM 1..1 MS and DescripcionTumor 1..1 MS
  * entry[TNM] ^short = "Resultado del TNM Patológico"
  * entry[TNM] only Reference(EstadificacionTNM)
  * entry[DescripcionTumor] ^short = "Conclusión Morfológica y Topográfica del tumor"
  * entry[DescripcionTumor] only Reference(R2BOTumor)

* section[Notas]
  * ^short = "Notas en texto libre"
  * text 1..1 MS 
  * text ^short = "Notas que se pueden dejar como texto narrativo"