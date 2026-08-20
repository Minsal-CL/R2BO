ValueSet:       HallazgosClinicosCIE10VS
Id:             r2bo-hallazgos-clinicos-cie10-VS
Title:          "ValueSet Para Hallazgos Clínicos"
Description:    "Este ValueSet contiene los códigos que representan las neoplasias de la CIE 10"

//* insert SetCopyrightSCT
* ^experimental = false

//* include codes from system $snomed|http://snomed.info/sct/21000325107/version/20260315 where constraint = #"^449080006"
//* include codes from system $snomed where concept in #449080006
//* include codes from valueset https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-snomed-hallazgos-clinicos-VS
* include codes from system $ICD-10|2019-covid-expanded where concept descendant-of #II and kind = "category"
