### Introducción
Con el objetivo de avanzar hacia una salud digital interoperable, centrada en el paciente y basada en datos confiables, el Ministerio de Salud de Chile ha desarrollado esta guía de implementación para el **Repositorio de Reportes de Biopsias Oncológicas (R2BO)**. Esta guía forma parte de los esfuerzos de fortalecimiento de la arquitectura de interoperabilidad nacional y se enmarca en la **Estrategia Nacional de Salud Digital 2020–2030**. Los Servicios de Anatomía Patológica cumplen un rol central en la atención de salud, especialmente en el diagnóstico oncológico y son de su responsabilidad la generación de informes de biopsias, los cuales contribuyen a la toma de decisiones clínicas, la continuidad de cuidados y la vigilancia sanitaria. 

### Alcance

La creación del R2BO responde a múltiples hitos de política pública sanitaria, entre los que destacan:

* La **Ley Nacional del Cáncer N.º 21.258**, que establece la **notificación obligatoria** de los casos confirmados de cáncer a partir del diagnóstico anatomopatológico.
* El **Plan Nacional de Cáncer 2022-2027**, que establece el fortalecimiento de la vigilancia epidemiológica y la gestión de casos oncológicos mediante integración y desarrollo de los registros oncológicos.
* La **Ley N.º 21.668 de Interoperabilidad de la Ficha Clínica Electrónica**, que mandata a los establecimientos públicos y privados a implementar soluciones de intercambio de información clínica conforme a estándares interoperables definidos por la Autoridad Sanitaria.
* La **Resolución exenta N° 173**, del 31 de enero de 2024, Déjase constancia, en cumplimiento de lo mandatado en la Ley Nacional de Cáncer y su reglamento, del desarrollo e implementación de la plataforma de soporte del registro Nacional de Cáncer. 

A partir de este marco, se reconoce la necesidad de consolidar datos clínicos de alta relevancia en el marco del **Sistema Nacional de Registros de Cáncer**, el cual incluye: 

* El Sistema Integral de Gestión Oncológica **(SIGO)**,
* El Registro Nacional de Cáncer Infantil **(RENCI)**,
* Los Registros Poblacionales de Cáncer **(RPC)**
* Los Registros Hospitalarios de Cáncer **(RHC)**
* Egresos hospitalarios y estadísticas vitales del Departamento de Estadísticas e Información en Salud **(DEIS)**

En este contexto, la información generada por los Servicios de Anatomía Patológica adquiere una dimensión clave. Los reportes de biopsias, al ser clave como elemento para la confirmación diagnóstica, requieren una estructura que permita su integración, trazabilidad y reutilización con fines clínicos, regulatorios y sanitarios. 

### Descripción

El repositorio de reportes de biopsias oncológicas (R2BO) centraliza los informes de biopsias diferidas de tipo histológicas validadas con diagnóstico oncológico. 
El modelo de intercambio se basa en el estándar HL7® FHIR®, y utiliza terminologías clínicas internacionales como SNOMED CT, CIE-O, CIE-10 y LOINC para asegurar interoperabilidad semántica.
El diseño del proceso y de los modelos de datos se construyó utilizando una **metodología orientada a procesos, centrada en el paciente y basada en evidencia**, integrando perspectivas clínicas, normativas y técnicas.
El desarrollo fue impulsado por un equipo multidisciplinario del Ministerio de Salud, con participación de:

#### Gabinete Ministerial

* La Unidad de Interoperabilidad del Departamento de Tecnologías de la Información y Comunicaciones (TIC),

#### Subsecretaría de Salud Pública

* División de Planificación Sanitaria Departamento de Estadísticas e Información en Salud (DEIS),
* División de Prevención y Control de Enfermedades:  Agencia Nacional de Prevención y Control del Cáncer (ANACAN),
* División de Planificación Sanitaria Oficina de Vigilancia Epidemiológica de Cáncer del Departamento de Epidemiología

#### Subsecretaria de Redes Asistenciales

* Departamento de Salud Digital,
* División de Gestión de la Red Asistencial - Departamento de GES y Redes Complejas (Unidad de Oncología),
* División de Gestión de la red Asistencial – Departamento de gestión ambulatoria y Apoyo Diagnóstico (Anatomía Patológica)

### Objetivo General del Repositorio de Reportes de Biopsias Oncológicas (R2BO)

Implementar un repositorio interoperable que permita la consolidación y consulta de los informes de biopsias diferidas con diagnóstico oncológico histológico validado y generados en todos los Servicios de Anatomía Patológica del país. 

### Objetivos específicos del Repositorio de Reportes de Biopsias Oncológicas (R2BO)

*  Proveer el insumo del reporte de anatomía patológica de una biopsia para la generación de la notificación obligatoria de cáncer en el Sistema Integral de Seguimiento Oncológico (SIGO), mandatada por la Ley Nº 21.258.
*  Promover el uso de estándares de interoperabilidad, como HL7 FHIR, SNOMED CT, CIE–O y CIE–10 y LOINC, para el intercambio y representación de datos clínicos.
*  Habilitar a MINSAL desarrollar procesos de auditoría clínica, control de calidad y análisis institucional mediante datos estandarizados.
* Habilitar a MINSAL para consolidar información crítica que pueda ser utilizada para investigación, planificación sanitaria y vigilancia epidemiológica.

### Alcance del Repositorio de Reportes de Biopsias Oncológicas (R2BO)

Según lo definido en el Artículo 47° del Decreto N°42 “Reglamento de la Ley Nacional del 
Cáncer” será obligatorio tributar a R2BO, lo establecido en las letras b,c,d,e y f: 
* b) Todas las neoplasias malignas de localización primaria
* c) Todas las neoplasias malignas de localización secundaria.
* d) Todas las neoplasias múltiples.
* e) Todas las neoplasias benignas o de comportamiento incierto del Sistema Nervioso Central (SNC).
* f) Todas las neoplasias in situ de cáncer de mama y cuello uterino NIE III.

### Objetivo General de la Guía de Implementación

Proveer las directrices que garanticen la tributación de los informes definidos al repositorio de reportes de biopsias oncológicas (R2BO), conforme a los estándares nacionales definidos por el Ministerio de Salud.

### Objetivos Específicos de la Guía de Implementación
* Proveer las directrices que garanticen la tributación de los informes definidos al repositorio de 
reportes de biopsias oncológicas (R2BO), conforme a los estándares nacionales definidos por 
el Ministerio de Salud.
*  Documentar los perfiles HL7 FHIR y extensiones nacionales utilizadas en el modelo de interoperabilidad.
*  Proporcionar ejemplos de casos de uso clínicos y sanitarios que demuestran la aplicación del modelo.

### Autores y contribuidores 

Favor referirse a la página de [Autores y contribuidores](contributors.html).