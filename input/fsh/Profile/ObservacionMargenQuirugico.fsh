Profile:        ObservacionMargenQuirugico
Parent:         ResultadosReporteBiopsia
Id:             r2bo-observacion-margen-quirurgico
Title:          "Perfil de Observación Margen Quirúrgico"
Description:    "Observaciones del margen quirúrgico en reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#396631001
* value[x] 0..0 
// * value[x] only CodeableConcept
// * value[x] from InvasionLinfaticaVascularVS (required)
// * value[x] ^binding.description = "Posibles resultados de invasión linfática en un reporte de biopsia"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "Diferencia entre los slice de caracteristicas del Margen Quirurgico"
* component ^slicing.ordered = false
* component 1..2 MS 
* component contains Medida 0..1 and Caracteristicas 0..1

* component[Caracteristicas]
  * code from ObservacionesBiopsiaVS (required)
  * code = $snomed#396324006
  * value[x] only CodeableConcept
  * value[x] from CaracteristicasMargenQuirurgicoVS (required)

* component[Medida]
  * code from ObservacionesBiopsiaVS (required)
  * code = $loinc#33737-8
  * value[x] only Quantity
  * value[x] from MedidaMargenQuirurgicoVS
