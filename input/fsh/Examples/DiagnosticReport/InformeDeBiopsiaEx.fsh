Instance:       r2bo-informe-biopsia-ex
InstanceOf:     R2BOInformeBiopsia
Usage:          #example
Title:          "Informe de Anatomía Patológica de Biopsia de Mama"
Description:    "Ejecución de un informe de anatomía patológica de biopsia de mama"

* extension[composition] = ext-ex-composition

* identifier.value = "r2bo-2020-0001"
* basedOn = Reference(r2bo-solicitud-informe-apa-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology (gross & histopath, not surgical)"
* code = $loinc#66110-8
* code.text = "Informe de Biopsia de Mama"
* subject = Reference(paciente-requiere-examen)
* issued = "2021-08-01T10:00:00-04:00"
* performer = Reference(r2bo-anatopatologo-hospital)
* specimen = Reference(r2bo-specimen-example)
* result[Microscopia] = Reference(r2bo-observacion-microscopica-ex)
* result[Macroscopia] = Reference(r2bo-observacion-macroscopica-ex)
* result[TNM] = Reference(r2bo-estadificacion-tnm-ex)
* result[Resultados][0] = Reference(r2bo-observacion-ganglios-linfaticos-ex)
* result[Resultados][+] = Reference(r2bo-observacion-infiltracion-perineural-ex)
* result[Resultados][+] = Reference(r2bo-observacion-infiltracion-peritumoral-ex)
* result[Resultados][+] = Reference(r2bo-observacion-invasion-linfatica-ex)
* result[Resultados][+] = Reference(r2bo-observacion-invasion-vascular-ex)
* result[Resultados][+] = Reference(r2bo-observacion-margen-quirurgico-ex)
* result[Resultados][+] = Reference(r2bo-observacion-centricidad-ex)
* result[Resultados][+] = Reference(r2bo-observacion-multifocalidad-ex)
* result[Resultados][+] = Reference(r2bo-observacion-porcentaje-necrosis-ex)
* result[Resultados][+] = Reference(r2bo-observacion-post-tratamiento-neoadjuvancia-ex)
* result[Resultados][+] = Reference(r2bo-tamano-tumor-ex)
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

Instance: ext-ex-composition
InstanceOf: ExtensionComposition
Usage: #inline

* valueReference = Reference(r2bo-documento-biopsia-ex)