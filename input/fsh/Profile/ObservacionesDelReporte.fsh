Profile:        ResultadosReporteBiopsia
Parent:         ObservacionCL
Id:             r2bo-resultados-reporte-biopsia
Title:          "Perfil de Origen de Todos Los Resultados"
Description:    "Perfil para todas las observaciones de los resultados de biopsias"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = true

* basedOn 1..1 MS
  * ^short = "Solicitud por la cual se realizo la prueba"
* basedOn only Reference(SolicitudInformeAPA)
* status MS
* code MS
* code from ObservacionesBiopsiaVS (extensible)
* category 1..1 MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* subject 1..1 MS
* subject only Reference(MINSALPaciente)
// * focus MS
//   * ^short = "La condición o diagnóstico asociado con la observación"
// * focus only Reference(DiagnosticoCl)
* performer MS
* performer only Reference(RolProfesionalR2BO or MINSALPrestadorProfesional or MINSALPrestadorOrganizacional)
* value[x] MS
* value[x] only CodeableConcept or string or boolean or Quantity or integer
* dataAbsentReason MS
* specimen only Reference(MuestraR2BO)