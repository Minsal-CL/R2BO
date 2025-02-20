ValueSet:       TopograficaSnomedVS
Id:             rbi-topografica-VS
Title:          "Set de Valores de Snomed CT para Topografía"
Description:    "Set de valores utilizados para las estructuras corporales que permiten el mapeo a la CIE-O 3 Tográfico"

* insert SetCopyrightSCT
* ^experimental = true

// * include codes from system $snomed where concept in #446608001 , ^ 446608001
// * include codes from system $snomed where concept descendent-of #91723000

* include codes from system $snomed where constraint = #"< 442083009, ^ 446608001"
* $snomed#87100004
* $snomed#21229009