Instance:       riap-observacion-invasion-vascular-ex
InstanceOf:     ObservacionInvasionVascularRIAP
Usage:          #example
Title:          "Observacion de Ejemplo: Invasión Vascular"
Description:    "Ejemplo de una observación de invasión vascular de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#33740-2
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* valueCodeableConcept = $snomed#52101004  "Present"
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"