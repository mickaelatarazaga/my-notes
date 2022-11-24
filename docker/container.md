Los contenedores son autocontenidos y no pueden acceder a la información de la máquina que los hostea.
A veces tenemos aplicaciones que generan datos y que queremos acceder a ellos y guardarlos en el disco.
Crearemos una carpeta nueva para que interactúe con nuestro contenedor

# Bind Mounts

Compartir datos entre contenedores y la máquina anfitriona. Actúa vinculando una ruta de la máquina anfitriona con una ruta dentro del contenedor, espejando su contenido.

`$ mkdir dockerdata` Crear directorio

`$ docker run -d --name db mongo` Crear una base de datos en mongo db y hacer que los datos no mueran con el contenedor cuando se cierre

Ahora entraremos al bash del contenedor para generar datos en él:

`$ docker exec -it db bash`

Ahora estoy dentro del contenedor y accederé a mongo:

`$ mongo`

Ya estoy conectado en la base de datos local y crearé una base de dato llamada “Micka”

`use micka`
crearé un nuevo usuario llamado “Leo”

db.users.insert({“nombre”:“Leo”})

verifico que esté creado:

db.users.find()

Saldré de mongo y del contenedor con el comando exit dos veces

y eliminaré el contenedor por completo con docker rm -f db

Pero al volver de acceder no estará disponible, dado que eliminé el contenedor.

Para que no se elimine el dato, necesito generar un directorio espejo en mi máquina local, para esto, utilizaremos bind mounts.

Lo primero que necesitamos es crear un nuevo directorio

mkdir mongodata

y obtendremos el path en el que está montado:

pwd

Y copiaremos en el portapapeles la ruta del directorio:

docker run -d --name db -v /miruta/mongodata:/data/db mongo
donde /miruta/mongodata es la ruta a mi carpeta local y /data/db es la carpeta donde mongo guarda sus datos

ahora, si repetimos todo el procedimiento anterior, todo quedará espejado en el directorio local, por lo tanto, el dato que ingresamos en la base de datos están disponibles en mongo si volvemos a


El riesgo es que el contenedor tiene acceso a los datos del disco de la máquina anfitriona.


# Volúmenes

Es más seguro

La parte que se vincula con la máquina anfitriona, solo es manejada por Docker.

