ValueSet:       EstructuraAnatomicaVS
Id:             r2bo-estructuras-anatomincas-VS
Title:          "Set de Valores Para los Sitios del Cuerpo"
Description:    "Set de valores para las distintas estructuras corporales de donde se obtienen las muestras"

* insert SetCopyrightSCT
* ^experimental = true
* include codes from system $snomed where concept descendent-of #442083009
