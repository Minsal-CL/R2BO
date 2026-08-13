ValueSet:       MorfologicoCIE11VS
Id:             r2bo-morfologicos-cie11-VS
Title:          "Set de Valores CIE-11 Códigos de Extensión Histopatológicos"
Description:    "Set de valores utilizados para CIE-11 Códigos de Extensión Histopatológicos par ser usado en la morfología de neoplasias"

* ^experimental = true

* include codes from system http://id.who.int/icd/release/11/mms where concept descendent-of #411368752 and classKind = "category"
//* exclude codes from system http://id.who.int/icd/release/11/mms where concept descendent-of #411368752 and classKind = "block"
