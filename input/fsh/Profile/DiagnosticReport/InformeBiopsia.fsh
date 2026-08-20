Profile:        R2BOInformeBiopsia
Parent:         DiagnosticReport
Id:             r2bo-informe-biopsia
Title:          "Perfil del Reporte de Anatomía Patológica"
Description:    "Reporte de anatomía patológica"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

// * obeys r2bo-diag-1

// * extension contains ExtensionComposition named composition 1..1 MS
// * extension[composition] ^short = "Refernecia al composition del documento"

* extension contains ExtensionAddendum named addendum 0..1 MS
* extension[addendum] ^short = "Referencia a un informe previo que necesita ser actualizado"

* identifier 1..1 MS
  * ^short = "Identificador del Informe de Anatomía Patológica"

* basedOn 1..1 MS
  * ^short = "Solicitud de Biopsia"
* basedOn only Reference(SolicitudInformeAPA)

* status 1..1 MS
  * ^short = "Estado del Informe de Anatomía Patológica"
* status = #final

* category 1..1 MS
* category from CategoriaReporteBiopsiaVS (extensible)
  * ^short = "Categoría del Informe de Anatomía Patológica"
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology (gross & histopath, not surgical)"
  
* code 1..1 MS
  * ^short = "Código del Informe de Anatomía Patológica"
* code from ReporteBiopsiaVS (preferred)
* code ^example.label = "CodeableConcept"
* code ^example.valueCodeableConcept = http://snomed.info/sct#726566009 "Pathology biopsy report"

* subject 1..1 MS
  * ^short = "Paciente del Informe de Anatomía Patológica"
* subject only Reference(MINSALPaciente)

* issued 1..1 MS
  * ^short = "Fecha de Emisión del Informe de Anatomía Patológica"

* performer 1..1 MS
  * ^short = "Anatomopatólogo que realiza el Informe"
* performer only Reference(RolProfesionalR2BO or MINSALPrestadorProfesional or MINSALPrestadorOrganizacional)

* specimen 1..* MS
  * ^short = "Muestra de Biopsia"
* specimen only Reference(MuestraR2BO)

* result
  * ^short = "Resultados del Informe de Anatomía Patológica"
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resolve()"
  * ^slicing.rules = #open
  * ^slicing.description = "Distintos Resultados del Informe de Anatomía Patológica"
  * ^slicing.ordered = false
* result only Reference(ResultadosReporteBiopsia)
* result contains TNM 0..1 MS // and Microscopia 1..* MS and Macroscopia 0..* MS and 

// * result[Microscopia] ^short = "Resultados de Microscopía"
// * result[Microscopia] only Reference(ObservacionMicroscopicaR2BO)
// * result[Macroscopia] ^short = "Resultados de Macroscopía"
// * result[Macroscopia] only Reference(ObservacionMacroscopicaR2BO)
* result[TNM] ^short = "Estadificación patológica TNM"
* result[TNM] only Reference(EstadificacionTNM)
// * result[Resultados] ^short = "Otros posibles resultados"
// * result[Resultados] only Reference(
//     ObservacionInfiltracionPerineuralR2BO or
//     ObservacionGangliosLinfaticos or
//     ObservacionInfiltradoPeritumoralR2BO or
//     ObservacionInvasionLinfaticaR2BO or
//     ObservacionInvasionVascularR2BO or
//     ObservacionMargenQuirugico or
//     ObservacionMulticentricidad or
//     ObservacionFocalidad or
//     ObservacionPostNeoadjudancia or
//     ObservacionPorcentajeNecrosisR2BO or
//     ObservacionTejidoNoTumoralAdyacente or
//     TamanoTumorR2BO
// )

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
// * conclusionCode[Morfologico] only CodeableConceptSCTCIEO
* conclusionCode[Morfologico] from MorfologicoCIEOVS (extensible)
* conclusionCode[Morfologico]
  * id = "Morfologico"
  * extension contains ExtensionGradoDiferenciacion named gradoDiferenciacion 0..1 MS
    * ^short = "Grado de diferenciación tumoral"
  * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[0].url = "key"
  * ^binding.extension[=].extension[=].valueId = "1"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #extensible
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = Canonical(MorfologicoCIE11VS)
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Set de valores utilizados para CIE-11 Códigos de Extensión Histopatológicos par ser usado en la morfología de neoplasias"
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "Set de valores utilizados para CIE-11 que permiten el mapeo a la CIE-O 3.2 Morfológico"

* conclusionCode[Topografico] ^short = "Conclusión Topográfica"
* conclusionCode[Topografico] from TopograficaCIEOVS (extensible)
* conclusionCode[Topografico]
  * id = "Topografico"
  * ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[0].url = "key"
  * ^binding.extension[=].extension[=].valueId = "1"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #extensible
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = Canonical(TopograficaCIE11VS)
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Set de valores utilizados para la topografía de la CIE-11 para Anatomía y topografía"
  * ^binding.extension[=].extension[+].url = "shortDoco"
  * ^binding.extension[=].extension[=].valueString = "Set de valores utilizados para la topografía de la CIE-11 que permiten el mapeo a la CIE-O 3.2 Tográfico"

* presentedForm MS
  * ^short = "Representación del Informe de Anatomía Patológica"
  * contentType MS
    * ^short = "Tipo de Contenido"
  * data MS
    * ^short = "Informe de Anatomía Patológica en base64"