Profile:        MuestraRIBCO
Parent:         Specimen
Id:             ribco-muestra-biopsia
Title:          "Perfil de Muestra"
Description:    "Muestra de tejido o fluido biológico para análisis de antomía patologica."

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft

* ^status = #draft
* ^experimental = true
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* subject 1..1 MS
  * ^short = "Paciente de la muestra" 
* subject only Reference(MINSALPaciente)

* receivedTime 1..1 MS
  * ^short = "Fecha de recepción de la muestra"
  
* type MS
  * ^short = "Tipo de material que forma el espécimen."
* type from HumanSpecimenTypeVS (example)
* type ^binding.extension[0].extension[0].url = "purpose"
* type ^binding.extension[=].extension[=].valueCode = #candidate
* type ^binding.extension[=].extension[+].url = "valueSet"
* type ^binding.extension[=].extension[=].valueCanonical = Canonical(TipoEspecimenVS)
* type ^binding.extension[=].extension[+].url = "documentation"
* type ^binding.extension[=].extension[=].valueMarkdown = "Set de Valores de los Tipos de Especimen"
* type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.description = "Set de Valores para los tipos de muestras que puedan ser obtenidos"

* collection 1..1 MS
  * ^short = "Datos de la colección de la muestra"
  * collector 1..1 MS
    * ^short = "Profesional que recolecta la muestra"
  * collector only Reference(RolProfesionalRIBCO)
  * collected[x] 1..1 MS
  * collected[x] only dateTime
    * ^short = "Fecha y hora de la colección de la muestra"
  * bodySite 1..1 MS
    * ^short = "Sitio anatómico de la colección"
    * extension contains LateralityQualifier named CalificadorLateralidad 0..1 MS // and BodyLocationQualifier named CalificadorLocacionCorporal 0..* MS
    * extension[CalificadorLateralidad] ^short = "Calificador para lateralidad para este sitio del cuerpo"
  * bodySite from EstructuraAnatomicaVS (extensible)
  * method 1..1 MS
    * ^short = "Método de colección de la muestra"
    * extension contains TipoProcedimientoBiopsia named MetodoProcedimiento 1..1 MS
    * extension[MetodoProcedimiento] ^short = "Método de procedimiento"
  * method from ProcedimientosBiopsiaVS (extensible)
  * fastingStatus[x] from http://terminology.hl7.org/ValueSet/v2-0916|2.0.0 (extensible)

* note 0..* MS
  * ^short = "Nota de texto libre para describir la muestra, por ejemplo el detalle de topografico"
  * text 1..1 MS 
    * ^short = "Nota de texto libre"
