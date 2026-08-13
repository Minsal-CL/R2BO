Mapping:     InformeModeloLogicoMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"
Id:          informe-modelo-logico-map
Title:       "Mapeo de Modelo Lógico a Informe"
Description: ""

* -> "DiagnosticReport"
* identificadorInforme -> "DiagnosticReport.identifier[0]" "Identificador del Informe de Anatomía Patológica" 
* paciente -> "DiagnosticReport.subject" "Paciente del Informe de Anatomía Patológica"
* solicitud -> "DiagnosticReport.basedOn[0]" "Solicitud de Biopsia"
* establecimientoQueInforma -> "DiagnosticReport.performer[0]" "Establecimiento en que Anatomopatólogo que realiza el Informe"
* patologoQueInforma -> "DiagnosticReport.performer[0]" "Anatomopatólogo que realiza el Informe"
* fechaDeInforme -> "DiagnosticReport.issued" "Fecha de Emisión del Informe de Anatomía Patológica"
//* descripcionMacroscopica -> "DiagnosticReport.result" "Resultados del Informe de Anatomía Patológica"
//* descripcionMicroscopica -> "DiagnosticReport.result[1]" "Resultados del Informe de Anatomía Patológica"
* categoriaTNM -> "DiagnosticReport.result[3]" "Resultados del Informe de Anatomía Patológica"
// * invasionVascularLinfatica -> "DiagnosticReport.result[4]" "Resultados del Informe de Anatomía Patológica"
// * invasionVascularSanguinea -> "DiagnosticReport.result[5]" "Resultados del Informe de Anatomía Patológica"
// * infiltracionPerineural -> "DiagnosticReport.result[6]" "Resultados del Informe de Anatomía Patológica"
// * necrosis -> "DiagnosticReport.result[7]" "Resultados del Informe de Anatomía Patológica"
// * infiltradoLinfocitarioPeritumoral -> "DiagnosticReport.result[8]" "Resultados del Informe de Anatomía Patológica"
// * tamanoTumoral -> "DiagnosticReport.result[9]" "Resultados del Informe de Anatomía Patológica"
// * nivelInfiltracion -> "DiagnosticReport.result[10]" "Resultados del Informe de Anatomía Patológica"
// * focalidadMulticentricidad -> "DiagnosticReport.result[11]" "Resultados del Informe de Anatomía Patológica"
// * margenQuirurgicoMedida -> "DiagnosticReport.result[12]" "Resultados del Informe de Anatomía Patológica"
// * margenQuirurgicoCategoria -> "DiagnosticReport.result[13]" "Resultados del Informe de Anatomía Patológica"
// * tejidoNoTumoralAdyacente -> "DiagnosticReport.result[14]" "Resultados del Informe de Anatomía Patológica"
// * gangliosLinfaticos -> "DiagnosticReport.result[15]" "Resultados del Informe de Anatomía Patológica"
// * evaluacionPostNeoadyuvancia -> "DiagnosticReport.result[16]" "Resultados del Informe de Anatomía Patológica"
* conclusion -> "DiagnosticReport.conclusion" "Conclusión del Informe de Anatomía Patológica"
* morfologia -> "DiagnosticReport.conclusionCode[0]" "Resultaado de la morfología del tumor según CIE-O"
* comportamiento -> "DiagnosticReport.conclusionCode[0]" "Se extrae del código CIE-O el comportamiento del tumor"
* gradoDiferenciacion -> "DiagnosticReport.conclusionCode[0]" "Se crea extensión para grado de diferenciación"
* topografia -> "DiagnosticReport.conclusionCode[1]" "Resultado de la topografía del tumor según CIE-O"

Mapping:     EspecimenModeloInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-muestra-biopsia"
Id:          especimen-modelo-informe-map
Title:       "Mapeo de Modelo Informe a Muestra"
Description: "Mapeo entre el modelo lógico de Informe R2BO y el perfil de Muestra Biopsia R2BO."

* solicitud.muestraOrgano -> "Specimen.collection[0].bodySite" "Sitio del cuerpo de la muestra"
* solicitud.tipoProcedimiento -> "Specimen.collection[0].method" "Tipo de procedimiento de recolección"
* solicitud.medicoIntervencionista -> "Specimen.collection[0].collector" "Profesional que realiza la recolección de la muestra"
* solicitud.fechaDeTomaDeMuestra -> "Specimen.collection[0].collectedDateTime" "Fecha y hora de la colección de la muestra"
* solicitud.fechaDeRecepcionDeMuestra -> "Specimen.receivedTime" "Fecha de recepción de la muestra"
* solicitud.tipoDeBiopsia -> "Specimen.collection[0].method" "Método de colección de la muestra"
* lateralidad -> "Specimen.collection[0].bodySite.extension" "Calificador para lateralidad para este sitio del cuerpo"
//* detalleTopografia -> "Specimen.note" "Notas sobre la topografía al momento de extraer la muestra"

Mapping:     ResultadoTNMModeloInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm"
Id:          resultado-tnm-modelo-informe-map
Title:       "Mapeo de Modelo Informe a Estadificación TNM"
Description: "Mapeo entre el modelo lógico de Informe R2BO y el perfil de Estadificación TNM R2BO."

* categoriaTNM.categoriaTumorPrimario -> "Observation.hasMember[0]" "Categoría del Tumor Primario (T)"
* categoriaTNM.categoriaNodosPrimario -> "Observation.hasMember[1]" "Categoría de los Ganglios Linfáticos (N)"
* categoriaTNM.categoriaMetastasisPrimario -> "Observation.hasMember[2]" "Categoría de Metástasis (M)"

Mapping:     ProfesionalInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
Id:          profesional-informe-map
Title:       "Mapeo de Profesional en el Informe"

* patologoQueInforma -> "PractitionerRole.practitioner" "Este recurso representa al profesional que realiza el informe patológico, incluyendo nombre, apellido y RUT"
* establecimientoQueInforma -> "PractitionerRole.organization" "Este recurso representa al establecimiento de salud donde se realiza el informe patológico."

Mapping:    ModeloInformeProfesionalSolicitanteMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
Id:          profesional-solicitante-informe-map
Title:       "Mapeo de Profesional en la solicitud Informe"

* solicitud.medicoSolicitante ->  "PractitionerRole.practitioner" "Este recurso representa al profesional que realiza el informe patológico, incluyendo nombre, apellido y RUT"
* solicitud.establecimientoDeOrigen -> "PractitionerRole.organization" "Este recurso representa al establecimiento de salud donde se realiza el informe patológico."
* solicitud.servicioClinicoDeOrigen  -> "PractitionerRole.location" "Servicio de origen desde proviene el paciente al momento de solicitar la biopsia."

Mapping:     ModeloInformeProfesionalIntervencionistaMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-rol-profesional-minsal"
Id:          profesional-intervencionista-map
Title:       "Mapeo de Profesional Intervencionista en la solicitud Informe"

* solicitud.medicoIntervencionista -> "PractitionerRole.practitioner" "Este recurso representa al profesional que realiza la optención de la muestra, este incluyendo nombre, apellido y RUT"

Mapping:     SolicitudModeloSolicitudMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
Id:          solicitud-modelo-solicitud-map
Title:       "Mapeo de Solicitud a Perfil Solicitud"
Description: "Mapeo entre el modelo lógico de Solicitud R2BO y el perfil de Solicitud Informe APA R2BO."

* solicitud -> "ServiceRequest" "Solicitud de informe de Anatomía Patológica"
* solicitud.hipotesisDiagnostica -> "ServiceRequest.reasonCode[0]" "Hipótesis Diagnóstica"
* solicitud.medicoSolicitante -> "ServiceRequest.requester" "Médico Solicitante"
* solicitud.establecimientoDeOrigen -> "ServiceRequest.requester" "Establecimiento Solicitante"
* solicitud.servicioClinicoDeOrigen -> "ServiceRequest.requester" "Servicio Clínico Solicitante"
* solicitud.nroDeMuestra -> "ServiceRequest.specimen" "Número de muestras analizadas se obtienen según el conteo de referencias que hay"

Mapping:     RutProfesionalInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
Id:          rut-profesional-informe-map
Title:       "Mapeo del Rut del Profesional en el Informe"

* rutPatologoQueInforma -> "Practitioner.identifier[run]" "RUT del Profesional que realiza el Informe"

Mapping:     RutProfesionalSolicitanteInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
Id:          rut-profesional-solicitante-informe-map
Title:       "Mapeo del Rut del Profesional Solicitante en el Informe"

* solicitud.rutMedicoSolicitante -> "Practitioner.identifier[run]" "RUT del Profesional Solicitante"

Mapping:     RutProfesionalIntervencionistaInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"
Id:          rut-profesional-intervencionista-informe-map
Title:       "Mapeo del Rut del Profesional Interevencionista en el Informe"

* solicitud.rutMedicoIntervencionista -> "Practitioner.identifier[run]" "RUT del Profesional Intervencionista"