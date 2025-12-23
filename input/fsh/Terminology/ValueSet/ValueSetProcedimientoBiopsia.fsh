ValueSet:       ProcedimientosBiopsiaVS
Id:             r2bo-procedimientos-biopsias-VS
Title:          "Set de Valores Para Procedimientos"
Description:    "Set de valores utilizados para los procedimientos al momento de extraer muestras de tejido"

* insert SetCopyrightSCT
* ^experimental = true

* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20251101 where concept descendent-of #86273004
* exclude codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20251101 where concept descendent-of #8889005
* exclude codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20251101 where concept descendent-of #70871006

ValueSet:       TipoProcedimientosBiopsiaVS
Id:             r2bo-tipo-procedimientos-biopsias-VS
Title:          "Set de Valores Para Tipo de Procedimientos"
Description:    "Set de valores utilizados para los tipos de procedimientos al momento de extraer muestras de tejido"


* insert SetCopyrightSCT
* ^experimental = true

* $snomed|http://snomed.info/sct/900000000000207008/version/20251101#8889005 
* $snomed|http://snomed.info/sct/900000000000207008/version/20251101#70871006