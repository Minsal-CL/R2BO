Profile:        InformeBiopsia
Parent:         DiagnosticReport
Id:             rbi-informe-biopsia
Title:          "Perfil del Informe de Anatomía Patológica"
Description:    "Informe de anatomía patológica"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* identifier 1..1 MS
  * ^short = "Identificador del Informe de Anatomía Patológica"

* basedOn 1..1 MS
  * ^short = "Solicitud de Biopsia"
* basedOn only Reference(SolicitudBiopsia)

* status 1..1 MS
  * ^short = "Estado del Informe de Anatomía Patológica"
* status = #final

* category 1..1 MS
  * ^short = "Categoría del Informe de Anatomía Patológica"
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology (gross & histopath, not surgical)"
  
* code 1..1 MS
  * ^short = "Código del Informe de Anatomía Patológica"
* code from ReporteBiopsiaVS (extensible)

* subject 1..1 MS
  * ^short = "Paciente del Informe de Anatomía Patológica"
* subject only Reference(MINSALPaciente)

* issued 1..1 MS
  * ^short = "Fecha de Emisión del Informe de Anatomía Patológica"

* performer 1..1 MS
  * ^short = "Anatomopatólogo que realiza el Informe"
* performer only Reference(RolProfesionalRBI or MINSALPrestadorProfesional or MINSALPrestadorOrganizacional)

* specimen 1..1 MS
  * ^short = "Muestra de Biopsia"
* specimen only Reference(MuestraRBI)

* result 2..* MS
  * ^short = "Resultados del Informe de Anatomía Patológica"
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "resolve().code"
  * ^slicing.rules = #open
  * ^slicing.description = "Distintos Resultados del Informe de Anatomía Patológica"
  * ^slicing.ordered = false
* result only Reference(ResultadosReporteBiopsia or EstadificacionTNM)
* result contains Microscopia 1..1 MS and Macroscopia 1..1 MS and TNM 0..1 MS

* result[Microscopia] ^short = "Resultados de Microscopía"
* result[Microscopia] only Reference(ObservacionMicroscopicaRBI)
* result[Macroscopia] ^short = "Resultados de Macroscopía"
* result[Macroscopia] only Reference(ObservacionMacroscopicaRBI)
* result[TNM] ^short = "Estadificación patológica TNM"
* result[TNM] only Reference(EstadificacionTNM)

* conclusion 1..1 MS
  * ^short = "Conclusión narrativa del informe de anatomía patológica"

* conclusionCode 0..2 MS
  * ^short = "Conclusión codificada del informe de anatomía patológica"
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "id"
  * ^slicing.rules = #open
  * ^slicing.description = "Diferenciación de distintas conclusiones codificadas"
  * ^slicing.ordered = false

* conclusionCode contains Morfologico 0..1 MS and Topografico 0..1 MS

* conclusionCode[Morfologico] ^short = "Conclusión Morfológica"
* conclusionCode[Morfologico] only CodeableConceptSCTCIEO
* conclusionCode[Morfologico] from MorfologicoSnomedCIEOVS (extensible)
* conclusionCode[Morfologico]
  * id = "Morfologico"
  * coding[SCT] from rbi-morfologico-VS (required)
  * coding[CIEO] from CIEO3VS (required)

* conclusionCode[Topografico] ^short = "Conclusión Topográfica"
* conclusionCode[Topografico] only CodeableConceptSCTCIEO
* conclusionCode[Topografico] from TopograficaSnomedCIEOVS (extensible)	
* conclusionCode[Topografico]
  * id = "Topografico"
  * coding[SCT] from rbi-topografica-VS (required)
  * coding[CIEO] from CIEO3VS (required)

* presentedForm MS
  * ^short = "Representación del Informe de Anatomía Patológica"
  * contentType MS
    * ^short = "Tipo de Contenido"
  * data MS
    * ^short = "Informe de Anatomía Patológica en base64"