Profile:        ObservacionPorcentajeNecrosisRIAP
Parent:         ResultadosReporteBiopsia
Id:             riap-observacion-porcentaje-necrosis
Title:          "Perfil de Observación Porcentaje Necrosis"
Description:    "Registro del porcentaje de necrosis de una muestra un reporte de biopsia"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#405921002
* value[x] only Quantity
  * value 1..1 MS
  * value ^short = "Valor entre 0 y 100 que representa el porcentaje de necrosis en una muestra"
  * unit 1..1 MS
  * unit ^short = "Porcentaje"
  * system MS
  * system ^short = "Sistema internacional de unidades"
  * system = "http://unitsofmeasure.org"
  * code MS
  * code ^short = "Código de Porcentaje"
  * code = #%