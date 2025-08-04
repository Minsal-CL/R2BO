# Repositorio de resultados de biopsias oncológicas Ministerio de Salud

### Antecedentes
El cáncer se encuentra entre las principales causas de muerte a nivel mundial. De acuerdo a las estadísticas publicadas por la organización panamericana de la salud (OPS), en 2022 se registraron más de 4,2 millones de casos nuevos y 1,4 millones de muertes por cáncer. Las proyecciones de la OMS indican que los nuevos casos de cáncer aumentarán en un 77% para el 2050. De acuerdo a la estadística publicada por el instituto nacional del cáncer de Estados Unidos el 39,5% de los hombres y mujeres serán diagnosticados con cáncer en algún punto de sus vidas. En Chile el cáncer se ha convertido en una de las principales causas de muerte. En 2022 se registraron aproximadamente 59,876 casos nuevos con 31,440 fallecimientos por esta enfermedad lo que representa un aumento con respecto a años anteriores.

La red de anatomía patológica, contempla a los establecimientos de atención primaria de salud (APS) y los establecimientos hospitalarios como parte fundamental del pronóstico y diagnóstico de patologías oncológicas. La referencia técnica de anatomía patológica desde la división de gestión de la red asistencial (DIGERA) de la subsecretaría de redes asistenciales en coordinación con el departamento de salud digital, departamento de tecnologías de información y comunicaciones, la agencia nacional de prevención y control del cáncer (ANCAN), el departamento de estadísticas e información de salud abre paréntesis (DEIS) entre otras, han trabajado en la publicación de diversas normativas que alcanzan a los establecimientos involucrados en el proceso asistencial.

El R2BO (Repositorio de Resultados de Biopsias Oncológicas) es una iniciativa orientada a aumentar la interoperabilidad creando un repositorio de las biopsias oncológicas que almacene el conjunto de elementos de información estructurada oncológica proveniente desde los sistemas de información de anatomía patológica conocidos como Pathology Information Systems (PaIS). El objetivo principal del R2BO es dar un paso hacia adelante en la captura de datos de calidad para notificación, seguimiento tratamiento e investigación de todos los pacientes con cáncer.

### Alcance

Esta guia de implementación especifica los datos en un estudio de anatomía patológica en el contexto Chileno, como un modelo FHIR. Define:
* La estructura y contenido de un reporte de anatomía patológica FHIR.
* Diferentes opciones para publicar y buscar estos reportes.
* Descubrimiento de los mecanismos disponibles para acceder a la información de los reportes.

Esta especificación es para ser utilizada en una variedad de modelos de despliegue, que incluyen: el intercambio de datos entre los sistemas de anatomía patológica y sus organizaciones locales o regionales, y el intercambio de información entre organizaciones locales/regionales con el nivel central ministerial. En todos estos casos, es importante que sea compatible con el ecosistema existente.

Actualmente no existe una estategia definida de intercambio de información, por lo que se avanzará hacia:
* **Intercambio basado en documentos**, el documento es representado como un Bundle de Documento FHIR.
* **Acceso a documentos basados en API REST**, como una {{Composition}} y un {{DiagnosticReport}}, para cada documento incluyendo instancias de los recursos referidos.

La especificación recibe esta denominación para que pueda ser utilizada en todos estos escenarios de despliegue.

### Propósito

El objetivo de esta Guía de implementación es definir una norma chilena para el informe de estudios de anatomía patológica con el fin de facilitar la armonización entre los sistemas de información en el punto de servicio y sentar las bases para el formato nacional de intercambio de informes de apoyo clínico.

### Convenciones

Esta guía de implementación utiliza terminología específica para señalar las declaraciones que son relevantes a la hora de evaluar la conformidad de una solución con la guía:

**DEBERÁ (SHALL)** indica los requisitos que deben cumplirse para ser conforme con la especificación.

**DEBERÍA (SHOULD)** indica comportamientos que se recomiendan encarecidamente (y que podrían dar lugar a problemas de interoperabilidad o a un comportamiento subóptimo si no se cumplen), pero que, para esta versión de la especificación, no afectan a la determinación de la conformidad con la especificación.

**PODRÁ (MAY)** describe comportamientos opcionales que los implementadores son libres de considerar, pero sobre cuya adopción no hay ninguna recomendación a favor o en contra.


### Dependencias

***TBD***

### Autores y contribuidores 

Favor referirse a la página de [Autores y contribuidores](contributors.html).