ValueSet:       RespuestasInfiltracionPerineuralVS
Id:             r2bo-respuestas-infiltracion-perineural-vs
Title:          "Set de Valores Para Hallazgos de Infiltración Perineural"
Description:    "Posibles hallazgos de infiltración perineural en un reporte de biopsia. Este conjunto de valores decienden del concepto: 396394004 hallazgo relacionado con invasión perineural"

* insert SetCopyrightSCT
* ^experimental = true
//* include codes from system $snomed where concept descendent-of #396394004

* $snomed#370051000
* $snomed#396393005
* $snomed#385001000
* $snomed#369731000