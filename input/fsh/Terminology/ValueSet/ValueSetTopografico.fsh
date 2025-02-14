ValueSet:       TopograficaSnomedVS
Id:             rbi-topografica-VS
Title:          "Set de Valores de Snomed para Topografía"
Description:    "Set de valores utilizados para las estructuras corporales que permiten el mapeo a la CIE-O 3 Tográfico"

* insert SetCopyrightSCT
* ^experimental = true

// * include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20240801 where concept in #446608001 , ^ 446608001
// * include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20240801 where concept descendent-of #91723000

* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20240801 where constraint = #"< 442083009, ^ 446608001"
* $snomed|http://snomed.info/sct/900000000000207008/version/20240801#87100004
* $snomed|http://snomed.info/sct/900000000000207008/version/20240801#21229009