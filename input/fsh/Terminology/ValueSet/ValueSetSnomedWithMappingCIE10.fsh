ValueSet:       SnomedCTHallazgosCLinicos
Id:             rbi-snomed-hallazgos-clinicos
Title:          "ValueSet de Snomed CT para Hallazgos Clínicos"
Description:    "Este ValueSet contiene los códigos de Snomed CT que representan hallazgos clínicos, más los códigos de la CIE-10"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from valueset http://hl7.org/fhir/ValueSet/icd-10
* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20240801 where concept descendent-of #404684003
