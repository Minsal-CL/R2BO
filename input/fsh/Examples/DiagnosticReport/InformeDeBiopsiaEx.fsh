Instance:       rbi-informe-biopsia-ex
InstanceOf:     InformeBiopsia 
Usage:          #example
Title:          "Informe de Anatomía Patológica de Biopsia de Mama"
Description:    "Ejecución de un informe de anatomía patológica de biopsia de mama"

* identifier.value = "RBI-2020-0001"
* basedOn = Reference(rbi-solicitud-biopsia-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#CP "Cytopathology"
* code = $loinc#66110-8 "Breast Pathology biopsy report"
* code.text = "Informe de Biopsia de Mama"
* subject = Reference(paciente-requiere-examen)
* issued = "2021-08-01T10:00:00-04:00"
* performer = Reference(rbi-anatopatologo-hospital)
* specimen = Reference(rbi-specimen-example)
* result[Microscopia] = Reference(rbi-observacion-microscopica-ex)
* result[Macroscopia] = Reference(rbi-observacion-macroscopica-ex)
* result[2] = Reference(rbi-estadificacion-tnm-ex)
* result[3] = Reference(rbi-observacion-ganglios-linfaticos-ex)
* result[4] = Reference(rbi-observacion-infiltracion-perineural-ex)
* result[5] = Reference(rbi-observacion-infiltracion-peritumoral-ex)
* result[6] = Reference(rbi-observacion-invasion-linfatica-ex)
* result[7] = Reference(rbi-observacion-invasion-vascular-ex)
* result[8] = Reference(rbi-observacion-margen-quirurgico-ex)
* result[9] = Reference(rbi-observacion-centricidad-ex)
* result[10] = Reference(rbi-observacion-multifocalidad-ex)
* result[11] = Reference(rbi-observacion-porcentaje-necrosis-ex)
* result[12] = Reference(rbi-observacion-post-tratamiento-neoadjuvancia-ex)
* result[13] = Reference(rbi-tamano-tumor-ex)
* conclusion = "Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral"
* conclusionCode[Morfologico] = carcinomaductalinfiltrante
* conclusionCode[Topografico] = DeLaMama

Instance: carcinomaductalinfiltrante
InstanceOf: CodeableConceptSCTCIEO
Usage: #inline 

* id = "Morfologico"
* coding[SCT] = $snomed#82711006
* coding[CIEO] = $ICD-O-3#8500/3
* text = "Carcinoma ductal infiltrante"

Instance: DeLaMama
InstanceOf: CodeableConceptSCTCIEO
Usage: #inline 

* id = "Topografico"
* coding[SCT] = $snomed#76752008
* coding[CIEO] = $ICD-O-3#C50.9
* text = "Mama"