Instance:       r2bo-observacion-macroscopica-ex
InstanceOf:     ObservacionMacroscopicaR2BO
Usage:          #example
Title:          "Observacion de Ejemplo: Macroscopía"
Description:    "Ejemplo de una observación macrosópica de un reporte de biopsia"

* basedOn = Reference(r2bo-solicitud-informe-apa-ej)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#74574-5 
* subject = Reference(paciente-requiere-examen)
* performer = Reference(r2bo-anatopatologo-hospital)
* valueString = "Muestra de biopsia de tejido mamario, de 2x2x1 cm, de color blanco, consistencia firme, bordes irregulares, sin lesiones visibles a simple vista"
* specimen = Reference(r2bo-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"