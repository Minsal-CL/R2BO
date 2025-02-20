ValueSet:       MorfologicoSnomedVS
Id:             rbi-morfologico-VS
Title:          "Set de Valores de Snomed CT para Anomalías Morfológica"
Description:    "Set de valores utilizados para la anomalías morfológicas que permiten el mapeo a la CIE-O 3 Morfológico"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from system $snomed where constraint = #"< 108369006, ^ 446608001"