Mapping:     EspecimenModeloSolicitudMap
Source:      SolicitudR2BOLogico
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
Id:          especimen-modelo-solicitud-map
Title:       "Mapeo de Solicitud a Muestra"
Description: ""

* -> "Specimen"
* nroDeMuestra -> "Specimen.container[0].specimenQuantity"
* muestraOrgano -> "Specimen.collection[0].bodySite"
* tipoProcedimiento -> "Specimen.collection[0].method"
* medicoIntervencionista -> "Specimen.collection[0].collector"

Mapping:     SolicitudModeloSolicitudMap
Source:      SolicitudR2BOLogico
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
Id:          solicitud-modelo-solicitud-map
Title:       "Mapeo de Solicitud a Perfil Solicitud"
Description: ""

* -> "ServiceRequest"
* hipotesisDiagnostica -> "ServiceRequest.reasonCode[0]"
* medicoSolicitante -> "ServiceRequest.requester"