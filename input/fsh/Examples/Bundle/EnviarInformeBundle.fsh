Instance:       r2bo-generar-informe-bundle-ejemplo
InstanceOf:     BundleGenerarInforme
Usage:          #example
Title:          "Ejemplo de Enviar un Informe de Anatomía Patológica"
Description:    "Ejemplo de Bundle que contiene los recursos necesarios para solicitar un informe de anatomía patológica de una biopsia de un tejido mamario."

* type = #transaction
* entry[Solicitud]
  * fullUrl = Canonical(r2bo-solicitud-informe-apa-ej)
  * resource = r2bo-solicitud-informe-apa-ej
  * request
    * method = #PUT
    * url = "ServiceRequest?identifier=111111101"

* entry[Paciente]
  * fullUrl = Canonical(paciente-requiere-examen)
  * resource = paciente-requiere-examen
  * request
    * method = #POST
    * url = "Patient"
    * ifNoneExist = "Patient?identifier=16182522-0"

* entry[RolProfesional][0]
  * fullUrl = Canonical(ProfesionalHospital)
  * resource = ProfesionalHospital
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "PractitionerRole?practitioner.identifier=5135329-3&organization.identifier=121109"

* entry[RolProfesional][1]
  * fullUrl = Canonical(r2bo-anatopatologo-hospital)
  * resource = r2bo-anatopatologo-hospital
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "PractitionerRole?practitioner.identifier=19283789-2&organization.identifier=121109"

* entry[Profesional][0]
  * fullUrl = Canonical(profesional-hospital-collector)
  * resource = profesional-hospital-collector
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "Practitioner?identifier=5135329-3"

* entry[Profesional][1]
  * fullUrl = Canonical(profesional-hospital-anatopatologo)
  * resource = profesional-hospital-anatopatologo
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "Practitioner?identifier=19283789-2"

* entry[Organizacion]
  * fullUrl = Canonical(hospital-collector)
  * resource = hospital-collector
  * request
    * method = #POST
    * url = "Organization"
    * ifNoneExist = "Organization?identifier=121109"

* entry[Muestra]
  * fullUrl = Canonical(r2bo-specimen-example)
  * resource = r2bo-specimen-example
  * request
    * method = #PUT
    * url = "Specimen?identifier=110101101"

* entry[InformeDiagnostico]
  * fullUrl = Canonical(r2bo-informe-biopsia-ex)
  * resource = r2bo-informe-biopsia-ex
  * request
    * method = #POST
    * url = "DiagnosticReport"

* entry[ObservacionMicroscopica]
  * fullUrl = Canonical(r2bo-observacion-microscopica-ex)
  * resource = r2bo-observacion-microscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMacroscopica]
  * fullUrl = Canonical(r2bo-observacion-macroscopica-ex)
  * resource = r2bo-observacion-macroscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[Estadificacion]
  * fullUrl = Canonical(r2bo-estadificacion-tnm-ex)
  * resource = r2bo-estadificacion-tnm-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaT]
  * fullUrl = Canonical(r2bo-tnm-categoria-tumor-primario-ex)
  * resource = r2bo-tnm-categoria-tumor-primario-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaN]
  * fullUrl = Canonical(r2bo-tnm-categoria-nodo-regional-ex)
  * resource = r2bo-tnm-categoria-nodo-regional-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaM]
  * fullUrl = Canonical(r2bo-tnm-categoria-metastasis-distantel-ex)
  * resource = r2bo-tnm-categoria-metastasis-distantel-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltracionPerineuralR2BO]
  * fullUrl = Canonical(r2bo-observacion-infiltracion-perineural-ex)
  * resource = r2bo-observacion-infiltracion-perineural-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionGangliosLinfaticos]
  * fullUrl = Canonical(r2bo-observacion-ganglios-linfaticos-ex)
  * resource = r2bo-observacion-ganglios-linfaticos-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltradoPeritumoralR2BO]
  * fullUrl = Canonical(r2bo-observacion-infiltracion-peritumoral-ex)
  * resource = r2bo-observacion-infiltracion-peritumoral-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionLinfaticaR2BO]
  * fullUrl = Canonical(r2bo-observacion-invasion-linfatica-ex)
  * resource = r2bo-observacion-invasion-linfatica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionVascularR2BO]
  * fullUrl = Canonical(r2bo-observacion-invasion-vascular-ex)
  * resource = r2bo-observacion-invasion-vascular-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMargenQuirugico]
  * fullUrl = Canonical(r2bo-observacion-margen-quirurgico-ex)
  * resource = r2bo-observacion-margen-quirurgico-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionCentricidad]
  * fullUrl = Canonical(r2bo-observacion-centricidad-ex)
  * resource = r2bo-observacion-centricidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMultifocalidad]
  * fullUrl = Canonical(r2bo-observacion-multifocalidad-ex)
  * resource = r2bo-observacion-multifocalidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPorcentajeNecrosisR2BO]
  * fullUrl = Canonical(r2bo-observacion-porcentaje-necrosis-ex)
  * resource = r2bo-observacion-porcentaje-necrosis-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPostNeoadjudancia]
  * fullUrl = Canonical(r2bo-observacion-post-tratamiento-neoadjuvancia-ex)
  * resource = r2bo-observacion-post-tratamiento-neoadjuvancia-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[TamanoTumorR2BO]
  * fullUrl = Canonical(r2bo-tamano-tumor-ex)
  * resource = r2bo-tamano-tumor-ex
  * request
    * method = #POST
    * url = "Observation"

Instance:           r2bo-specimen-example-2
InstanceOf:         MuestraR2BO
Usage:              #inline

* meta.versionId = "2"
* identifier.value = "110101101"
* status = #unavailable
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS "Tissue"
* subject = Reference(paciente-requiere-examen)
* receivedTime = "2021-06-01T00:00:00Z"
* collection
  * collector = Reference(ProfesionalHospital)
  * collectedDateTime = "2021-06-01T10:00:00Z"
  * bodySite = http://snomed.info/sct#76752008
  * bodySite.extension[CalificadorLateralidad] = lateralidadIzquierda
  * method = http://snomed.info/sct#122548005
  * method.extension[MetodoProcedimiento] = MetodoIncisional
* note.text = "Resección completa de tejido mamario, posible carcinoma"

