ValueSet:       MorfologicoCIEOVS
Id:             r2bo-morfologicosct-cieo-VS
Title:          "Set de Valores Morfología"
Description:    "Set de valores utilizados para morfologías en CIE-O 3.2 Morfológico"

* insert SetCopyrightSCT
* ^experimental = false

// * include codes from valueset MorfologicoSnomedVS
// * include codes from valueset CIEO3MVS

//* include codes from system $snomed|http://snomed.info/sct/21000325107/version/20260315 where constraint = #"<108369006,^446608001"
//* include codes from valueset https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-morfologico-VS
* include codes from system $ICD-O-3 where concept descendent-of #M and kind = "subcategory"