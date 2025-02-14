ValueSet:       MorfologicoSnomedVS
Id:             rbi-morfologico-VS
Title:          "Set de Valores de Snomed para Anomalías Morfológica"
Description:    "Set de valores utilizados para la anomalías morfológicas que permiten el mapeo a la CIE-O 3 Morfológico"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20240801 where constraint = #"< 118956008, ^ 446608001"