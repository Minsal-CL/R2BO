### Representación FHIR del informe de anatomía patológica

En esta guía de implementación se sigue el enfoque que un informe de estudio de anatomía patológica:
* está representado por un recurso `DiagnosticReport` y un recurso `Composition`.
* el `DiagnosticReport` siempre apuntará a un  `Composition`.
* la composición a la que se hace referencia:
  * define la estructura del informe, a menudo solo una sección;
  * proporciona un medio para ensamblar el informe como un documento (es decir, como un paquete de tipo 'documento')
* El Bundle de documentos representa el informe legalmente firmable e incluye todos los datos que caracterizan el informe.

En relación con los paquetes de documentos, se adoptan las siguientes directrices:
* El paquete de documentos **DEBERÁ** incluir cualquier recurso que forme parte del gráfico de recursos que haga referencia o sea referenciado desde el conjunto de la composición, ya sea directa o indirectamente (por ejemplo, recursivamente en una cadena).


``` mermaid
classDiagram
    class ApDiagnosticReport
    class ApComposition
    ApDiagnosticReport --> ApComposition: extension[composition]
    ApComposition --> ApDiagnosticReport: extension[diagnosticReport-reference]
```