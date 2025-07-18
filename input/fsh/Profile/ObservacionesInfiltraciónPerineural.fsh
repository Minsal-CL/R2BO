Profile:        ObservacionInfiltracionPerineuralRIBCO
Parent:         ResultadosReporteBiopsia
Id:             ribco-observacion-infiltracion-perineural
Title:          "Perfil de Observación Infiltración Perineural"
Description:    "Registro de la infiltración perineural de un tumor en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#371513001
* value[x] only CodeableConcept
* value[x] from RespuestasInfiltracionPerineuralVS (required)
* value[x] ^binding.description = "Posibles hallazgos de infiltración perineural en un reporte de biopsia"