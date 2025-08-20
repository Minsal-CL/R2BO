Instance: r2bo-minsal-consumidor
InstanceOf: CapabilityStatement
Title: "CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud"
Description: "CapabilityStatement para definir las caracteristicas mínimas del  para ver las interacciones posibles para buscar informes de anatomía patológica y sus resultados."	
Usage: #definition

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 1

* version = "0.1.0"
* name = "R2BOMinsalConsumidorCapabilityStatement"
* status = #active
* experimental = true
* date = "2025-03-05T15:30:00-03:00"


* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #application/fhir+xml

* imports[0] = "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/NID.IHE.HPD.Consumer"
* imports[+] = "https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement/MPI.IHE.PDQm.Search.Cliente"

* implementationGuide[0] = Canonical(hl7.fhir.cl.clcore)
* implementationGuide[1] = Canonical(hl7.fhir.cl.minsal.nid)
* implementationGuide[2] = Canonical(hl7.fhir.us.mcode)

* rest
  * mode = #client
  * documentation = """
  Este Cliente del Repositorio de Biopsia del Ministerio de Salud permite la busqueda de informes de anatomía patológica y sus resultados.
  """
  * security
    * service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
    * description = "OAuth2 usando el APIG del Ministerio de Salud para generar Tokens para enviar y acceder al respositorio"
  * resource[0] //DiagnosticReport
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #DiagnosticReport
    * supportedProfile[0] = Canonical(R2BOInformeBiopsia)
    * interaction[0]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #vread
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical
    * searchInclude[0] = "*"
    * searchInclude[+] = "DiagnosticReport:based-on"
    * searchInclude[+] = "DiagnosticReport:patient"
    * searchInclude[+] = "DiagnosticReport:performer"
    * searchInclude[+] = "DiagnosticReport:result"
    * searchInclude[+] = "DiagnosticReport:specimen"
    * searchInclude[+] = "DiagnosticReport:subject"
    * searchRevInclude[0] = "Observation:focus"
    * searchParam[0]
      * name = "code"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
      * type = #token
      * documentation = "Código de identificación del informe"
    * searchParam[+]
      * name = "subject"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-subject"
      * type = #reference
      * documentation = "El sujeto del informe"
    * searchParam[+]
      * name = "conclusion"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-conclusion"
      * type = #token
      * documentation = "Código de conclusión (interpretación/impresión) del informe"
    * searchParam[+]
      * name = "result"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-result"
      * type = #reference
      * documentation = "Enlace de la observaciones de los resultados"
    * searchParam[+]
      * name = "based-on"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-based-on"
      * type = #reference
      * documentation = "Solicitud del Informe de Anatomia Patológica"
    * searchParam[+]
      * name = "patient"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
      * type = #reference
      * documentation = "Paciente asociado al informe"
    * searchParam[+]
      * name = "specimen"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-specimen"
      * type = #reference
      * documentation = "Detalles del Especimen"
    * searchParam[+]
      * name = "issued"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-issued"
      * type = #date
      * documentation = "Cuando fue creado el informe"
    * searchParam[+]
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
      * type = #token
      * documentation = "Identificador del informe"
    * searchParam[+]
      * name = "performer"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-performer"
      * type = #reference
      * documentation = "Quien es el responsable del informe"
    * searchParam[+]
      * name = "_id"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
      * type = #token
      * documentation = "Id logico dentro del servidor del informe"
    * searchParam[+]
      * name = "category"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-category"
      * type = #token
      * documentation = "Cual es la categoria del informe, por defecto es PAT"
    * searchParam[+]
      * name = "status"
      * definition = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-status"
      * type = #token
      * documentation = "El estado del Reporte"
    * operation
      * name = "graphql"
      * definition = "http://hl7.org/fhir/OperationDefinition/Resource-graphql"
      * documentation = "Operación para extraer los datos del repositorio de biopsia en formato GraphQL"  

  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Observation
    * profile = Canonical(ObservacionCL)
    * supportedProfile[0] = Canonical(EstadificacionTNM)
    * supportedProfile[+] = Canonical(CategoriaTNM)
    * supportedProfile[+] = Canonical(ResultadosReporteBiopsia)
    * interaction[0]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #vread
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical
    * searchInclude[0] = "*"
    * searchInclude[+] = "Observation:based-on"
    * searchInclude[+] = "Observation:derived-from"
    * searchInclude[+] = "Observation:device"
    * searchInclude[+] = "Observation:encounter"
    * searchInclude[+] = "Observation:focus"
    * searchInclude[+] = "Observation:has-member"
    * searchInclude[+] = "Observation:part-of"
    * searchInclude[+] = "Observation:patient"
    * searchInclude[+] = "Observation:performer"
    * searchInclude[+] = "Observation:specimen"
    * searchInclude[+] = "Observation:subject"
    * searchRevInclude[0] = "DiagnosticReport:result"
    * searchRevInclude[+] = "Observation:derived-from"
    * searchRevInclude[+] = "Observation:focus"
    * searchRevInclude[+] = "Observation:has-member"
    * searchParam[0]
      * name = "date"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
      * type = #date
      * documentation = "Fecha de la observación"
    * searchParam[+]
      * name = "subject"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-subject"
      * type = #reference
      * documentation = "El sujeto de la observación"
    * searchParam[+]
      * name = "value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-value-concept"
      * type = #token
      * documentation = "El valor de la observación, si el valor es un concepto codificado"
    * searchParam[+]
      * name = "focus"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-focus"
      * type = #reference
      * documentation = "El objeto de la observación"
    * searchParam[+]
      * name = "has-member"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-has-member"
      * type = #reference
      * documentation = "Recursos relacionados son miembros de la observación"
    * searchParam[+]
      * name = "component-code-value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity"
      * type = #composite
      * documentation = "Par entre el código del componente y el valor de la cantidad del componente"
    * searchParam[+]
      * name = "code-value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity"
      * type = #composite
      * documentation = "Par entre el código y el valor de la cantidad"
    * searchParam[+]
      * name = "combo-code-value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-concept"
      * type = #composite
      * documentation = "Par en el parametro de código y valor codificado, incluyendo en componentes"
    * searchParam[+]
      * name = "value-string"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-value-string"
      * type = #string
      * documentation = "El valor de la observación, si el valor es un string, y también busca en CodeableConcept.text"
    * searchParam[+]
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
      * type = #token
      * documentation = "Identificador único de la observación"
    * searchParam[+]
      * name = "method"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-method"
      * type = #token
      * documentation = "El método usado para la observación"
    * searchParam[+]
      * name = "value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-value-quantity"
      * type = #quantity
      * documentation = "El valor de la observación, si el valor es una cantidad, o un SampledData (solo busca en los límites de los valores en los datos muestreados)"
    * searchParam[+]
      * name = "combo-value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-value-quantity"
      * type = #quantity
      * documentation = "El valor o el valor del componente de la observación, si el valor es una cantidad, o un SampledData (solo busca en los límites de los valores en los datos muestreados)"
    * searchParam[+]
      * name = "code-value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept"
      * type = #composite
      * documentation = "Par en el parametro de código y valor codificado"
    * searchParam[+]
      * name = "_id"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
      * type = #token
      * documentation = "Id lógico del recurso"
    * searchParam[+]
      * name = "status"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-status"
      * type = #token
      * documentation = "El estado de la observación"
    * searchParam[+]
      * name = "combo-data-absent-reason"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-data-absent-reason"
      * type = #token
      * documentation = "La razón por la que el valor esperado en el elemento Observation.component.value[x] está ausente"
    * searchParam[+]
      * name = "code"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
      * type = #token
      * documentation = "El código de identificación de la observación"
    * searchParam[+]
      * name = "component-data-absent-reason"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-data-absent-reason"
      * type = #token
      * documentation = "La razón por la que el valor esperado en el elemento Observation.component.value[x] está ausente"
    * searchParam[+]
      * name = "combo-code-value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-quantity"
      * type = #composite
      * documentation = "Par en el parametro de código y valor codificado, incluyendo en componentes"
    * searchParam[+]
      * name = "code-value-string"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-code-value-string"
      * type = #composite
      * documentation = "Par en el parametro de código y valor codificado, incluyendo en componentes"
    * searchParam[+]
      * name = "based-on"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-based-on"
      * type = #reference
      * documentation = "Recurso que origina la observación"
    * searchParam[+]
      * name = "patient"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
      * type = #reference
      * documentation = "El paciente asociado a la observación"
    * searchParam[+]
      * name = "specimen"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-specimen"
      * type = #reference
      * documentation = "El especimen asociado a la observación"
    * searchParam[+]
      * name = "component-code"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code"
      * type = #token
      * documentation = "El código del componente de la observación"
    * searchParam[+]
      * name = "performer"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-performer"
      * type = #reference
      * documentation = "El individuo u organización que realizó la observación"
    * searchParam[+]
      * name = "combo-code"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code"
      * type = #token
      * documentation = "El código de la observación, incluyendo en componentes"
    * searchParam[+]
      * name = "component-value-quantity"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-value-quantity"
      * type = #quantity
      * documentation = "El valor del componente de la observación, si el valor es una cantidad, o un SampledData (solo busca en los límites de los valores en los datos muestreados)"
    * searchParam[+]
      * name = "data-absent-reason"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-data-absent-reason"
      * type = #token
      * documentation = "La razón de por qué el valor esperado en el elemento Observation.value[x] está ausente"
    * searchParam[+]
      * name = "component-code-value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept"
      * type = #composite
      * documentation = "Par en el parametro de código y valor codificado de los componentes"
    * searchParam[+]
      * name = "component-value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-component-value-concept"
      * type = #token
      * documentation = "El valor del componente de la observación, si el valor es un concepto codificado"
    * searchParam[+]
      * name = "category"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-category"
      * type = #token
      * documentation = "La clasificación del tipo de observación"
    * searchParam[+]
      * name = "combo-value-concept"
      * definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-value-concept"
      * type = #token
      * documentation = "El valor de la observación, si el valor es un concepto codificado, incluyendo en componentes"
  
  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #PractitionerRole
    * profile = Canonical(CoreRolClinicoCl)
    * supportedProfile[0] = Canonical(RolProfesionalR2BO)
    * interaction[0]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #vread
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical
    * searchInclude[0] = "*"
    * searchInclude[+] = "PractitionerRole:endpoint"
    * searchInclude[+] = "PractitionerRole:location"
    * searchInclude[+] = "PractitionerRole:organization"
    * searchInclude[+] = "PractitionerRole:practitioner"
    * searchInclude[+] = "PractitionerRole:service"
    * searchRevInclude[0] = "DiagnosticReport:performer"
    * searchRevInclude[+] = "DiagnosticReport:results-interpreter"
    * searchRevInclude[+] = "Observation:focus"
    * searchRevInclude[+] = "Observation:performer"
    * searchRevInclude[+] = "Patient:general-practitioner"
    * searchRevInclude[+] = "ServiceRequest:performer"
    * searchRevInclude[+] = "ServiceRequest:requester"
    * searchRevInclude[+] = "Specimen:collector"
    * searchParam[0]
      * name = "role"
      * definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
      * type = #token
      * documentation = "El rol que cumple el profesional en el establecimiento de salud"
    * searchParam[+]
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
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #vread
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical
    * searchInclude[0] = "*"
    * searchInclude[+] = "ServiceRequest:based-on"
    * searchInclude[+] = "ServiceRequest:patient"
    * searchInclude[+] = "ServiceRequest:performer"
    * searchInclude[+] = "ServiceRequest:requester"
    * searchInclude[+] = "ServiceRequest:specimen"
    * searchInclude[+] = "ServiceRequest:subject"
    * searchRevInclude[0] = "DiagnosticReport:based-on"
    * searchRevInclude[+] = "Observation:based-on"
    * searchRevInclude[+] = "Observation:focus"
    * searchRevInclude[+] = "ServiceRequest:based-on"
    * searchRevInclude[+] = "ServiceRequest:replaces"
    * searchParam[0]
      * name = "code"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
      * type = #token
      * documentation = "Código de solicitud"
    * searchParam[+]
      * name = "subject"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-subject"
      * type = #reference
      * documentation = "Búsqueda por sujeto"
    * searchParam[+]
      * name = "patient"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
      * type = #reference
      * documentation = "Paciente asociado a la solicitud"
    * searchParam[+]
      * name = "specimen"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-specimen"
      * type = #reference
      * documentation = "Muestra que sera analizada"
    * searchParam[+]
      * name = "requester"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-requester"
      * type = #reference
      * documentation = "Quien solicita el servicio"
    * searchParam[+]
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
      * type = #token
      * documentation = "Identificador único de la solicitud"
    * searchParam[+]
      * name = "performer"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer"
      * type = #reference
      * documentation = "Responsable de realizar el servicio"
    * searchParam[+]
      * name = "intent"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-intent"
      * type = #token
      * documentation = "proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option"
    * searchParam[+]
      * name = "performer-type"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer-type"
      * type = #token
      * documentation = "Performer role"
    * searchParam[+]
      * name = "_id"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
      * type = #token
      * documentation = "Id lógico del recurso"
      * name = "category"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-category"
      * type = #token
      * documentation = "Clasificación del servicio"
    * searchParam[+]
      * name = "status"
      * definition = "http://hl7.org/fhir/SearchParameter/ServiceRequest-status"
      * type = #token
      * documentation = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"

  * resource[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHALL
    * type = #Specimen
    * supportedProfile[0] = Canonical(MuestraR2BO)
    * interaction[0]
      * code = #search-type
    * interaction[+]
      * code = #read
    * interaction[+]
      * code = #vread
    * referencePolicy[0] = #literal
    * referencePolicy[+] = #logical
    * searchInclude[0] = "*"
    * searchInclude[+] = "Specimen:collector"
    * searchInclude[+] = "Specimen:parent"
    * searchInclude[+] = "Specimen:patient"
    * searchInclude[+] = "Specimen:subject"
    * searchRevInclude[0] = "DiagnosticReport:specimen"
    * searchRevInclude[+] = "Observation:focus"
    * searchRevInclude[+] = "Observation:specimen"
    * searchRevInclude[+] = "ServiceRequest:specimen"
    * searchRevInclude[+] = "Specimen:parent"         
    * searchParam[0]
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-identifier"
      * type = #token
      * documentation = "Identificador único asociado a la muestra"
    * searchParam[+]
      * name = "bodysite"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-bodysite"
      * type = #token
      * documentation = "EL código de la ubicación anatómica de la muestra"
    * searchParam[+]
      * name = "subject"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-subject"
      * type = #reference
      * documentation = "El sujeto de la muestra"
    * searchParam[+]
      * name = "collected"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-collected"
      * type = #date
      * documentation = "La fecha de cuando fue recolectada la muestra"
    * searchParam[+]
      * name = "type"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-type"
      * type = #token
      * documentation = "Tipo de muestra"
    * searchParam[+]
      * name = "collector"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-collector"
      * type = #reference
      * documentation = "Quien Recolecto la muestra"
    * searchParam[+]
      * name = "patient"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-patient"
      * type = #reference
      * documentation = "EL paciente asociado a la muestra"
    * searchParam[+]
      * name = "status"
      * definition = "http://hl7.org/fhir/SearchParameter/Specimen-status"
      * type = #token
      * documentation = "available | unavailable | unsatisfactory | entered-in-error"

  * interaction[0]
    * code = #search-system
    * documentation = "Iteracción para realizar busquedas de un informe de biopsia y sus resultados"

  * operation
    * name = "graphql"
    * definition = "http://hl7.org/fhir/OperationDefinition/Resource-graphql"
    * documentation = "Operación para extraer los datos del repositorio de biopsia en formato GraphQL"  


