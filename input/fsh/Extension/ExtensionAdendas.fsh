Extension:   ExtensionAddendum
//Parent:      http://hl7.org/fhir/StructureDefinition/diagnosticReport-addendumOf
Id:          r2bo-Addenda-Reportebiopsia
Title:       "Extensión de Adendas Biopsia"
Description: "Está es una modificación de la extension la cual es la referencia a un reporte prevío que necesita ser actualizado"
Context:     DiagnosticReport
// * ^extension[0].extension[0].url = "endFhirVersion"
// * ^extension[0].extension[0].valueCode = #4.0
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/version-specific-use"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* value[x] ^short = "Referencia a un reporte previo que necesita ser actualizado"
* value[x] only Reference
* value[x] only Reference(R2BOInformeBiopsia)