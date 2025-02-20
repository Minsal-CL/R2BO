Dada la necesidad de codificar en distintas terminologías, el Ministerio de Salud de Chile dispone de un servidor terminológico, en el cual están cargados los siguientes sistemas:

* SNOMED-CT
* CIE-10
* CIE-O

Que mediante la operación [$expand](http://hl7.org/fhir/R4/valueset-operation-expand.html) permitirá la búsqueda de términos con un código SNOMED-CT, mientras que la operación [$translate](http://hl7.org/fhir/R4/conceptmap-operation-translate.html) permite convertir códigos a CIE-10 o CIE-O 3. Para facilitar aún más la búsqueda de estos términos en el servidor, se crearon los siguientes sets de valores:

* [Snomed CT para Hallazgos Clínicos](ValueSet-rbi-snomed-hallazgos-clinicos.html)
* [Snomed CT para Topografía](ValueSet-rbi-topografica-VS.html)
* [Snomed CT para Anomalías Morfológicas](ValueSet-rbi-anomalias-morfologicas-VS.html)

### Instrucciones de Operación Expand:

La operación [$expand](http://hl7.org/fhir/R4/valueset-operation-expand.html) se puede realizar a un ValueSet base o específico, como se dijo anteriormente, se crearon 3 de estos para facilitar la búsqueda de estos términos. Por lo que, se requiere el ID del ValueSet que desea realizar la búsqueda más los parámetros **displayLanguage** y **filter** para utilizar esta operación.

#### Ejemplo:

**Consulta**
```
GET /ValueSet/rbi-snomed-hallazgos-clinicos/$expand?displayLanguage=es,en&filter=Neoplasia Incierto Mama
```
**Respuesta**
```
{
    "resourceType": "ValueSet",
    "id": "rbi-snomed-hallazgos-clinicos",
    "url": "https://interoperabilidad.minsal.cl/fhir/ig/rbi/ValueSet/rbi-snomed-hallazgos-clinicos",
    "name": "SnomedCTHallazgosClinicos",
    "title": "ValueSet de Snomed CT para Hallazgos Clínicos",
    "status": "draft",
    "experimental": true,
    "description": "Este ValueSet contiene los códigos de Snomed CT que representan hallazgos clínicos",
    "copyright": "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
    "expansion": {
        "id": "dd71a81a-e89e-4495-8409-82af64af45b7",
        "timestamp": "2025-02-20T12:11:45+00:00",
        "total": 18,
        "offset": 0,
        "parameter": [
            {
                "name": "version",
                "valueUri": "http://snomed.info/sct|http://snomed.info/sct/449081005/version/20230430"
            },
            {
                "name": "displayLanguage",
                "valueString": "es,en"
            }
        ],
        "contains": [
            {
                "system": "http://snomed.info/sct",
                "code": "269497004",
                "display": "neoplasia de comportamiento incierto de la mama"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "351411000119103",
                "display": "neoplasia de comportamiento incierto de mama izquierda"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94924003",
                "display": "neoplasia de comportamiento incierto de la mama masculina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "351651000119100",
                "display": "neoplasia de comportamiento incierto de mama derecha"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94836005",
                "display": "neoplasia de comportamiento incierto de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "95052004",
                "display": "neoplasia de comportamiento incierto de piel de mama"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94746002",
                "display": "neoplasia de comportamiento incierto de la aréola de la mama masculina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94965003",
                "display": "neoplasia de comportamiento incierto del pezón de la mama masculina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94745003",
                "display": "neoplasia de comportamiento incierto de la aréola de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94964004",
                "display": "neoplasia de comportamiento incierto del pezón de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94817000",
                "display": "neoplasia de comportamiento incierto del tejido ectópico de la mama masculina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94816009",
                "display": "neoplasia de comportamiento incierto del tejido ectópico de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94750009",
                "display": "neoplasia de comportamiento incierto de la prolongación axilar de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94785009",
                "display": "neoplasia de comportamiento incierto de la porción central de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94914006",
                "display": "neoplasia de comportamiento incierto del cuadrante inferior interno de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "94916008",
                "display": "neoplasia de comportamiento incierto del cuadrante inferior externo de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "95155000",
                "display": "neoplasia de comportamiento incierto del cuadrante superior interno de la mama femenina"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "95157008",
                "display": "neoplasia de comportamiento incierto del cuadrante superior externo de la mama femenina"
            }
        ]
    }
}
```
<\br>

### Instrucciones de Operación Translate:

La operación $translate requiere como mínimo 3 parámetros:

* **system**: El sistema de codificación de origen, que para nuestro caso siempre será **http://snomed.info/sct**
* **targetSystem**: El sistema de codificación de destino que puede ser **http://hl7.org/fhir/sid/icd-10** para la CIE-10 o **http://hl7.org/fhir/sid/icd-o** para el caso de la CIE-O topológica o morfológica.
* **code**: El código de SNOMED el cual se desea traducir.

#### Ejemplo:

**Consulta**
```
GET /ConceptMap/$translate?system=http://snomed.info/sct&targetsystem=http://hl7.org/fhir/sid/icd-10&code=269497004
```
**Respuesta**
```
{
    "resourceType": "Parameters",
    "parameter": [
        {
            "name": "result",
            "valueBoolean": true
        },
        {
            "name": "message",
            "valueString": "Please observe the following map advice. Group:1, Priority:1, Rule:TRUE, Advice:'ALWAYS D48.6 | POSSIBLE REQUIREMENT FOR MORPHOLOGY CODE', Map Category:'null'."
        },
        {
            "name": "match",
            "part": [
                {
                    "name": "equivalence",
                    "valueCode": "unmatched"
                },
                {
                    "name": "concept",
                    "valueCoding": {
                        "system": "http://hl7.org/fhir/sid/icd-10",
                        "code": "D48.6"
                    }
                },
                {
                    "name": "source",
                    "valueString": "http://snomed.info/sct/900000000000207008/version/20230331?fhir_cm=447562003"
                }
            ]
        }
    ]
}
```

### Diagrama de Iteracciones Esperadas:

<br> 
<div align="center"> 
    {% include iteraccionTerminologico.svg %}
</div>
<br> 