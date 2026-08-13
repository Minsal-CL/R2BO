ValueSet:       ReporteBiopsiaVS
Id:             r2bo-reporte-biopsia-vs
Title:          "Set de Valores de los Reportes de Biopsia"
Description:    "Códigos de tipos de reportes de biopsias en Snomed y LOINC"

// * insert SetCopyrightSCT
// * ^experimental = true
// * include codes from system $snomed where concept descendent-of #86273004
* ^language = #en
* insert SetCopyrightLOINC&SNOMED
* ^experimental = true

//* include codes from system $loinc where COMPONENT = #LP61728-9
* include codes from system $loinc|2.82 where COMPONENT = #LP121003-0
* include codes from system $snomed|http://snomed.info/sct/21000325107/version/20260315 where concept descendent-of #371528001

