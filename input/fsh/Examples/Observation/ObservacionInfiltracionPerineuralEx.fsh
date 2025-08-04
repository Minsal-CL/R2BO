Instance:       r2bo-observacion-infiltracion-perineural-ex
InstanceOf:     ObservacionInfiltracionPerineuralR2BO
Usage:          #example
Title:          "Observacion de Ejemplo: Infiltración Perineural"
Description:    "Ejemplo de una observación de infiltración perineural de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#371513001
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* valueCodeableConcept = $snomed#385001000
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"