Instance:       ProfesionalHospital
InstanceOf:     RolProfesionalR2BO
Usage:          #example
Title:          "Profesional del Hospital"
Description:    "Profesional que trabaja en un hospital"

* practitioner = Reference(profesional-hospital-collector)
* organization = Reference(hospital-collector)
* code = CSTituloProfesional#1 "MÉDICO CIRUJANO"
* location = Reference(r2bo-localizacion-MedicinaGeneral)
