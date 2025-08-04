ValueSet:       CIEO3MVS
Id:             r2bo-cieo3-m-VS
Title:          "Set de Valores de la Clasificación Internacional de Enfermedades Oncológicas 3ra Edición Para Morfología"
Description:    "Set de valores utilizados para la clasificación de enfermedades oncológicas en su tercera edición para el diagnostico morfológico"

* ^experimental = true
* include codes from system $ICD-O-3 where concept descendent-of #M

ValueSet:       CIEO3TVS
Id:             r2bo-cieo3-t-VS
Title:          "Set de Valores de la Clasificación Internacional de Enfermedades Oncológicas 3ra Edición Para Topografía"
Description:    "Set de valores utilizados para la clasificación de enfermedades oncológicas en su tercera edición para el diagnostico topográfico"

* ^experimental = true
* include codes from system $ICD-O-3 where concept descendent-of #T