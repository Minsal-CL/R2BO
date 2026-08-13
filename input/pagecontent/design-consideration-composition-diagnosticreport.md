### Representación FHIR de la Notificación Obligatoria de Cancer

En esta guía de implementación se sigue el enfoque de un estudio de anatomía patológica representado por un recurso `DiagnosticReport`, el cual contiene los datos mínimos para cumplir con la notificación obligatoria, más un pdf con el informe completo.

El siguiente diagrama representa una vista general de los perfiles especificados en esta guía.

La relación más importante inicia desde el recurso DiagnosticReport [R2BOInformeBiopsia](StructureDefinition-r2bo-informe-biopsia.html) desde la perspectiva REST.
<div>
<p>{% include link-overview.svg %}</p>
<p>Figura 1 - Vista general de la Relación de los Perfiles</p>
<p></p>
</div>

