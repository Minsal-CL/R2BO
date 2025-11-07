Mapping:     InformeModeloLogicoMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-informe-biopsia"
Id:          informe-modelo-logico-map
Title:       "Mapeo de Modelo Lógico a Informe"
Description: ""

* -> "DiagnosticReport"
* nroDeBiopsia -> "DiagnosticReport.identifier[0]" "Identificador del Informe de Anatomía Patológica" 
* paciente -> "DiagnosticReport.subject" "Paciente del Informe de Anatomía Patológica"
* solicitud -> "DiagnosticReport.basedOn[0]" "Solicitud de Biopsia"
* establecimientoQueInforma -> "DiagnosticReport.performer[0]" "Establecimiento en que Anatomopatólogo que realiza el Informe"
* patologoQueInforma -> "DiagnosticReport.performer[0]" "Anatomopatólogo que realiza el Informe"
* fechaDeInforme -> "DiagnosticReport.issued" "Fecha de Emisión del Informe de Anatomía Patológica"
* descripcionMacroscopica -> "DiagnosticReport.result" "Resultados del Informe de Anatomía Patológica"
* descripcionMicroscopica -> "DiagnosticReport.result[1]" "Resultados del Informe de Anatomía Patológica"
* categoriaTNM -> "DiagnosticReport.result[3]" "Resultados del Informe de Anatomía Patológica"
* invasionVascularLinfatica -> "DiagnosticReport.result[4]" "Resultados del Informe de Anatomía Patológica"
* invasionVascularSanguinea -> "DiagnosticReport.result[5]" "Resultados del Informe de Anatomía Patológica"
* infiltracionPerineural -> "DiagnosticReport.result[6]" "Resultados del Informe de Anatomía Patológica"
* necrosis -> "DiagnosticReport.result[7]" "Resultados del Informe de Anatomía Patológica"
* infiltradoLinfocitarioPeritumoral -> "DiagnosticReport.result[8]" "Resultados del Informe de Anatomía Patológica"
* tamanoTumoral -> "DiagnosticReport.result[9]" "Resultados del Informe de Anatomía Patológica"
* nivelInfiltracion -> "DiagnosticReport.result[10]" "Resultados del Informe de Anatomía Patológica"
* focalidadMulticentricidad -> "DiagnosticReport.result[11]" "Resultados del Informe de Anatomía Patológica"
* margenQuirurgicoMedida -> "DiagnosticReport.result[12]" "Resultados del Informe de Anatomía Patológica"
* margenQuirurgicoCategoria -> "DiagnosticReport.result[13]" "Resultados del Informe de Anatomía Patológica"
* tejidoNoTumoralAdyacente -> "DiagnosticReport.result[14]" "Resultados del Informe de Anatomía Patológica"
* gangliosLinfaticos -> "DiagnosticReport.result[15]" "Resultados del Informe de Anatomía Patológica"
* evaluacionPostNeoadyuvancia -> "DiagnosticReport.result[16]" "Resultados del Informe de Anatomía Patológica"
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

* fechaDeTomaDeMuestra -> "Specimen.collection[0].collectedDateTime" "Fecha y hora de la colección de la muestra"
* fechaDeRecepcionDeMuestra -> "Specimen.receivedTime" "Fecha de recepción de la muestra"
* tipoDeBiopsia -> "Specimen.collection[0].method" "Método de colección de la muestra"
* lateralidad -> "Specimen.collection[0].bodySite.extension" "Calificador para lateralidad para este sitio del cuerpo"
* detalleTopografia -> "Specimen.note" "Notas sobre la muestra"

Mapping:     SolicitudModeloInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-solicitud-informe-apa"
Id:          solicitud-modelo-informe-map
Title:       "Mapeo de Modelo Informe a Perfil Solicitud"
Description: "Mapeo entre el modelo lógico de Solicitud R2BO y el perfil de Solicitud Informe APA R2BO."

* establecimientoDeOrigen -> "ServiceRequest.requester" "Establecimiento Solicitante"

Mapping:     ResultadoTNMModeloInformeMap
Source:      ModeloLogicoInformePatologicoR2BO
Target:      "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-estadificacion-tnm"
Id:          resultado-tnm-modelo-informe-map
Title:       "Mapeo de Modelo Informe a Estadificación TNM"
Description: "Mapeo entre el modelo lógico de Informe R2BO y el perfil de Estadificación TNM R2BO."

* categoriaTNM.categoriaTumorPrimario -> "Observation.hasMember[0]" "Categoría del Tumor Primario (T)"
* categoriaTNM.categoriaNodosPrimario -> "Observation.hasMember[1]" "Categoría de los Ganglios Linfáticos (N)"
* categoriaTNM.categoriaMetastasisPrimario -> "Observation.hasMember[2]" "Categoría de Metástasis (M)"