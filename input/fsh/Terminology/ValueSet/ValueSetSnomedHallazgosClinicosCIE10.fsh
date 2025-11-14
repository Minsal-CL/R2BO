ValueSet:       SnomedCTHallazgosClinicosCIE10VS
Id:             r2bo-snomed-hallazgos-clinicos-cie10-VS
Title:          "ValueSet Para Hallazgos Clínicos"
Description:    "Este ValueSet contiene los códigos de Snomed CT que representan hallazgos clínicos más la CIE 10"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from system $snomed where concept descendent-of #"404684003"
* include codes from system $ICD-10
