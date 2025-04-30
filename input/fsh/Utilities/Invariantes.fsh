Invariant:      riap-observacion-1
Description:    "Si el valor de la observación es verdadero, entonces el valor del componente de número debe exitir"
Expression:     "value.ofType(boolean).where(true) implies component.exists()"
Severity:       #error
