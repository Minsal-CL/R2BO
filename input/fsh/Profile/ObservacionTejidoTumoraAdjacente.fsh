Profile:        ObservacionTejidoTumoralAdjacente
Parent:         ResultadosReporteBiopsia
Id:             rbi-observacion-tejido-tumor-adjacente
Title:          "Perfil de Observacion Tejido Tumoral Adjacente"
Description:    "Registro de la presencia de tejido tumoral en tejido adyacente en un reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $loinc#81168-7
* value[x] only string
