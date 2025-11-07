Mapping:     EspecimenModeloSolicitudMap
Source:      SolicitudR2BOLogico
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
Id:          especimen-modelo-solicitud-map
Title:       "Mapeo de Solicitud a Muestra"
Description: "Mapeo entre el modelo lógico de Solicitud R2BO y el perfil de Muestra Biopsia R2BO."

* muestraOrgano -> "Specimen.collection[0].bodySite" "Sitio del cuerpo de la muestra"
* tipoProcedimiento -> "Specimen.collection[0].method" "Tipo de procedimiento de recolección"
* medicoIntervencionista -> "Specimen.collection[0].collector" "Profesional que realiza la recolección de la muestra"

Mapping:     SolicitudModeloSolicitudMap
Source:      SolicitudR2BOLogico
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
Id:          solicitud-modelo-solicitud-map
Title:       "Mapeo de Solicitud a Perfil Solicitud"
Description: "Mapeo entre el modelo lógico de Solicitud R2BO y el perfil de Solicitud Informe APA R2BO."

* -> "ServiceRequest"
* hipotesisDiagnostica -> "ServiceRequest.reasonCode[0]"
* medicoSolicitante -> "ServiceRequest.requester"