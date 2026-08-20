Profile:        TNMCategoriaMetastasisDistante
Parent:         CategoriaTNM
Id:             r2bo-tnm-categoria-metastasis-distante
Title:          "Perfil de Categoria TNM de Metástasis Distante"
Description:   "Categoría que describe la extensión de la metástasis de un tumor en ubicaciones anatómicas remotas, basada en evidencia como exámenes físicos, imágenes y/o biopsias."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#371497001

* value[x] from TNMCategoriaMetastasisDistantePatologicoVS (extensible)
