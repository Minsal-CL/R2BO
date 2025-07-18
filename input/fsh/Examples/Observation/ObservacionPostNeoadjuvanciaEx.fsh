Instance:       ribco-observacion-post-tratamiento-neoadjuvancia-ex
InstanceOf:     ObservacionPostNeoadjudancia
Usage:          #example
Title:          "Observacion de Ejemplo: Evaluación Post Neoadyuvancia"
Description:    "Ejemplo de una observación realizada en un reporte de biopsia, posterioa a una neoadyuvancia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#84891-1
* subject = Reference(paciente-requiere-examen)
* performer = Reference(ribco-anatopatologo-hospital)
* valueString = "El tratamiento entregado no ha sido efectivo para reducir el tamaño del tumor, por lo que se recomienda un nuevo tratamiento."
* specimen = Reference(ribco-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"