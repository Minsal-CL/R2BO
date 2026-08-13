### Versión 0.3.0 

Se elimina la generación de Documentos en FHIR y sus recursos Asociados.
Se depreca el mapeo de Snomed CT a CIE-O y CIE-10. En cambio se utilizará CIE-11 con mapeos a la CIE-10 y a la CIE-O 3
Se actualizaron los diagramas y la documentación

### Versión 0.2.0

Se eliminaron observaciones especificos con sus ValueSet, para disminuir la complejidad de la guía de implementación

### Versión 0.1.1

Se crearon los perfiles para generar documento FHIR, inspirados en la guía de [HL7 Europa Imaging Study Report](https://build.fhir.org/ig/hl7-eu/imaging/).
Se incluyó un composition, 2 extensiones para referencias circulares entre Composition y DiagnosticReport, y el perfil bodyStructure para las conclusiones de la topografía y morfología.

### Versión 0.1.0
Se crearon los primeros perfiles inspirados en los modelos lógicos.