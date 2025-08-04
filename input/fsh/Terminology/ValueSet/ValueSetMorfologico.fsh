ValueSet:       MorfologicoSnomedVS
Id:             r2bo-morfologico-VS
Title:          "Set de Valores de Snomed CT para Anomalías Morfológica"
Description:    """
Set de valores utilizados para la anomalías morfológicas que permiten el mapeo a la CIE-O 3 Morfológico. La expresión nace de las siguiente consulta ECL: < 108369006 \|neoplasia (anomalía morfológica)\|, ^ 446608001 \|conjunto de referencias cruzadas simples de SNOMED CT a la Clasificación Internacional de Enfermedades Oncológicas (metadato fundacional)\|
"""

* insert SetCopyrightSCT
* ^experimental = true

* include codes from system $snomed where constraint = #"< 108369006, ^ 446608001"