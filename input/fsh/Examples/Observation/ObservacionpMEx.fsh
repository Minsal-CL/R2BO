Instance:       riap-tnm-categoria-metastasis-distantel-ex
InstanceOf:     TNMCategoriaMetastasisDistante
Usage:          #example
Title:          "Observacion de Ejemplo: Categoria TNM Metástasis Distante"
Description:    "Ejemplo de una observación de categoría TNM de metástasis distante de un reporte de biopsia"

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $snomed#371497001
* subject = Reference(paciente-requiere-examen)
* performer = Reference(riap-anatopatologo-hospital)
* valueCodeableConcept = $snomed#1229916009 "pM1"	
* specimen = Reference(riap-specimen-example)
* effectiveDateTime = "2021-06-01T12:00:00-04:00"