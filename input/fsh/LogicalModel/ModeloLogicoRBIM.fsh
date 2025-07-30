Logical: PacienteRIAPLogico
Id: ModeloLogicoPacienteRIAP
Title: "Modelo Logico De un Paciente del RIAP"
Description: "Modelo lógico para el conjunto de datos mínimo de un paciente del RIAP."
Characteristics: #can-be-target

* nombres 1..1 SU HumanName "El nombre de las personas naturales, es la designación que dan los padres o representantes legales al momento de realizar la inscripción de nacimiento en la oficina del SRCI."
* primerApellido 1..1 SU string "El apellido distingue a la persona del resto de los integrantes de la sociedad y el nombre de pila, lo individualiza jurídicamente de los restantes hijos de los mismos padres."
* segundoApellido 0..1 SU string "El apellido distingue a la persona del resto de los integrantes de la sociedad y el nombre de pila, lo individualiza jurídicamente de los restantes hijos de los mismos padres."
* tipoDeDocumento 1..1 SU CodeableConcept "Identificar el tipo del documento de identidad, por el cual se va a identificar el paciente."
  * numeroDeDocumento 1..1 SU string "Número de documento de identidad del paciente."
  * run 0..1 SU string "El RUN es el n° de identificación que entrega la mayor credibilidad para la individualización inequívoca de las personas y se debe utilizar en todas las personas que lo poseen. En Chile es único, irrepetible e intransferible que posee todo chileno resida o no en Chile.  "
  * digitoVerificador 0..1 SU string "Parte de la estructura del RUN y debe permitir valor numérico, incluído el cero y la letra k mayúscula o minúscula."
  * runProvisorio 0..1 SU string "Es el documento entregado de forma provisoria, por una entidad publica chilena."
  * dni 0..1 SU string "Es el numero de documento de identificacion de un extranjero, documento entregado en el país de origen"
  * pasaporte 0..1 SU string "Es el documento de identidad internacional, en formato de libreta electrónica, confeccionado por el estado de Chile que permite a sus ciudadanos salir del país e ingresar a otro, por los puertos o aeropuertos internacionales."
* sexoBiologico 1..1 SU CodeableConcept "Es la determinación hecha a través de la aplicación de criterios biológicos para clasificar a las personas como hombres o mujeres al momento de nacer."
* fechaDeNacimiento 0..1 SU dateTime "Momento exacto por el cual un ser humano deja de estar alojado en el vientre de su madre y se corta el cordón umbilical que lo une a la placenta. Se expresa en términos de día, mes y año."
* edad 0..1 SU Age "Tiempo de existencia de una persona, intervalo de tiempo estimado o calculado entre el día, mes y año del nacimiento y el día, mes y año en que ocurre un hecho o acontecimiento en cualquier momento posterior al nacimiento. Se expresa en años, meses, semanas, días u horas de vida."

Logical: InformePatologicoRIAPLogico
Id: ModeloLogicoInformePatologicoRIAP
Title: "Modelo Lógico de Informe Patológico del RIAP"
Description: "Modelo lógico para el conjunto de datos mínimo de un informe patológico del RIAP"
// Characteristics: #can-be-target

* nroDeBiopsia 1..1 SU Identifier "Corresponde a una identificación única del informe de biopsia del establecimiento que analiza la muestra."
* paciente 1..1 SU Reference(PacienteRIAPLogico) "Corresponde al paciente al cual se le realiza la biopsia."
* solicitud 1..1 SU Reference(SolicitudRIAPLogico) "Corresponde a la solicitud de biopsia del paciente, la cual contiene los datos clínicos y antecedentes relevantes para el análisis de la muestra."
* establecimientoDeOrigen 1..1 SU Reference(Organization) "Corresponde al establecimiento de origen de la toma de la muestra."
* servicioClinicoDeOrigen 1..1 SU Reference(Organization) "Servicio clinico en el cual se encuentra el paciente, o al cual se le debe informar del resultado de esta biopsia."
* establecimientoQueInforma 1..1 SU Reference(Organization) "Corresponde al establecimiento que informa el análisis de la muestra."
* patologoQueInforma 1..1 SU Reference(Practitioner) "Corresponde al patólogo que informa el análisis de la muestra."
* fechaDeTomaDeMuestra 1..1 SU dateTime "Corresponde al día en que se extrajo el tejido o las células del paciente para ser analizadas en el laboratorio."
* fechaDeRecepcionDeMuestra 1..1 SU dateTime "Corresponde a la fecha de recepción de la muestra en el lugar de análisis."
* fechaDeInforme 1..1 SU dateTime "Corresponde a la fecha en que se emite el informe con el resultado de la muestra analizada."

/// Descripción Macroscópica y microscópica
* descripcionMacroscopica 1..1 SU string "se refiere a la evaluación inicial que se realiza sobre la muestra de tejido sin el uso de un microscopio, detallando características visibles a simple vista. Esta fase incluye la observación del tamaño, forma, color, consistencia y cualquier anomalía notable del tejido"
* descripcionMicroscopica 0..1 SU string "se refiere al análisis detallado de las células y tejidos de la muestra bajo el microscopio, después de haber sido procesada y teñida en el laboratorio de anatomía patológica. Este examen permite identificar cambios en la estructura celular y la arquitectura del tejido que puedan indicar enfermedades o condiciones anormales."

/// Tipo de biopsia
* tipoDeBiopsia 1..1 SU CodeableConcept "se define como la categorización del procedimiento empleado para la obtención del tejido, con base en su técnica, extensión y objetivo clínico"
* lateralidad 1..1 SU CodeableConcept "se refiere a la identificación del lado del cuerpo donde se tomó la muestra. Este término es relevante especialmente en órganos o estructuras pares, como mamas, riñones, pulmones, ovarios, o extremidades, para garantizar precisión en el diagnóstico y tratamiento."
* detalleTopografia 1..1 SU CodeableConcept "se refiere a la descripción exacta de la localización del tumor dentro de la muestra de tejido extraída durante el procedimiento quirúrgico. Esta variable es fundamental en el informe de patología, ya que proporciona detalles sobre la relación del tumor con las estructuras adyacentes y su posición dentro del tejido extirpado."
* invasionVascularLinfatica 1..1 SU boolean "se refiere a la presencia de células tumorales dentro de los vasos linfáticos. Es un hallazgo importante en la anatomía patológica, especialmente en el diagnóstico y pronóstico de tumores malignos, ya que indica la capacidad del tumor de diseminarse a través del sistema linfático hacia ganglios linfáticos u otros órganos distantes"
* invasionVascularSanguinea 1..1 SU boolean "se refiere a la presencia de células tumorales dentro de los vasos sanguíneos, como venas, arterias o capilares. Es un hallazgo patológico significativo, ya que indica la capacidad del tumor de diseminarse por vía hematógena (a través del torrente sanguíneo), lo que puede dar lugar a metástasis en órganos distantes."
* infiltracionPerineural 1..1 SU boolean "es un término médico que describe la muerte de células o tejidos dentro del cuerpo como resultado de lesiones, infecciones, falta de suministro de sangre (isquemia) o daño tóxico. A nivel microscópico, la necrosis es un hallazgo frecuente en informes de biopsias, particularmente en el contexto de enfermedades inflamatorias, infecciosas y neoplásicas."
* necrosis 1..1 SU integer "es un término médico que describe la muerte de células o tejidos dentro del cuerpo como resultado de lesiones, infecciones, falta de suministro de sangre (isquemia) o daño tóxico. A nivel microscópico, la necrosis es un hallazgo frecuente en informes de biopsias, particularmente en el contexto de enfermedades inflamatorias, infecciosas y neoplásicas."
* infiltradoLinfocitarioPeritumoral 0..1 SU code "es un término que describe la acumulación de linfocitos (un tipo de célula del sistema inmunológico) alrededor de un tumor, sin invadir directamente el tejido tumoral. Este hallazgo histopatológico es importante porque refleja la interacción entre el sistema inmunitario del paciente y el tumor, lo cual puede tener implicaciones diagnósticas, pronósticas y terapéuticas."
* tamanoTumoral 1..1 SU string "se refiere a la dimensión máxima del tumor medido en la muestra de tejido o imagen y suele expresarse en milímetros o centímetros. En los informes de patología, el tamaño tumoral es una variable crítica, pues influye directamente en el estadiaje, el pronóstico y las decisiones de tratamiento del cáncer."
* nivelInfiltracion 1..1 SU CodeableConcept "describe la profundidad o extensión de un tumor dentro de los tejidos en los que ha comenzado a crecer y a invadir estructuras adyacentes. Este parámetro es fundamental en el diagnóstico y la estadificación de ciertos cánceres, pues indica cuán avanzado está el tumor en términos de invasión local. (solo para los órganos que tienen pared)"
* focalidadMulticentricidad 1..1 SU CodeableConcept "son términos que se utilizan en el análisis de biopsias y en el diagnóstico de ciertos tipos de cáncer, especialmente en órganos como la mama, el hígado y los riñones, para describir la distribución y características del tumor en el tejido afectado."
* margenQuirurgicoMedida 1..1 SU Quantity "se refieren a los bordes del tejido que rodea la lesión o tumor y que fue removido durante la biopsia. Estos se examinan para determinar si están libres de células tumorales (márgenes negativos) o si contienen células malignas (márgenes positivos). En esta variable determinar la extensión lineal del margen positivo o la distancia al margen cercano en milimetros."
* margenQuirurgicoCategoria 1..1 SU CodeableConcept "se refieren a los bordes del tejido que rodea la lesión o tumor y que fue removido durante la biopsia. Estos se examinan para determinar si están libres de células tumorales (márgenes negativos) o si contienen células malignas (márgenes positivos). En esta variable determinar la extensión lineal del margen positivo o la distancia al margen cercano en milimetros."
* tejidoNoTumoralAdyacente 1..1 SU CodeableConcept "se refiere al tejido sano que rodea al tumor y no muestra signos de células malignas. En patología, el análisis del tejido no tumoral adyacente es importante para evaluar los efectos que el tumor puede haber causado en el entorno inmediato y para verificar que se ha obtenido una resección adecuada y libre de células tumorales."
* gangliosLinfaticos 1..1 SU string "En oncología, los ganglios linfáticos cercanos al tumor se examinan porque pueden contener células tumorales metastásicas. Este proceso de diseminación a los ganglios linfáticos es un factor clave en la estadificación del cáncer"
* evaluacionPostNeoadyuvancia 0..1 SU string "Tamaño de lecho tumoral (en dos ejes mayores, celularidad tumoral residual (porcentaje)"

/// Conclusión
* conclusion 1..1 SU string "Todo lo anterior constituye el diagnóstico anatomo patológico."

/// Clasificación internacional de enfermedades para oncología
* topografia 1..1 SU CodeableConcept "El código topográfico indica el lugar de origen de una neoplasia; en otras palabras, dónde se originó el tumor"
* morfologia 1..1 SU CodeableConcept "El código morfológico registra el tipo de célula que se ha transformado en neoplásica y su actividad biológica; en otras palabras, indica el tipo de tumor que se ha desarrollado y cuál es su comportamiento."
* comportamiento 1..1 SU CodeableConcept "El comportamiento de un tumor es la forma en la que actúa dentro del cuerpo. Corresponde al quinto dígito del código morfológico."
* gradoDiferenciacion 1..1 SU CodeableConcept "La diferenciación describe la magnitud en la que un tumor recuerda al tejido normal en el que se originó."

/// Etapificación 
* categoriaTNM 0..1 BackboneElement "Clasificación TNM"
  * categoriaTumorPrimario 0..1 SU CodeableConcept "Categoría del tumor primario"
  * categoriaNodosPrimario 0..1 SU CodeableConcept "Categoría de los ganglios linfáticos regionales"
  * categoriaMetastasisPrimario 0..1 SU CodeableConcept "Categoría de metástasis a distancia"


Logical: SolicitudRIAPLogico
Id: ModeloLogicoSolicitudRIAP
Title: "Modelo Lógico de Solicitud del RIAP"
Description: "Modelo lógico para el conjunto de datos mínimo de una solicitud del RIAP"
Characteristics: #can-be-target  

* nroDeMuestra 1..1 SU Identifier "Cantidad de muestras analizadas."
* muestraOrgano 1..1 SU CodeableConcept "Se refiere al fragmento o tejido extraído del cuerpo del paciente que será analizado en el laboratorio de anatomía patológica. Este término abarca cualquier porción de tejido o células obtenidas mediante un procedimiento clínico (como una biopsia o citología) y es la base del diagnóstico histopatológico."
* tipoProcedimiento 1..1 SU CodeableConcept "Se refiere al método específico empleado para obtener la muestra de tejido o células que será analizada en el laboratorio. Este campo describe el procedimiento realizado, lo cual permite al equipo médico entender el método de extracción y su contexto clínico, ambos importantes para interpretar correctamente los resultados."
* hipotesisDiagnostica 1..1 SU CodeableConcept "Diagnóstico inicial planteado por el médico tratante basado en los signos, síntomas y antecedentes del paciente, que orienta las pruebas diagnósticas necesarias para confirmar o descartar la enfermedad sospechada. Esta hipótesis permite planificar el abordaje clínico mientras se espera el diagnóstico definitivo."
* medicoSolicitante 1..1 SU Reference(Practitioner) "Nombre del médico que genera la solicitud de biopsia."
* rutMedicoSolicitante 1..1 SU string "corresponde al número identificador único del profesional médico solicitante."
* medicoIntervencionista 1..1 SU Reference(Practitioner) "Nombre del médico que toma la muestra para la biopsia."
* rutMedicoIntervencionista 1..1 SU string "Corresponde al número identificador único del profesional médico intervencionista."