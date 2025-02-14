Instance:       rbi-observacion-multifocalidad-ex
InstanceOf:     ObservacionMultifocalidad
Usage:          #example
Title:          "Observacion de Ejemplo: Multifocalidad"
Description:    "Ejemplo de una observación de multifocalidad de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#444696007
* valueBoolean = true
* subject = Reference(paciente-requiere-examen)
* performer = Reference(rbi-anatopatologo-hospital)
* specimen = Reference(rbi-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"
* component
  * code = $snomed#410680006
  * valueInteger = 2
