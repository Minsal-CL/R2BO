ValueSet:       SnomedCTHallazgosClinicos
Id:             rbi-snomed-hallazgos-clinicos-VS
Title:          "ValueSet de Snomed CT para Hallazgos Clínicos"
Description:    "Este ValueSet contiene los códigos de Snomed CT que representan hallazgos clínicos representados por la expresión: < 404684003 |hallazgo clínico (hallazgo)|"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from system $snomed where constraint = #"< 404684003"
