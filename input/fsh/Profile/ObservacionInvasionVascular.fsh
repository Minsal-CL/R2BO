Profile:        ObservacionInvasionVascularR2BO
Parent:         ResultadosReporteBiopsia
Id:             r2bo-observacion-invasion-vascular
Title:          "Perfil de Observación Invasión Vascular"
Description:    "Registro de la invasión vascular de un tumor en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $loinc#33740-2
* value[x] only CodeableConcept
* value[x] from InvasionLinfaticaVascularVS (required)
* value[x] ^binding.description = "Posibles resultados de invasión vascular en un reporte de biopsia"