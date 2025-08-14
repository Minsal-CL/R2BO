Instance:       r2bo-observacion-multifocalidad-ex
InstanceOf:     ObservacionMultifocalidad
Usage:          #example
Title:          "Observacion de Ejemplo: Multifocalidad"
Description:    "Ejemplo de una observación de multifocalidad de un reporte de biopsia"

* basedOn = Reference(r2bo-solicitud-informe-apa-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#444696007
* valueBoolean = true
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"
* component
  * code = $snomed#410680006
  * valueInteger = 2
