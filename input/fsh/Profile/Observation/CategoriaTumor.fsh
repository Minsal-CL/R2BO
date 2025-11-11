Profile:        TNMCategoriaTumorPrimario
Parent:         CategoriaTNM
Id:             r2bo-tnm-categoria-tumor-primario
Title:          "Perfil de Categoria TNM Tumor Primario"
Description:    "Categoría del tumor primario, basada en su tamaño y extensión, basada en evidencia como exámenes físicos, imágenes y/o biopsias."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* ^abstract = false


* code = $snomed#384625004

* value[x] from TNMCategoriaTumorPrimarioPatologicoVS (preferred)
