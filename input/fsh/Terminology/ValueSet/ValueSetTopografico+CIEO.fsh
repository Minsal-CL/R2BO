ValueSet:       TopograficaSnomedCIEOVS
Id:             r2bo-topografica-cieo-VS
Title:          "Set de Valores para Topografía"
Description:    "Set de valores utilizados para la topografía, estos pueden ser mapeados de Snomed CT a la CIE-O 3 Tográfico o ser usado directamente en CIE-O 3 Tográfico"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from valueset https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-topografica-VS
* include codes from system $ICD-O-3 where concept descendent-of #T