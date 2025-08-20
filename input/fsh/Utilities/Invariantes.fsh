Invariant:      r2bo-observacion-1
Description:    "Si el valor de la observación es verdadero, entonces el valor del componente de número debe exitir"
Expression:     "value.ofType(boolean).where(true) implies component.exists()"
Severity:       #error

Invariant:      r2bo-diag-1
Description:    "Si el reporte es de categoría patológico la observación macroscópica debe existir"
Expression:     "(category.coding.where(code = 'PAT').exists()) implies (result.resolve().where(conformsTo('https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-observacion-macroscopica')).exists())"
Severity:       #error

Invariant:      r2bo-comp-1
Description:    "Si el reporte es de categoría patológico la sección macroscópica debe existir"
Expression:     "(category.coding.where(code = 'PAT').exists()) implies (section.code.coding.where(code = '22634-0').exists())"
Severity:       #error