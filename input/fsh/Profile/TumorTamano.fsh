Profile:        TamanoTumorR2BO
Parent:         ResultadosReporteBiopsia
Id:             r2bo-tamano-tumor
Title:          "Perfil de Tamaño del Tumor"
Description:    "Registro de las dimensiones de un tumor"

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = http://loinc.org#21889-1

* value[x] 0..0 
  * ^short = "No usado en este perfil"

* method MS
  * ^short = "Método para medir el tamaño del Tumor"
* method from MetodosMedicionTumorVS (extensible)

* specimen 1..1 MS
* specimen only Reference(MuestraR2BO)

* focus 0..1 MS
* focus only Reference(R2BOTumor)
* focus ^short = "Tumor al cual se está midiendo el tamaño"

* component MS
  // * code.coding 1..1 MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.description = "Difereciación entre los componentes"
  * ^slicing.ordered = false
* component contains
  DimensionLargoTumor 1..1 MS and
  OtrasDimensionesTumor 0..2 MS

* component[DimensionLargoTumor]
  * ^short = "Largo del Tumor (cm o mm)"
  * code = http://loinc.org#33728-7
  * value[x] only Quantity
  * value[x] from TumorSizeUnitsVS (required)

* component[OtrasDimensionesTumor]
  * ^short = "segunda o tercera dimensión del Tumor (cm o mm)"
  * code = http://loinc.org#33729-5
  * value[x] only Quantity
  * value[x] from TumorSizeUnitsVS (required)
  