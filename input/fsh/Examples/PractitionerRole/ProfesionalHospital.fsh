Instance:       ProfesionalHospital
InstanceOf:     RolProfesionalRIBCO
Usage:          #example
Title:          "Profesional del Hospital"
Description:    "Profesional que trabaja en un hospital"

* practitioner = Reference(profesional-hospital-collector)
* organization = Reference(hospital-collector)
* code = CSTituloProfesional#1 "MÉDICO CIRUJANO"
