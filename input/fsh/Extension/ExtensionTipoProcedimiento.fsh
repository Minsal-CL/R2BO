Extension:      TipoProcedimientoBiopsia
Id:             ribco-tipo-procedimientos-biopsias
Title:          "Extensión Tipo de Procedimiento de Biopsia"
Description:    "Extensión que define los tipos de procedimientos al momento de extraer muestras de tejido"
Context:        CodeableConcept

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* value[x] only CodeableConcept
* value[x] from TipoProcedimientosBiopsiaVS