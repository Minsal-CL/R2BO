Profile:        CategoriaTNM 
Parent:         ObservacionCL
Id:             r2bo-categoria-tnm
Title:          "Perfil de Origen para las Categorías T, N,  M (Abstracto)"
Description:    "Perfil para originar las Categorías T, N, M"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = true

* status MS
* code MS
* code from CategoriaspTNMVS (extensible)
* subject 1..1 MS
* subject only Reference(MINSALPaciente)
// * focus MS
//   * ^short = "La condición asociada con la categoría TNM"
// * focus only Reference(DiagnosticoCl)
* performer MS
* performer only Reference(RolProfesionalR2BO or MINSALPrestadorProfesional or MINSALPrestadorOrganizacional)
* value[x] MS
* value[x] only CodeableConcept
* dataAbsentReason MS
* specimen only Reference(MuestraR2BO)
* method 0..1 MS
* method from TNMStagingMethodVS (extensible)


* device 0..0
* device ^short = "No usado en este perfil"

* referenceRange 0..0
* referenceRange ^short = "No usado en este perfil"

* hasMember 0..0
* hasMember ^short = "No usado en este perfil"
