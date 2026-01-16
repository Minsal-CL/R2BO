ValueSet:       MorfologicoSnomedCIEOVS
Id:             r2bo-morfologicosct-cieo-VS
Title:          "Set de Valores Morfología"
Description:    "Set de valores utilizados para morfologías, estos pueden ser mapeados de Snomed CT a la CIE-O 3 Morfológico o ser usado directamente en CIE-O 3 Morfológico"

* insert SetCopyrightSCT
* ^experimental = true

// * include codes from valueset MorfologicoSnomedVS
// * include codes from valueset CIEO3MVS

//* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20251101 where constraint = #"<108369006,^446608001"
* include codes from valueset https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-morfologico-VS
* include codes from system $ICD-O-3 where concept descendent-of #M
