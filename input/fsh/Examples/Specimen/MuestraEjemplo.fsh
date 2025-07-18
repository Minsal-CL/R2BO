Instance:           ribco-specimen-example
InstanceOf:         MuestraRIBCO
Usage:              #example
Title:              "Muestra de Mama"
Description:        "Muestra de tejido de mamario"

* identifier.value = "110101101"
* status = #available
* type = http://terminology.hl7.org/CodeSystem/v2-0487#TISS "Tissue"
* subject = Reference(paciente-requiere-examen)
* receivedTime = "2021-06-01T00:00:00Z"
* collection
  * collector = Reference(ProfesionalHospital)
  * collectedDateTime = "2021-06-01T10:00:00Z"
  * bodySite = http://snomed.info/sct#76752008 "Structure of breast" 
  * bodySite.extension[CalificadorLateralidad] = lateralidadIzquierda
  * method = http://snomed.info/sct#122548005 "Biopsy of breast"
  * method.extension[MetodoProcedimiento] = MetodoIncisional
* note.text = "Resección completa de tejido mamario, posible carcinoma"

Instance:   lateralidadIzquierda
InstanceOf: LateralityQualifier
Usage:      #inline

* valueCodeableConcept = http://snomed.info/sct#7771000 "Left"

Instance:   MetodoIncisional
InstanceOf: TipoProcedimientoBiopsia
Usage:      #inline
* valueCodeableConcept = http://snomed.info/sct#8889005  "Excisional biopsy"