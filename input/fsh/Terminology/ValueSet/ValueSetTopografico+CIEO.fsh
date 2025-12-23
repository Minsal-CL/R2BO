ValueSet:       TopograficaSnomedCIEOVS
Id:             r2bo-topografica-cieo-VS
Title:          "Set de Valores para Topografía"
Description:    "Set de valores utilizados para la topografía, estos pueden ser mapeados de Snomed CT a la CIE-O 3 Tográfico o ser usado directamente en CIE-O 3 Tográfico"

* insert SetCopyrightSCT
* ^experimental = true

// * include codes from valueset TopograficaSnomedVS
// * include codes from valueset CIEO3TVS

* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20251101 where constraint = #"^446608001,<91723000"
//* exclude codes from system $snomed where concept descendent-of #
* $snomed|http://snomed.info/sct/900000000000207008/version/20251101#87100004
* $snomed|http://snomed.info/sct/900000000000207008/version/20251101#21229009
* include codes from system $ICD-O-3 where concept descendent-of #T