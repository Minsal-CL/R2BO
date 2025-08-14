Instance:       r2bo-tnm-categoria-tumor-primario-ex
InstanceOf:     TNMCategoriaTumorPrimario
Usage:          #example
Title:          "Observacion de Ejemplo: Categoria TNM Tumor Primario"
Description:    "Ejemplo de una observación de categoría TNM de un tumor primario de un reporte de biopsia"

* basedOn = Reference(r2bo-solicitud-informe-apa-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#384625004
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* valueCodeableConcept = $snomed#1229852009
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"