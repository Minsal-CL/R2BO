Extension:      ExtensionComposition
Id:             r2bo-extension-referencia-composition
Title:          "Extensión De Referencia al Composition"
Description:    "Extensión que genera la referencia al composition el cual permite generar un documento en FHIR"
Context:        DiagnosticReport

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* value[x] only Reference(CompositionBiopsia)
