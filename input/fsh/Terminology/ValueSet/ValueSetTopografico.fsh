ValueSet:       TopograficaSnomedVS
Id:             ribco-topografica-VS
Title:          "Set de Valores de Snomed CT para Topografía"
Description:    """
Set de valores utilizados para las estructuras corporales que permiten el mapeo a la CIE-O 3 Tográfico. La expresión nace de las siguiente consulta ECL: < 442083009 \|estructura corporal anatómica o adquirida (estructura corporal)\|, ^ 446608001 \|conjunto de referencias cruzadas simples de SNOMED CT a la Clasificación Internacional de Enfermedades Oncológicas (metadato fundacional)\|
"""

* insert SetCopyrightSCT
* ^experimental = true

// * include codes from system $snomed where concept in #446608001 , ^ 446608001
// * include codes from system $snomed where concept descendent-of #91723000

* include codes from system $snomed where constraint = #"< 442083009, ^ 446608001"
* $snomed#87100004
* $snomed#21229009