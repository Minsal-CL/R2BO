Profile:        TNMCategoriaMetastasisDistante
Parent:         CategoriaTNM
Id:             rbi-tnm-categoria-metastasis-distante
Title:          "Perfil de Categoria TNM de Metástasis Distante"
Description:   "Categoría que describe la extensión de la metástasis de un tumor en ubicaciones anatómicas remotas, basada en evidencia como exámenes físicos, imágenes y/o biopsias."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#371497001
// * code ^binding.extension[0].extension[0].url = "purpose"
// * code ^binding.extension[=].extension[=].valueCode = #maximum
// * code ^binding.extension[=].extension[+].url = "valueSet"
// * code ^binding.extension[=].extension[=].valueCanonical = Canonical(TNMDistantMetastasesStagingTypeMaxVS)
// * code ^binding.extension[=].extension[+].url = "documentation"
// * code ^binding.extension[=].extension[=].valueMarkdown = "TNM Distant Metastases Staging Type Maximum Value Set"
// * code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* value[x] from TNMCategoriaMetastasisDistantePatologicoVS (extensible)
// * value[x] ^binding.extension[0].extension[0].url = "purpose"
// * value[x] ^binding.extension[=].extension[=].valueCode = #maximum
// * value[x] ^binding.extension[=].extension[+].url = "valueSet"
// * value[x] ^binding.extension[=].extension[=].valueCanonical = Canonical(TNMDistantMetastasesCategoryMaxVS)
// * value[x] ^binding.extension[=].extension[+].url = "documentation"
// * value[x] ^binding.extension[=].extension[=].valueMarkdown = "TNM Distant Metastases Maximum Value Set"
// * value[x] ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"