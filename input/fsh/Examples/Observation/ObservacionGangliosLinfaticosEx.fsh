Instance:       riap-observacion-ganglios-linfaticos-ex
InstanceOf:     ObservacionGangliosLinfaticos
Usage:          #example
Title:          "Observacion de Ejemplo: Ganglios Linfáticos"
Description:    "Ejemplo de una observación de los ganglios afectados de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#92831-7
* valueBoolean = true
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"
* component
  * code = $snomed#410680006
  * valueInteger = 4
