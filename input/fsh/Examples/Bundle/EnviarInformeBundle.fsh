Instance:       rbi-generar-informe-bundle-ejemplo
InstanceOf:     BundleGenerarInforme
Usage:          #example
Title:          "Ejemplo de Enviar un Informe de Anatomía Patológica"
Description:    "Ejemplo de Bundle que contiene los recursos necesarios para solicitar un informe de anatomía patológica de una biopsia de un tejido mamario."

* type = #transaction
* entry[Solicitud]
  * fullUrl = Canonical(rbi-solicitud-informe-apa-ej)
  * resource = rbi-solicitud-informe-apa-ej
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
  * fullUrl = Canonical(rbi-anatopatologo-hospital)
  * resource = rbi-anatopatologo-hospital
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
  * fullUrl = Canonical(rbi-specimen-example)
  * resource = rbi-specimen-example
  * request
    * method = #PUT
    * url = "Specimen?identifier=110101101"

* entry[InformeDiagnostico]
  * fullUrl = Canonical(rbi-informe-biopsia-ex)
  * resource = rbi-informe-biopsia-ex
  * request
    * method = #POST
    * url = "DiagnosticReport"

* entry[ObservacionMicroscopica]
  * fullUrl = Canonical(rbi-observacion-microscopica-ex)
  * resource = rbi-observacion-microscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMacroscopica]
  * fullUrl = Canonical(rbi-observacion-macroscopica-ex)
  * resource = rbi-observacion-macroscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[Estadificacion]
  * fullUrl = Canonical(rbi-estadificacion-tnm-ex)
  * resource = rbi-estadificacion-tnm-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaT]
  * fullUrl = Canonical(rbi-tnm-categoria-tumor-primario-ex)
  * resource = rbi-tnm-categoria-tumor-primario-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaN]
  * fullUrl = Canonical(rbi-tnm-categoria-nodo-regional-ex)
  * resource = rbi-tnm-categoria-nodo-regional-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaM]
  * fullUrl = Canonical(rbi-tnm-categoria-metastasis-distantel-ex)
  * resource = rbi-tnm-categoria-metastasis-distantel-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltracionPerineuralRBI]
  * fullUrl = Canonical(rbi-observacion-infiltracion-perineural-ex)
  * resource = rbi-observacion-infiltracion-perineural-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionGangliosLinfaticos]
  * fullUrl = Canonical(rbi-observacion-ganglios-linfaticos-ex)
  * resource = rbi-observacion-ganglios-linfaticos-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltradoPeritumoralRBI]
  * fullUrl = Canonical(rbi-observacion-infiltracion-peritumoral-ex)
  * resource = rbi-observacion-infiltracion-peritumoral-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionLinfaticaRBI]
  * fullUrl = Canonical(rbi-observacion-invasion-linfatica-ex)
  * resource = rbi-observacion-invasion-linfatica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionVascularRBI]
  * fullUrl = Canonical(rbi-observacion-invasion-vascular-ex)
  * resource = rbi-observacion-invasion-vascular-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMargenQuirugico]
  * fullUrl = Canonical(rbi-observacion-margen-quirurgico-ex)
  * resource = rbi-observacion-margen-quirurgico-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionCentricidad]
  * fullUrl = Canonical(rbi-observacion-centricidad-ex)
  * resource = rbi-observacion-centricidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMultifocalidad]
  * fullUrl = Canonical(rbi-observacion-multifocalidad-ex)
  * resource = rbi-observacion-multifocalidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPorcentajeNecrosisRBI]
  * fullUrl = Canonical(rbi-observacion-porcentaje-necrosis-ex)
  * resource = rbi-observacion-porcentaje-necrosis-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPostNeoadjudancia]
  * fullUrl = Canonical(rbi-observacion-post-tratamiento-neoadjuvancia-ex)
  * resource = rbi-observacion-post-tratamiento-neoadjuvancia-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[TamanoTumorRBI]
  * fullUrl = Canonical(rbi-tamano-tumor-ex)
  * resource = rbi-tamano-tumor-ex
  * request
    * method = #POST
    * url = "Observation"

Instance:           rbi-specimen-example-2
InstanceOf:         MuestraRBI
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
  * bodySite = http://snomed.info/sct#76752008 "Structure of breast" 
  * bodySite.extension[CalificadorLateralidad] = lateralidadIzquierda
  * method = http://snomed.info/sct#122548005 "Biopsy of breast"
  * method.extension[MetodoProcedimiento] = MetodoIncisional
* note.text = "Resección completa de tejido mamario, posible carcinoma"

