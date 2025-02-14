ValueSet:       EstructuraAnatomicaVS
Id:             rbi-estructuras-anatomincas-VS
Title:          "Set de Valores Para los Sitios del Cuerpo"
Description:    "Set de valores para las distintas estructuras corporales de donde se obtienen las muestras"

* insert SetCopyrightSCT
* ^experimental = true
* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20240801 where concept descendent-of #442083009
