ValueSet:       ReporteBiopsiaVS
Id:             ribco-reporte-biopsia-vs
Title:          "Set de Valores de los Reportes de Biopsia"
Description:    "Códigos de tipos de reportes de biopsias en Snomed y LOINC"

// * insert SetCopyrightSCT
// * ^experimental = true
// * include codes from system $snomed where concept descendent-of #86273004

* insert SetCopyrightLOINC&SNOMED
* ^experimental = true
//* include codes from system $loinc where analyte-core = #LP121003-0
* include codes from system $loinc where COMPONENT = #LP121003-0
* include codes from system $snomed where concept descendent-of #371528001

