Profile:        ObservacionMultifocalidad
Parent:         ResultadosReporteBiopsia
Id:             riap-observacion-multifocalidad
Title:          "Perfil de Observación Multifocalidad"
Description:    "Registro de la multifocalidad de un tumor en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* obeys riap-observacion-1
* code = $snomed#444696007
* value[x] 1..1
* value[x] only boolean
* component 0..1 MS 
  * code = $snomed#410680006
  * value[x] 1..1 
  * value[x] only integer

