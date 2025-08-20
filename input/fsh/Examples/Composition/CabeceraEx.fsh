Instance:       r2bo-documento-biopsia-ex
InstanceOf:     R2BOCompositionBiopsia
Usage:          #example
Title:          "Documento del Informe de Anatomía Patológica de Biopsia de Mama"
Description:    "Documento de un informe de anatomía patológica de biopsia de mama"

* extension[ReporteBiopsia] = ext-ex-reporte-biopsia

* identifier.value = "r2bo-2020-0001"
* status = #final
* type = $loinc#66110-8
* type.text = "Informe de Biopsia de Mama"
* category = http://terminology.hl7.org/CodeSystem/v2-0074#PAT "Pathology (gross & histopath, not surgical)"
* date = "2021-08-01T10:00:00-04:00"
* subject = Reference(paciente-requiere-examen)
* title = "Informe de Biopsia de Mama"
* author = Reference(r2bo-anatopatologo-hospital)

* section[solicitud]
  * code = $loinc#22636-5
  * code.text = "Solicitud de Biopsia"
  * text.status = #generated
  * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Solicitud de Biopsia</div>"
  * entry[0] = Reference(r2bo-solicitud-informe-apa-ej)

* section[muestra]
  * code = $loinc#22633-2
  * code.text = "Muestra de Biopsia"
  * text.status = #generated
  * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Muestra de Biopsia</div>"
  * entry[0] = Reference(r2bo-specimen-example)

* section[macroscopia]
  * code = $loinc#22634-0
  * code.text = "Macroscopia de Biopsia"
  * text.status = #generated
  * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Macroscopia de Biopsia</div>"
  * entry[0] = Reference(r2bo-observacion-macroscopica-ex)

* section[microscopia]
  * code = $loinc#22635-7
  * code.text = "Microscopia de Biopsia"
  * text.status = #generated
  * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Microscopia de Biopsia</div>"
  * entry[0] = Reference(r2bo-observacion-microscopica-ex)

* section[hallazgos]
  * code = $loinc#33746-9
  * code.text = "Hallazgos de Biopsia"
  * text.status = #generated
  * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Hallazgos de Biopsia</div>"
  * entry[0] = Reference(r2bo-observacion-ganglios-linfaticos-ex)
  * entry[1] = Reference(r2bo-observacion-infiltracion-perineural-ex)
  * entry[2] = Reference(r2bo-observacion-infiltracion-peritumoral-ex)
  * entry[3] = Reference(r2bo-observacion-invasion-linfatica-ex)
  * entry[4] = Reference(r2bo-observacion-invasion-vascular-ex)
  * entry[5] = Reference(r2bo-observacion-margen-quirurgico-ex)
  * entry[6] = Reference(r2bo-observacion-centricidad-ex)
  * entry[7] = Reference(r2bo-observacion-multifocalidad-ex)
  * entry[8] = Reference(r2bo-observacion-porcentaje-necrosis-ex)
  * entry[9] = Reference(r2bo-observacion-post-tratamiento-neoadjuvancia-ex)
  * entry[10] = Reference(r2bo-tamano-tumor-ex)

* section[conclusiones]
  * code = $loinc#22637-3
  * code.text = "Conclusiones de Biopsia"
  * text.status = #generated
  * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Conclusiones de Biopsia</div>"
  * entry[0] = Reference(r2bo-tumor-ex)
  * entry[1] = Reference(r2bo-estadificacion-tnm-ex)

* section[Notas]
  * code = $loinc#22638-1
  * code.text = "Notas del Informe de Biopsia"
  * text.status = #generated
  * text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Notas del Informe de Biopsia:</p><p>Carcinoma ductal infiltrante de mama, grado histológico 2, estadio pT2N2M1, con márgenes quirúrgicos positivos y con evidencia de necrosis tumoral</p></div>"

Instance: ext-ex-reporte-biopsia
InstanceOf: ExtensionReporteDiagnostico
Usage: #inline

* valueReference = Reference(r2bo-informe-biopsia-ex)