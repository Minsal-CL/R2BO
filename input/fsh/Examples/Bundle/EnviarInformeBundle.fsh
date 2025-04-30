Instance:       riap-generar-informe-bundle-ejemplo
InstanceOf:     BundleGenerarInforme
Usage:          #example
Title:          "Ejemplo de Enviar un Informe de Anatomía Patológica"
Description:    "Ejemplo de Bundle que contiene los recursos necesarios para solicitar un informe de anatomía patológica de una biopsia de un tejido mamario."

* type = #transaction
* entry[Solicitud]
  * fullUrl = Canonical(riap-solicitud-informe-apa-ej)
  * resource = riap-solicitud-informe-apa-ej
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
  * fullUrl = Canonical(riap-anatopatologo-hospital)
  * resource = riap-anatopatologo-hospital
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
  * fullUrl = Canonical(riap-specimen-example)
  * resource = riap-specimen-example
  * request
    * method = #PUT
    * url = "Specimen?identifier=110101101"

* entry[InformeDiagnostico]
  * fullUrl = Canonical(riap-informe-biopsia-ex)
  * resource = riap-informe-biopsia-ex
  * request
    * method = #POST
    * url = "DiagnosticReport"

* entry[ObservacionMicroscopica]
  * fullUrl = Canonical(riap-observacion-microscopica-ex)
  * resource = riap-observacion-microscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMacroscopica]
  * fullUrl = Canonical(riap-observacion-macroscopica-ex)
  * resource = riap-observacion-macroscopica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[Estadificacion]
  * fullUrl = Canonical(riap-estadificacion-tnm-ex)
  * resource = riap-estadificacion-tnm-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaT]
  * fullUrl = Canonical(riap-tnm-categoria-tumor-primario-ex)
  * resource = riap-tnm-categoria-tumor-primario-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaN]
  * fullUrl = Canonical(riap-tnm-categoria-nodo-regional-ex)
  * resource = riap-tnm-categoria-nodo-regional-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[CategoriaM]
  * fullUrl = Canonical(riap-tnm-categoria-metastasis-distantel-ex)
  * resource = riap-tnm-categoria-metastasis-distantel-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltracionPerineuralRIAP]
  * fullUrl = Canonical(riap-observacion-infiltracion-perineural-ex)
  * resource = riap-observacion-infiltracion-perineural-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionGangliosLinfaticos]
  * fullUrl = Canonical(riap-observacion-ganglios-linfaticos-ex)
  * resource = riap-observacion-ganglios-linfaticos-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInfiltradoPeritumoralRIAP]
  * fullUrl = Canonical(riap-observacion-infiltracion-peritumoral-ex)
  * resource = riap-observacion-infiltracion-peritumoral-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionLinfaticaRIAP]
  * fullUrl = Canonical(riap-observacion-invasion-linfatica-ex)
  * resource = riap-observacion-invasion-linfatica-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionInvasionVascularRIAP]
  * fullUrl = Canonical(riap-observacion-invasion-vascular-ex)
  * resource = riap-observacion-invasion-vascular-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMargenQuirugico]
  * fullUrl = Canonical(riap-observacion-margen-quirurgico-ex)
  * resource = riap-observacion-margen-quirurgico-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionCentricidad]
  * fullUrl = Canonical(riap-observacion-centricidad-ex)
  * resource = riap-observacion-centricidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionMultifocalidad]
  * fullUrl = Canonical(riap-observacion-multifocalidad-ex)
  * resource = riap-observacion-multifocalidad-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPorcentajeNecrosisRIAP]
  * fullUrl = Canonical(riap-observacion-porcentaje-necrosis-ex)
  * resource = riap-observacion-porcentaje-necrosis-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[ObservacionPostNeoadjudancia]
  * fullUrl = Canonical(riap-observacion-post-tratamiento-neoadjuvancia-ex)
  * resource = riap-observacion-post-tratamiento-neoadjuvancia-ex
  * request
    * method = #POST
    * url = "Observation"

* entry[TamanoTumorRIAP]
  * fullUrl = Canonical(riap-tamano-tumor-ex)
  * resource = riap-tamano-tumor-ex
  * request
    * method = #POST
    * url = "Observation"

Instance:           riap-specimen-example-2
InstanceOf:         MuestraRIAP
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

