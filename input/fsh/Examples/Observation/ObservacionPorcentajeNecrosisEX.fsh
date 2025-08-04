Instance:       r2bo-observacion-porcentaje-necrosis-ex
InstanceOf:     ObservacionPorcentajeNecrosisR2BO
Usage:          #example
Title:          "Observacion de Ejemplo: Porcentaje de Necrosis"
Description:    "Ejemplo de una observación de porcentaje de necrosis de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#405921002
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* valueQuantity
  * value = 5
  * unit = "%"
  * system = "http://unitsofmeasure.org"
  * code = #%
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"