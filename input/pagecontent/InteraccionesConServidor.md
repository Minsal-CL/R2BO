El reposito de biopsia, permitirá recibir solicitudes e informes de anatomías patológicas, cumpliendo con lo establecido en los CapabilityStatement:

- [Generación de Informes](CapabilityStatement-r2bo-minsal-cliente-informe.html)
- [Consultor del Repositorio](CapabilityStatement-r2bo-minsal-consumidor.html)
- [Analista del Repositorio](CapabilityStatement-r2bo-minsal-analisis.html)


### Generar Informes

Este permiso permite actualizar solicitudes y en caso de que no existan crearlas, pero va enfocado principalmente a la publicación de informes de anatomía patológica dentro del repositorio. Para cumplir con el envío de información debe utilizar un bundle que cumpla con el perfil ["Generar Notificación"](StructureDefinition-r2bo-bundle-generar-notificacion.html) realizando una operación **POST** a la raíz del servidor.

```
Bundle
|
|-->Type: transaction
|
|-->Entry:
      |
      |--> ServiceRequest 
      |--> Patient
      |--> PractitionerRole
      |--> Practitioner
      |--> Organization
      |--> Specimen
      |--> DiagnosticReport
      |--> Observation
```
El diagrama a continuación explica como debería ser la iteracción entre el usuario, el sistema informatico y el repositorio: 

<div align="center"> 
<p>{% include envio-informe.svg %}</p>
<p>Figura 1 - Secuencia de Almacenamiento de Informes</p>
<p></p>
</div>


### Consultar Informes

Para consultar un informe solo deberá realizar la consulta al recurso **DiagnosticReport**. Las consultas permitiran concatenar para buscar mediante el identificador del paciente para traer la información como medio estandar de búsqueda.

**Traer Resumen Informe**

```
GET DiagnosticReport?patient.identifier=9999999-9
```
El diagrama a continuación explica como debería ser la iteracción entre el usuario, la plataforma SIGO y el repositorio: 

<div align="center"> 
<p>{% include recuperacion-resumen.svg %}</p>
<p>Figura 2 - Recuperación de Reporte</p>
<p></p>
</div>

### Analista del Repositorio

Para realizar análisis secundario se recomienda nunca utilizar el repositorio productivo para hacer este tipo de trabajos. Por lo que, se debe realizar un bolcado de la información del repositorio y llevarlo a un datawarehouse o un repositorio FHIR para análisis u otro mecanismo. Para realizar esta función debe realizar una operación **$export** en la raíz del servidor, la cual será realizada únicamente por plataformas del Ministerio de Salud de Chile.

```
POST $export
```
#### Iteracción esperada 

El diagrama a continuación explica como debería ser la iteracción entre el usuario, el sistema informatico, el sistema de análisis y el repositorio: 

<div align="center"> 
    <img src="exportar.svg" alt="Iteracciones con el servicio terminológico">
    <p>Figura 3 - Exportación de la información para Análisis</p>
</div>