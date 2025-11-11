# Repositorio de Reportes de Biopsias Oncológicas del Ministerio de Salud

### Introducción
El diagnóstico anatomopatológico cumple un rol central en la atención de salud, especialmente, en la confirmación de enfermedades oncológicas. Los informes de biopsias constituyen evidencia crítica para la toma de decisiones clínicas, la continuidad de cuidados y la vigilancia sanitaria. Sin embargo, su disponibilidad y trazabilidad en el sistema público de salud presenta desafíos, dada la heterogeneidad de los sistemas locales y la ausencia de mecanismos estructurados de interoperabilidad.
Con el objetivo de avanzar hacia una salud digital interoperable, centrada en el paciente y basada en datos confiables, el Ministerio de Salud de Chile ha desarrollado esta guía de implementación para el **Repositorio de Reportes de Biopsias Oncológicas (R2BO)**. Esta guía forma parte de los esfuerzos de fortalecimiento de la arquitectura de interoperabilidad nacional y se enmarca en la **Estrategia Nacional de Salud Digital 2020–2030**.


### Alcance

La creación del R2BO responde a múltiples hitos de política pública sanitaria, entre los que destacan:

* La **Ley Nacional del Cáncer N.º 21.258**, que establece la notificación obligatoria de los casos confirmados de cáncer a partir del diagnóstico anatomopatológico.
* El **Plan Nacional de Cáncer 2022-2027**, que establece el fortalecimiento de la vigilancia epidemiológica y la gestión de casos oncológicos mediante integración y desarrollo de los registros oncológicos.
* La **Ley N.º 21.668 de Interoperabilidad de la Ficha Clínica Electrónica**, que mandata a los establecimientos públicos y privados a implementar soluciones de intercambio de información clínica conforme a estándares interoperables definidos por la Autoridad Sanitaria.
* La **Resolución exenta N° 173**, del 31 de enero de 2024, Déjase constancia, en cumplimiento de lo mandatado en la Ley Nacional de Cáncer y su reglamento, del desarrollo e implementación de la plataforma de soporte del registro Nacional de Cáncer. 

A partir de este marco, se reconoce la necesidad de consolidar datos clínicos de alta relevancia en el marco del **Sistema Nacional de Registros de Cáncer**, el cual incluye: 

* El Sistema Integral de Gestión Oncológica **(SIGO)**,
* El Registro Nacional de Cáncer Infantil **(RENCI)**,
* Los Registros Poblacionales de Cáncer **(RPC)**
* Los Registros Hospitalarios de Cáncer **(RHC)**
* Egresos hospitalarios y estadísticas vitales del Departamento de Estadísticas e Información en Salud **(DEIS)**
,
En este contexto, la información generada por los Servicios de Anatomía Patológica adquiere una dimensión clave. Los informes de biopsias, al ser clave en la confirmación diagnóstica, requieren una estructura que permita su integración, trazabilidad y reutilización con fines clínicos, regulatorios y sanitarios. La ausencia de interoperabilidad estructurada ha limitado su aprovechamiento en la continuidad del cuidado, la auditoría clínica, y la generación de conocimiento. 

### Descripción

Este proyecto habilita un repositorio interoperable nacional que centraliza los informes de biopsias histológicas validadas, con diagnóstico oncológico permitiendo su uso tanto por clínicos como por plataformas institucionales. El modelo de intercambio se basa en el estándar **HL7® FHIR®**, y utiliza terminologías clínicas internacionales como **SNOMED CT**, **CIE-O**, **CIE-10** y **LOINC** para asegurar interoperabilidad semántica.
El diseño del proceso y de los modelos de datos se construyó utilizando una **metodología orientada a procesos, centrada en el paciente y basada en evidencia**, integrando perspectivas clínicas, normativas y técnicas.
El desarrollo fue impulsado por un equipo multidisciplinario del Ministerio de Salud, con participación de:
Gabinete Ministerial
* La Unidad de Interoperabilidad del Departamento de Tecnologías de la Información y Comunicaciones (TIC),
Subsecretaría de Salud Pública
* División de Planificación Sanitaria Departamento de Estadísticas e Información en Salud (DEIS),
* División de Prevención y Control de Enfermedades:  Agencia Nacional de Prevención y Control del Cáncer (ANACAN),
* División de Planificación Sanitaria Oficina de Vigilancia Epidemiológica de Cáncer del Departamento de Epidemiología
Subsecretaria de Redes Asistenciales
* Departamento de Salud Digital,
* División de Gestión de la Red Asistencial - Departamento de GES y Redes Complejas (Unidad de Oncología),
* División de Gestión de la red Asistencial – Departamento de gestión ambulatoria y Apoyo Diagnóstico (Anatomía Patológica)
Cabe destacar que contó con la Asesoría de la Sociedad Chilena de Anatomía Patológica y la colaboración de médicos patólogos y tecnólogos médicos pertenecientes a establecimientos de salud de los Servicios de Salud.  

### Objetivos del Proyecto
#### General
Implementar un repositorio interoperable que permita la consolidación y consulta de los informes de biopsias oncológicas histológicas generados en todos los laboratorios de anatomía patológica del país, garantizando su disponibilidad para el diagnóstico clínico, el seguimiento de pacientes, la toma de decisiones y el monitoreo epidemiológico.
#### Específicos
* Operacionalizar la notificación obligatoria de cáncer, mandatada por la Ley N.º 21.258, a partir del informe de biopsia validado.
* Promover el uso de estándares de interoperabilidad, como HL7 FHIR, SNOMED CT, CIE –O y CIE –10 y LOINC, para el intercambio y representación de datos clínicos.
* Habilitar a MINSAL desarrollar procesos de auditoría clínica, control de calidad y análisis institucional mediante datos estandarizados.
* Habilitar a MINSAL para consolidar información crítica que pueda ser utilizada para investigación, planificación sanitaria y vigilancia epidemiológica.



### Objetivos de la Guía de Implementación
#### General
Proveer las directrices que garanticen la tributación de los informes definidos al repositorio de reportes de biopsias oncológicas (R2BO), conforme a los estándares nacionales definidos por el Ministerio de Salud.

#### Específicos
* Describir los flujos de información y a los actores involucrados en el envío de informes al Repositorio de Reportes de Biopsias Oncológicas
* Documentar los perfiles FHIR y extensiones nacionales utilizadas en el modelo de interoperabilidad.
* Proporcionar ejemplos de casos de uso clínicos y sanitarios que demuestran la aplicación del modelo.

### Autores y contribuidores 

Favor referirse a la página de [Autores y contribuidores](contributors.html).