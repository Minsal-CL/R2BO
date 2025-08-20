ValueSet:       SnomedCTHallazgosClinicos
Id:             r2bo-snomed-hallazgos-clinicos-VS
Title:          "ValueSet de Snomed CT para Hallazgos Clínicos con Mapeo a CIE-10"
Description:    """
Este ValueSet contiene los códigos de Snomed CT que representan hallazgos clínicos representados por la expresión: < 404684003 \|hallazgo clínico (hallazgo)\|,  ^ 447562003 \|conjunto de referencias cruzadas extendidas de SNOMED CT a la Clasificación Internacional de Enfermedades, décima revisión (metadato fundacional)\|
"""
* insert SetCopyrightSCT
* ^experimental = true

//* include codes from system $snomed where constraint = #"< 404684003, ^ 447562003"
* include codes from system $snomed where constraint = #"< 404684003, ^ 447562003"
