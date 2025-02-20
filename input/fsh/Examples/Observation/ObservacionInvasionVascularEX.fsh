Instance:       rbi-observacion-invasion-vascular-ex
InstanceOf:     ObservacionInvasionVascularRBI
Usage:          #example
Title:          "Observacion de Ejemplo: Invasión Vascular"
Description:    "Ejemplo de una observación de invasión vascular de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#33740-2
* subject = Reference(paciente-requiere-examen)
* performer = Reference(rbi-anatopatologo-hospital)
* valueCodeableConcept = $snomed#52101004  "Present"
* specimen = Reference(rbi-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"