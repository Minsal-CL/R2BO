El reposito de biopsia, permitirá recibir solicitudes e informes de anatomías patológicas, cumpliendo con lo establecido en los CapabilityStatement:

    * [Solicitud de Informes](CapabilityStatement-rbi-minsal-cliente-solicitud.html)
    * [Generación de Informes](CapabilityStatement-rbi-minsal-cliente-informe.html)
    * [Consultor del Repositorio](CapabilityStatement-rbi-minsal-consumidor.html)
    * [Analista del Repositorio](CapabilityStatement-rbi-minsal-analisis.html)

### Generar solicitudes

Para generar solicitudes se debera enviar un bundle que cumpla con el perfil ["Solicitar Informes"](StructureDefinition-rbi-bundle-solicitar-informe.html). 
realizando una operación **POST** a la raíz del servidor.
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
```

#### Iteracción esperada 

El diagrama a continuación explica como debería ser la iteracción entre el usuario, el sistema informatico y el repositorio: 
<div align="center"> 
    {% include envio-solicitud.svg %}
</div>

### Generar Informes

Este permiso permite actualizar solicitudes y en caso de que no existan crearlas, pero va enfocado principalmente a la publicación de informes de anatomía patológica dentro del repositorio. Para cumplir con el envío de información debe utilizar un bundle que cumpla con el perfil ["Generar Informe"](StructureDefinition-rbi-bundle-generar-informe.html) realizando una operación **POST** a la raíz del servidor.

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

#### Iteracción esperada 

El diagrama a continuación explica como debería ser la iteracción entre el usuario, el sistema informatico y el repositorio: 

<div align="center"> 
    {% include envio-informe.svg %}
</div>

### Consultar Solicitudes e Informes

Para consultar el estado de una solicitud y/o un informe solo deberá realizar la consulta al recurso **ServiceRequest** y **DiagnosticReport**. Las consultas permitiran concatenar para buscar mediante el identificador del paciente para traer la información como medio estandar de búsqueda.

**Traer Solicitud**

```
GET ServiceRequest?patient.identifier=9999999-9
```

**Traer Informe**

```
GET DiagnosticReport?patient.identifier=9999999-9
```

**Traer Informe e Información Adicional**
Se puede utilizar el parametro include para traer la información completa o parcializada de lo que se encuentran en la referencia.

```
GET DiagnosticReport?patient.identifier=9999999-9?_include=Observation:result
```

### Analista del Repositorio

Para realizar analisis secundario se recomienda nunca utilizar el repositorio productivo para hacer este tipo de trabajos. Por lo que, se debe realizar un bolcado de la información del repositorio y llevarlo a un datawarehouse o un repositorio FHIR para analisis u otro mecanismo. Para realizar esta función debe realizar una operación **$export** en la raíz del servidor.

```
POST $export
```







