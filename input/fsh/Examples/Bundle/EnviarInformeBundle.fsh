Instance:       ribco-generar-informe-bundle-ejemplo
InstanceOf:     BundleGenerarInforme
Usage:          #example
Title:          "Ejemplo de Enviar un Informe de Anatomía Patológica"
Description:    "Ejemplo de Bundle que contiene los recursos necesarios para solicitar un informe de anatomía patológica de una biopsia de un tejido mamario."

* type = #transaction
* entry[Solicitud]
  * fullUrl = Canonical(ribco-solicitud-informe-apa-ej)
  * resource = ribco-solicitud-informe-apa-ej
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
  * fullUrl = Canonical(ribco-anatopatologo-hospital)
  * resource = ribco-anatopatologo-hospital
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
  * fullUrl = Canonical(ribco-specimen-example)
  * resource = ribco-specimen-example
  * request
    * method = #PUT
    * url = "Specimen?identifier=110101101"

* entry[InformeDiagnostico]
  * fullUrl = Canonical(ribco-informe-biopsia-ex)
  * resource = ribco-informe-biopsia-ex
  * request
    * method = #POST
    * url = "DiagnosticReport"

* entry[ObservacionMicroscopica]
  * fullUrl = Canonical(ribco-observacion-microscopica-ex)
  * resource = ribco-observacion-microscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMacroscopica]
  * fullUrl = Canonical(ribco-observacion-macroscopica-ex)
  * resource = ribco-observacion-macroscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[Estadificacion]
  * fullUrl = Canonical(ribco-estadificacion-tnm-ex)
  * resource = ribco-estadificacion-tnm-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaT]
  * fullUrl = Canonical(ribco-tnm-categoria-tumor-primario-ex)
  * resource = ribco-tnm-categoria-tumor-primario-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaN]
  * fullUrl = Canonical(ribco-tnm-categoria-nodo-regional-ex)
  * resource = ribco-tnm-categoria-nodo-regional-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaM]
  * fullUrl = Canonical(ribco-tnm-categoria-metastasis-distantel-ex)
  * resource = ribco-tnm-categoria-metastasis-distantel-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltracionPerineuralRIBCO]
  * fullUrl = Canonical(ribco-observacion-infiltracion-perineural-ex)
  * resource = ribco-observacion-infiltracion-perineural-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionGangliosLinfaticos]
  * fullUrl = Canonical(ribco-observacion-ganglios-linfaticos-ex)
  * resource = ribco-observacion-ganglios-linfaticos-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltradoPeritumoralRIBCO]
  * fullUrl = Canonical(ribco-observacion-infiltracion-peritumoral-ex)
  * resource = ribco-observacion-infiltracion-peritumoral-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionLinfaticaRIBCO]
  * fullUrl = Canonical(ribco-observacion-invasion-linfatica-ex)
  * resource = ribco-observacion-invasion-linfatica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionVascularRIBCO]
  * fullUrl = Canonical(ribco-observacion-invasion-vascular-ex)
  * resource = ribco-observacion-invasion-vascular-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMargenQuirugico]
  * fullUrl = Canonical(ribco-observacion-margen-quirurgico-ex)
  * resource = ribco-observacion-margen-quirurgico-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionCentricidad]
  * fullUrl = Canonical(ribco-observacion-centricidad-ex)
  * resource = ribco-observacion-centricidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMultifocalidad]
  * fullUrl = Canonical(ribco-observacion-multifocalidad-ex)
  * resource = ribco-observacion-multifocalidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPorcentajeNecrosisRIBCO]
  * fullUrl = Canonical(ribco-observacion-porcentaje-necrosis-ex)
  * resource = ribco-observacion-porcentaje-necrosis-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPostNeoadjudancia]
  * fullUrl = Canonical(ribco-observacion-post-tratamiento-neoadjuvancia-ex)
  * resource = ribco-observacion-post-tratamiento-neoadjuvancia-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[TamanoTumorRIBCO]
  * fullUrl = Canonical(ribco-tamano-tumor-ex)
  * resource = ribco-tamano-tumor-ex
  * request
    * method = #POST
    * url = "Observation"

Instance:           ribco-specimen-example-2
InstanceOf:         MuestraRIBCO
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

