ValueSet:       ProcedimientosBiopsiaVS
Id:             ribco-procedimientos-biopsias-VS
Title:          "Set de Valores Para Procedimientos"
Description:    "Set de valores utilizados para los procedimientos al momento de extraer muestras de tejido"

* insert SetCopyrightSCT
* ^experimental = true
* include codes from system $snomed where concept descendent-of #86273004
* exclude codes from system $snomed where concept descendent-of #8889005
* exclude codes from system $snomed where concept descendent-of #70871006

ValueSet:       TipoProcedimientosBiopsiaVS
Id:             ribco-tipo-procedimientos-biopsias-VS
Title:          "Set de Valores Para Tipo de Procedimientos"
Description:    "Set de valores utilizados para los tipos de procedimientos al momento de extraer muestras de tejido"

* ^experimental = true
* insert SetCopyrightSCT

* $snomed#8889005 
* $snomed#70871006