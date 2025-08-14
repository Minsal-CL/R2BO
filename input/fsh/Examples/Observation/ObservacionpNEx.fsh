Instance:       r2bo-tnm-categoria-nodo-regional-ex
InstanceOf:     TNMCategoriaNodoRegional
Usage:          #example
Title:          "Observacion de Ejemplo: Categoria TNM Nodos Regional"
Description:    "Ejemplo de una observación de categoría TNM de nodos regionales de un reporte de biopsia"

* basedOn = Reference(r2bo-solicitud-informe-apa-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#371494008
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* valueCodeableConcept = $snomed#1229957002	
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"