Instance: riap-minsal-analisis
InstanceOf: CapabilityStatement
Title: "CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud"
Description: "CapabilityStatement para definir las caracteristicas mínimas del \"Cliente Analista\" que realiza analisis secundario de informes de anatomía patológica y sus resultados, para tomar decisiones de salud pública."	
Usage: #definition

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 1

* version = "0.1.0"
* name = "RIAPMinsalAnalistaCapabilityStatement"
* status = #active
* experimental = true
* date = "2025-03-05T15:30:00-03:00"


* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #application/fhir+xml


* implementationGuide[0] = Canonical(hl7.fhir.cl.clcore)
* implementationGuide[1] = Canonical(hl7.fhir.cl.minsal.nid)
* implementationGuide[2] = Canonical(hl7.fhir.us.mcode)

* rest
  * mode = #client
  * documentation = """
  El Cliente Analiste del Repositorio de Biopsia del Ministerio de Salud permite extraer los datos de los informes de anatomía patológica y sus resultados para realizar análisis secundario y tomar decisiones de salud pública.
  """
  * security
    * service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
    * description = "OAuth2 usando el APIG del Ministerio de Salud para generar Tokens para enviar y acceder al respositorio"
  * resource[0] //DiagnosticReport
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #DiagnosticReport
    * supportedProfile[0] = Canonical(InformeBiopsia)

  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Observation
    * profile = Canonical(ObservacionCL)
    * supportedProfile[0] = Canonical(EstadificacionTNM)
    * supportedProfile[+] = Canonical(CategoriaTNM)
    * supportedProfile[+] = Canonical(ResultadosReporteBiopsia)
  
  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #PractitionerRole
    * profile = Canonical(CoreRolClinicoCl)
    * supportedProfile[0] = Canonical(RolProfesionalRIAP)

  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #ServiceRequest
    * supportedProfile[0] = Canonical(SolicitudInformeAPA)

  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Specimen
    * supportedProfile[0] = Canonical(MuestraRIAP)

  * operation
    * name = "export"
    * definition = "http://hl7.org/fhir/uv/bulkdata/OperationDefinition/export"
    * documentation = "Operación para exportar los datos del repositorio de informes de anatomia en formato FHIR Bulk Data, para analisis secundario"
  


