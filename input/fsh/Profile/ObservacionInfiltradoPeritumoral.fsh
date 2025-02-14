Profile:        ObservacionInfiltradoPeritumoralRBI
Parent:         ResultadosReporteBiopsia
Id:             rbi-observacion-infiltracion-peritumoral
Title:          "Perfil de Observación Infiltración Peritumoral"
Description:    "Registro de la infiltración perineural de un tumor en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#371509008
* value[x] only CodeableConcept
* value[x] from RespuestaInfiltracionPeritumoralVS (required)
* value[x] ^binding.description = "Posibles hallazgos de infiltración perineural en un reporte de biopsia"