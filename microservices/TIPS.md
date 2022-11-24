# Mapeo de Objetos

Para devolver un x tipo de dato se aclara en la anotación del metodo HTTP correspondiente, en el atributo `produces` con MediaType.

En Spring, la conversión o mapeo de Objeto a Json o viceversa, se realiza de forma automática gracias a la librería de Jackson. Solo es necesario declarar que el tipo de dato a devolver será JSON.

```java
@GetMapping(value="example",produces=MediaType.APPLICATION_JSON_VALUE)
```

En el caso que se quiera trabajar con `XML` se debe aclarar en el atributo produces de la anotación en el controller y agregar una anotación en la entidad `@XmlRootElement`.

```java
@GetMapping(value="example",produces=MediaType.APPLICATION_XML_VALUE)@GetMapping(value="path",produces=MediaType.APPLICATION_JSON_VALUE)
```

# Desbloquear las peticiones desde cualquier origen

Por motivos de seguridad, se bloquean las peticiones procedentes de JavaScript. Para evitarlo se puede incluir la siguiente anotación en el Controller:

```java
@CrossOrigin(origins = "*") 
```

# Desplegar la aplicación

1. Eliminar la librería del POM.xml de junit-vintage-engine, para evitar conflictos por versiones.
2. Click derecho en el proyecto > Run as.. > Maven build .. > Opción Goals : "deploy" > Run
3. Carpeta del proyecto > Barra de navegación > cmd > `java -jar nombre-proyecto.jar`

# Interactuar entre Microservicios

