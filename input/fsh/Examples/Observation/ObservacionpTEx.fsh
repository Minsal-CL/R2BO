Instance:       ribco-tnm-categoria-tumor-primario-ex
InstanceOf:     TNMCategoriaTumorPrimario
Usage:          #example
Title:          "Observacion de Ejemplo: Categoria TNM Tumor Primario"
Description:    "Ejemplo de una observación de categoría TNM de un tumor primario de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#384625004
* subject = Reference(paciente-requiere-examen)
* performer = Reference(ribco-anatopatologo-hospital)
* valueCodeableConcept = $snomed#1229852009 "pT2"	
* specimen = Reference(ribco-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"