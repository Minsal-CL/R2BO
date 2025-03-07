Instance:       rbi-solicitud-informe-apa-bundle
InstanceOf:     BundleSolicitarInforme
Usage:          #example
Title:          "Ejemplo de Solicitud Biopsia"
Description:    "Ejemplo de Bundle que contiene los recursos necesarios para solicitar una biopsia de tejido mamario."

* type = #transaction
* entry[Solicitud]
  * fullUrl = "https://interoperabilidad.minsal.cl/fhir/ig/rbi/ServiceRequest/rbi-solicitud-informe-apa-1-ej"
  * resource = rbi-solicitud-informe-apa-1-ej
  * request
    * method = #POST
    * url = "ServiceRequest"

* entry[Paciente]
  * fullUrl = Canonical(paciente-requiere-examen)
  * resource = paciente-requiere-examen
  * request
    * method = #POST
    * url = "Patient"
    * ifNoneExist = "Patient?identifier=16182522-0"

* entry[RolProfesional]
  * fullUrl = Canonical(ProfesionalHospital)
  * resource = ProfesionalHospital
  * request
    * method = #POST
    * url = "PractitionerRole"
    * ifNoneExist = "PractitionerRole?practitioner.identifier=5135329-3&organization.identifier=121109"

* entry[Profesional]
  * fullUrl = Canonical(profesional-hospital-collector)
  * resource = profesional-hospital-collector
  * request
    * method = #POST
    * url = "Practitioner"
    * ifNoneExist = "Practitioner?identifier=5135329-3"

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
    * method = #POST
    * url = "Specimen"

Instance:   rbi-solicitud-informe-apa-1-ej
InstanceOf: SolicitudInformeAPA
Usage:      #inline

* meta.versionId = "1"
* identifier.value = "111111101"
* status = #draft
* intent = #order
* code = $snomed#116784002
* code.text = "Informe de Biopsia"
* subject = Reference(paciente-requiere-examen)
* requester = Reference(ProfesionalHospital)
* reasonCode = ReasonCodeSospechaDiagnostica
* specimen = Reference(rbi-specimen-example)
* performer = Reference(hospital-collector)	
* locationCode  = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HLAB "hospital laboratory"