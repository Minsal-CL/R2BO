Instance:       ribco-informe-biopsia-ex
InstanceOf:     InformeBiopsia 
Usage:          #example
Title:          "Informe de Anatomía Patológica de Biopsia de Mama"
Description:    "Ejecución de un informe de anatomía patológica de biopsia de mama"

* identifier.value = "ribco-2020-0001"
* basedOn = Reference(ribco-solicitud-informe-apa-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology (gross & histopath, not surgical)"
* code = $loinc#66110-8 "Breast Pathology biopsy report"
* code.text = "Informe de Biopsia de Mama"
* subject = Reference(paciente-requiere-examen)
* issued = "2021-08-01T10:00:00-04:00"
* performer = Reference(ribco-anatopatologo-hospital)
* specimen = Reference(ribco-specimen-example)
* result[Microscopia] = Reference(ribco-observacion-microscopica-ex)
* result[Macroscopia] = Reference(ribco-observacion-macroscopica-ex)
* result[TNM] = Reference(ribco-estadificacion-tnm-ex)
* result[3] = Reference(ribco-observacion-ganglios-linfaticos-ex)
* result[4] = Reference(ribco-observacion-infiltracion-perineural-ex)
* result[5] = Reference(ribco-observacion-infiltracion-peritumoral-ex)
* result[6] = Reference(ribco-observacion-invasion-linfatica-ex)
* result[7] = Reference(ribco-observacion-invasion-vascular-ex)
* result[8] = Reference(ribco-observacion-margen-quirurgico-ex)
* result[9] = Reference(ribco-observacion-centricidad-ex)
* result[10] = Reference(ribco-observacion-multifocalidad-ex)
* result[11] = Reference(ribco-observacion-porcentaje-necrosis-ex)
* result[12] = Reference(ribco-observacion-post-tratamiento-neoadjuvancia-ex)
* result[13] = Reference(ribco-tamano-tumor-ex)
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