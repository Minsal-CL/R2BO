Instance:       ribco-observacion-macroscopica-ex
InstanceOf:     ObservacionMacroscopicaRIBCO
Usage:          #example
Title:          "Observacion de Ejemplo: Macroscopía"
Description:    "Ejemplo de una observación macrosópica de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#74574-5 
* subject = Reference(paciente-requiere-examen)
* performer = Reference(ribco-anatopatologo-hospital)
* valueString = "Muestra de biopsia de tejido mamario, de 2x2x1 cm, de color blanco, consistencia firme, bordes irregulares, sin lesiones visibles a simple vista"
* specimen = Reference(ribco-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"