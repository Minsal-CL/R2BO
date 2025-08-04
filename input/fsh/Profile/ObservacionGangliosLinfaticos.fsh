Profile:        ObservacionGangliosLinfaticos
Parent:         ResultadosReporteBiopsia
Id:             r2bo-observacion-ganglios-linfaticos
Title:          "Perfil de Observación Ganglios Linfáticos"
Description:    "Registro de cantidad de ganglios linfáticos afectados por metastasis en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* obeys r2bo-observacion-1
* code = $loinc#92831-7
* value[x] 1..1
* value[x] only boolean
* component 0..1 MS 
  * code = $snomed#410680006
  * value[x] 1..1 
  * value[x] only integer


