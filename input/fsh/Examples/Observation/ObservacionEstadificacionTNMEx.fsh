Instance:       r2bo-estadificacion-tnm-ex
InstanceOf:     EstadificacionTNM
Usage:          #example
Title:          "Observacion de Ejemplo: Grupo Estadificación TNM"
Description:    "Ejemplo de una observación del grupo de estadificacion TNM de un reporte de biopsia"

* basedOn = Reference(r2bo-solicitud-informe-apa-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#399588009
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"
* hasMember[CategoriaT] = Reference(r2bo-tnm-categoria-tumor-primario-ex)
* hasMember[CategoriaN] = Reference(r2bo-tnm-categoria-nodo-regional-ex)
* hasMember[CategoriaM] = Reference(r2bo-tnm-categoria-metastasis-distantel-ex)