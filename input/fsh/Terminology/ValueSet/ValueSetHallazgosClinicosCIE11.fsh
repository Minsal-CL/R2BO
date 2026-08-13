ValueSet:       HallazgosClinicosCIE11VS
Id:             r2bo-hallazgos-clinicos-cie11-VS
Title:          "ValueSet Para Hallazgos Clínicos de la CIE 11 para neoplasias"
Description:    "Este ValueSet contiene los códigos de la CIE 11 para hallazgos clínicos de neoplasias, que son utilizados en la definición de perfiles de recursos FHIR para la interoperabilidad en salud."

//* insert SetCopyrightSCT
* ^experimental = true

* include codes from system http://id.who.int/icd/release/11/mms where concept descendent-of #1630407678 and classKind = "category"
// * exclude codes from system http://id.who.int/icd/release/11/mms where concept descendent-of #1630407678 and classKind = "block"