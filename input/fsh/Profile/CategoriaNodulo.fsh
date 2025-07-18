Profile:        TNMCategoriaNodoRegional
Parent:         CategoriaTNM
Id:             ribco-tnm-categoria-nodo-regional
Title:          "Perfil de Categoria TNM Nodos Regional"
Description:    "Categoría de la presencia o ausencia de metástasis en los ganglios linfáticos regionales, basada en evidencia como exámenes físicos, imágenes y/o biopsias."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#371494008
// * code ^binding.extension[0].extension[0].url = "purpose"
// * code ^binding.extension[=].extension[=].valueCode = #maximum
// * code ^binding.extension[=].extension[+].url = "valueSet"
// * code ^binding.extension[=].extension[=].valueCanonical = Canonical(TNMRegionalNodesStagingTypeMaxVS)
// * code ^binding.extension[=].extension[+].url = "documentation"
// * code ^binding.extension[=].extension[=].valueMarkdown = "TNM Regional Nodes Staging Type Maximum Value Set"
// * code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* value[x] from TNMCategoriaPatologicoNodosRegionalVS (preferred)
// * value[x] ^binding.extension[0].extension[0].url = "purpose"
// * value[x] ^binding.extension[=].extension[=].valueCode = #maximum
// * value[x] ^binding.extension[=].extension[+].url = "valueSet"
// * value[x] ^binding.extension[=].extension[=].valueCanonical = Canonical(TNMRegionalNodesCategoryMaxVS)
// * value[x] ^binding.extension[=].extension[+].url = "documentation"
// * value[x] ^binding.extension[=].extension[=].valueMarkdown = "TNM Regional Nodes Maximum Value Set"
// * value[x] ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"