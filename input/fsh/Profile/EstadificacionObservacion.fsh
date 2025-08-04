Profile:        EstadificacionTNM 
Parent:         ResultadosReporteBiopsia
Id:             r2bo-estadificacion-tnm
Title:          "Perfil de Grupo Estadificación TNM"
Description:    "Perfil grupo de estadificación TNM"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* status MS
* code MS
* code from TNMStageGroupStagingTypeVS (required)
* code = $snomed#399588009
* subject 1..1 MS
* subject only Reference(MINSALPaciente)
// * focus MS
//   * ^short = "La condición asociada con la categoría TNM"
// * focus only Reference(DiagnosticoCl)
* performer MS
* performer only Reference(RolProfesionalR2BO or MINSALPrestadorProfesional or MINSALPrestadorOrganizacional)
* value[x] MS
* value[x] only CodeableConcept
* value[x] from TNMStageGroupVS (required)
* dataAbsentReason MS
* specimen only Reference(MuestraR2BO)
* method 0..1 MS
* method from TNMStagingMethodVS (extensible)
* hasMember 0..* MS
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Diferenciación en los hasMember"
* hasMember ^slicing.ordered = false

* hasMember contains CategoriaT 0..1 and CategoriaN 0..1 and CategoriaM 0..1

* hasMember[CategoriaT] only Reference(TNMCategoriaTumorPrimario)
* hasMember[CategoriaN] only Reference(TNMCategoriaNodoRegional)
* hasMember[CategoriaM] only Reference(TNMCategoriaMetastasisDistante)
