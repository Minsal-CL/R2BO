Instance:       riap-tnm-categoria-nodo-regional-ex
InstanceOf:     TNMCategoriaNodoRegional
Usage:          #example
Title:          "Observacion de Ejemplo: Categoria TNM Nodos Regional"
Description:    "Ejemplo de una observación de categoría TNM de nodos regionales de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#371494008
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* valueCodeableConcept = $snomed#1229957002 "pN2"	
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"