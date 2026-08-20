Profile:        TNMCategoriaNodoRegional
Parent:         CategoriaTNM
Id:             r2bo-tnm-categoria-nodo-regional
Title:          "Perfil de Categoria TNM Nodos Regional"
Description:    "Categoría de la presencia o ausencia de metástasis en los ganglios linfáticos regionales, basada en evidencia como exámenes físicos, imágenes y/o biopsias."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = false
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false

* code = $snomed#371494008

* value[x] from TNMCategoriaPatologicoNodosRegionalVS (preferred)