Instance:       r2bo-documento-informe-bundle-ejemplo
InstanceOf:     R2BOBundleDocumento
Usage:          #example
Title:          "Ejemplo del Documento un Informe de Anatomía Patológica"
Description:    "Ejemplo de Bundle que contiene los recursos de un documento de informe de anatomía patológica de una biopsia de un tejido mamario."

* type = #document
* timestamp = "2021-08-01T10:00:00-04:00"

* entry[CabeceraDocumento]
  * fullUrl = Canonical(r2bo-documento-biopsia-ex)
  * resource = r2bo-documento-biopsia-ex

* entry[Solicitud]
  * fullUrl = Canonical(r2bo-solicitud-informe-apa-ej)
  * resource = r2bo-solicitud-informe-apa-ej

* entry[Paciente]
  * fullUrl = Canonical(paciente-requiere-examen)
  * resource = paciente-requiere-examen

* entry[RolProfesional][0]
  * fullUrl = Canonical(ProfesionalHospital)
  * resource = ProfesionalHospital

* entry[RolProfesional][1]
  * fullUrl = Canonical(r2bo-anatopatologo-hospital)
  * resource = r2bo-anatopatologo-hospital

* entry[Profesional][0]
  * fullUrl = Canonical(profesional-hospital-collector)
  * resource = profesional-hospital-collector

* entry[Profesional][1]
  * fullUrl = Canonical(profesional-hospital-anatopatologo)
  * resource = profesional-hospital-anatopatologo

* entry[Organizacion]
  * fullUrl = Canonical(hospital-collector)
  * resource = hospital-collector

* entry[Muestra]
  * fullUrl = Canonical(r2bo-specimen-example)
  * resource = r2bo-specimen-example

* entry[ObservacionMicroscopica]
  * fullUrl = Canonical(r2bo-observacion-microscopica-ex)
  * resource = r2bo-observacion-microscopica-ex

* entry[Tumor]
  * fullUrl = Canonical(r2bo-tumor-ex)
  * resource = r2bo-tumor-ex

* entry[ObservacionMacroscopica]
  * fullUrl = Canonical(r2bo-observacion-macroscopica-ex)
  * resource = r2bo-observacion-macroscopica-ex
 

* entry[Estadificacion]
  * fullUrl = Canonical(r2bo-estadificacion-tnm-ex)
  * resource = r2bo-estadificacion-tnm-ex
 

* entry[CategoriaT]
  * fullUrl = Canonical(r2bo-tnm-categoria-tumor-primario-ex)
  * resource = r2bo-tnm-categoria-tumor-primario-ex
 

* entry[CategoriaN]
  * fullUrl = Canonical(r2bo-tnm-categoria-nodo-regional-ex)
  * resource = r2bo-tnm-categoria-nodo-regional-ex
 

* entry[CategoriaM]
  * fullUrl = Canonical(r2bo-tnm-categoria-metastasis-distantel-ex)
  * resource = r2bo-tnm-categoria-metastasis-distantel-ex
 

* entry[ObservacionInfiltracionPerineuralR2BO]
  * fullUrl = Canonical(r2bo-observacion-infiltracion-perineural-ex)
  * resource = r2bo-observacion-infiltracion-perineural-ex
 

* entry[ObservacionGangliosLinfaticos]
  * fullUrl = Canonical(r2bo-observacion-ganglios-linfaticos-ex)
  * resource = r2bo-observacion-ganglios-linfaticos-ex
 

* entry[ObservacionInfiltradoPeritumoralR2BO]
  * fullUrl = Canonical(r2bo-observacion-infiltracion-peritumoral-ex)
  * resource = r2bo-observacion-infiltracion-peritumoral-ex
 

* entry[ObservacionInvasionLinfaticaR2BO]
  * fullUrl = Canonical(r2bo-observacion-invasion-linfatica-ex)
  * resource = r2bo-observacion-invasion-linfatica-ex
 

* entry[ObservacionInvasionVascularR2BO]
  * fullUrl = Canonical(r2bo-observacion-invasion-vascular-ex)
  * resource = r2bo-observacion-invasion-vascular-ex
 

* entry[ObservacionMargenQuirugico]
  * fullUrl = Canonical(r2bo-observacion-margen-quirurgico-ex)
  * resource = r2bo-observacion-margen-quirurgico-ex
 

* entry[ObservacionCentricidad]
  * fullUrl = Canonical(r2bo-observacion-centricidad-ex)
  * resource = r2bo-observacion-centricidad-ex
 

* entry[ObservacionMultifocalidad]
  * fullUrl = Canonical(r2bo-observacion-multifocalidad-ex)
  * resource = r2bo-observacion-multifocalidad-ex
 

* entry[ObservacionPorcentajeNecrosisR2BO]
  * fullUrl = Canonical(r2bo-observacion-porcentaje-necrosis-ex)
  * resource = r2bo-observacion-porcentaje-necrosis-ex
 

* entry[ObservacionPostNeoadjudancia]
  * fullUrl = Canonical(r2bo-observacion-post-tratamiento-neoadjuvancia-ex)
  * resource = r2bo-observacion-post-tratamiento-neoadjuvancia-ex
 

* entry[TamanoTumorR2BO]
  * fullUrl = Canonical(r2bo-tamano-tumor-ex)
  * resource = r2bo-tamano-tumor-ex

