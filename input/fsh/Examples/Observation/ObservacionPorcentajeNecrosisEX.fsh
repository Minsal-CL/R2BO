Instance:       rbi-observacion-porcentaje-necrosis-ex
InstanceOf:     ObservacionPorcentajeNecrosisRBI
Usage:          #example
Title:          "Observacion de Ejemplo: Porcentaje de Necrosis"
Description:    "Ejemplo de una observación de porcentaje de necrosis de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#405921002
* subject = Reference(paciente-requiere-examen)
* performer = Reference(rbi-anatopatologo-hospital)
* valueQuantity
  * value = 5
  * unit = "%"
  * system = "http://unitsofmeasure.org"
  * code = #%
* specimen = Reference(rbi-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"