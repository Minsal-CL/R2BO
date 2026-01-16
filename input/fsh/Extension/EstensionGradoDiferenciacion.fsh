Extension:   ExtensionGradoDiferenciacion
Id:          r2bo-extension-grado-diferenciacion
Title:       "Extensión del Grado de Diferenciación"
Description: "Extensión que registra el grado de diferenciación tumoral en un reporte de biopsia"
Context: BodyStructure.morphology, DiagnosticReport.conclusionCode

* value[x] only CodeableConcept
* value[x] from GradoDiferenciacionVS (required) 

* value[x] ^binding.description = "Grado de diferenciación tumoral según clasificación de la OMS"