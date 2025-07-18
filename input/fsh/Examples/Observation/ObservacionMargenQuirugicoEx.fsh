Instance:       ribco-observacion-margen-quirurgico-ex
InstanceOf:     ObservacionMargenQuirugico
Usage:          #example
Title:          "Observacion de Ejemplo: Margen Quirúrgico"
Description:    "Ejemplo de observación de margen quirúrgico en reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#396631001
* subject = Reference(paciente-requiere-examen)
* performer = Reference(ribco-anatopatologo-hospital)
* specimen = Reference(ribco-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"
* component[Caracteristicas]
  * code = $snomed#396324006
  * valueCodeableConcept = $snomed#10828004 "Positive"
* component[Medida]
  * code = $loinc#33737-8
  * valueQuantity = 1.5 $ucum#mm "Millimeter" 