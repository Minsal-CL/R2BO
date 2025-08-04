Profile:        ObservacionMicroscopicaR2BO
Parent:         ResultadosReporteBiopsia
Id:             r2bo-observacion-microscopica
Title:          "Perfil de Observación Microscópica"
Description:    "Registro de las observaciones microscópicas de un reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $loinc#102034-6 
* value[x] only string