Profile:        ObservacionInvasionLinfaticaRIAP
Parent:         ResultadosReporteBiopsia
Id:             riap-observacion-invasion-linfatica
Title:          "Perfil de Observación Invasión Linfatica"
Description:    "Registro de la invasión linfatica de un tumor en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $loinc#33739-4
* value[x] only CodeableConcept
* value[x] from InvasionLinfaticaVascularVS (required)
* value[x] ^binding.description = "Posibles resultados de invasión linfática en un reporte de biopsia"