Instance: rbi-minsal-cliente-solicitud
InstanceOf: CapabilityStatement
Title: "CapabilityStatement Cliente de Origen de Solicitudes del Repositorio de Biopsia del Ministerio de Salud"
Description: "CapabilityStatement para definir las caracteristicas mínimas del cliente que realiza la creación de solicitudes para informes de anatomía patológica y sus resultados."
Usage: #definition

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 1

* version = "0.1.0"
* name = "RbiMinsalSourceSolicitudCapabilityStatement"
* status = #active
* experimental = true
* date = "2025-03-05T15:30:00-03:00"


* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #application/fhir+xml

* imports[0] = "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PIXm.Origen"
* imports[+] = "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Source"

* implementationGuide[0] = Canonical(hl7.fhir.cl.clcore)
* implementationGuide[1] = Canonical(hl7.fhir.cl.minsal.nid)
* implementationGuide[2] = Canonical(hl7.fhir.us.mcode)

* rest
  * mode = #client
  * documentation = """
  Este Cliente del Repositorio de Biopsia del Ministerio de Salud permite la creación de solicitudes para informes de anatomía patológica y sus resultados.
  """
  * security
    * service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
    * description = "OAuth2 usando el APIG del Ministerio de Salud para generar Tokens para enviar y acceder al respositorio"
  
  * resource[0]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #PractitionerRole
    * profile = Canonical(CoreRolClinicoCl)
    * supportedProfile[0] = Canonical(RolProfesionalRBI)
    * interaction[0]
      * code = #create
    * interaction[+]
      * code = #update
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical
    * searchParam[0]
      * name = "practitioner"
      * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner"
      * type = #reference
      * documentation = "El profesional que cumple el rol"
    * searchParam[+]
      * name = "organization"
      * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-organization"
      * type = #reference
      * documentation = "La identidad de la organización que representa el profesional"

  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #ServiceRequest
    * supportedProfile[0] = Canonical(SolicitudInformeAPA)
    * interaction[0]
      * code = #create
    * interaction[+]
      * code = #update
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical
    * searchParam[0]
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
      * type = #token
      * documentation = "Identificador único de la solicitud"

  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Specimen
    * supportedProfile[0] = Canonical(MuestraRBI)
    * interaction[0]
      * code = #create
    * interaction[+]
      * code = #update
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical     
    * searchParam[0]
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-identifier"
      * type = #token
      * documentation = "Identificador único asociado a la muestra"

  * interaction[0]
    * code = #transaction
    * documentation = "Iteracción para enviar solicitudes de un informe de biopsia y sus resultados"

