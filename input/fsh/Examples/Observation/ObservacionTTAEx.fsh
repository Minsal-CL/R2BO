Instance:       r2bo-observacion-tejido-tumor-adjacente-ex
InstanceOf:     ObservacionTejidoTumoralAdjacente
Usage:          #example
Title:          "Observacion de Ejemplo: Tejido Tumoral Adjacente"
Description:    "Ejemplo de la presencia de tejido tumoral en tejido adyacente de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#81168-7
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* valueString = "Se observa tejido tumoral en tejido adyacente"
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"