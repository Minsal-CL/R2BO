ValueSet:       SnomedCTHallazgosClinicosCIE10VS
Id:             r2bo-snomed-hallazgos-clinicos-cie10-VS
Title:          "ValueSet Para Hallazgos Clínicos"
Description:    "Este ValueSet contiene los códigos de Snomed CT que representan hallazgos clínicos más la CIE 10"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20251101 where constraint = #"^449080006"
//* include codes from system $snomed where concept in #449080006
* include codes from system $ICD-10|2019-covid-expanded
