ValueSet:       ReporteBiopsiaVS
Id:             rbi-reporte-biopsia-vs
Title:          "Set de Valores de los Reportes de Biopsia"
Description:    "Códigos de tipos de biopsias en Snomed"

// * insert SetCopyrightSCT
// * ^experimental = true
// * include codes from system $snomed where concept descendent-of #86273004

* insert SetCopyrightLOINC&SNOMED
* ^experimental = true
//* include codes from system $loinc where analyte-core = #LP121003-0
* include codes from system $loinc where COMPONENT = #LP121003-0
* include codes from system $snomed|http://snomed.info/sct/900000000000207008/version/20240801 where concept descendent-of #371528001

