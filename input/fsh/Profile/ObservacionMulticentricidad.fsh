Profile:        ObservacionCentricidad
Parent:         ResultadosReporteBiopsia
Id:             ribco-observacion-centricidad
Title:          "Perfil de Observación Multicentricidad"
Description:    "Registro de la multicentricidad de un tumor en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* obeys ribco-observacion-1
* code = $loinc#42030-7
* value[x] 1..1
* value[x] only boolean
* component 0..1 MS 
  * code = $snomed#410680006
  * value[x] 1..1 
  * value[x] only integer


