Profile:        ObservacionPostNeoadjudancia
Parent:         ResultadosReporteBiopsia
Id:             ribco-observacion-post-tratamiento-neoadjuvancia
Title:          "Perfil de Observación Evaluación Post Neoadyuvancia"
Description:    "Evaluación post neadyudancia del reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $loinc#84891-1
* value[x] only string
