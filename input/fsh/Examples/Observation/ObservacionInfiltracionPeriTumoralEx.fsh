Instance:       ribco-observacion-infiltracion-peritumoral-ex
InstanceOf:     ObservacionInfiltradoPeritumoralRIBCO
Usage:          #example
Title:          "Observacion de Ejemplo: Infiltración Peritumoral"
Description:    "Ejemplo de una observación de infiltración peritumoral de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code =  $snomed#371509008
* subject = Reference(paciente-requiere-examen)
* performer = Reference(ribco-anatopatologo-hospital)
* valueCodeableConcept = $snomed#369762001 "Marked peritumoral lymphocytic response"
* specimen = Reference(ribco-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"