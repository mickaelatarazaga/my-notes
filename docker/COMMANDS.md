# Comandos de Docker

`$ docker run hello-world` (Corre el contenedor hello-world)

`$ docker ps` (Muestra los contenedores activos)

`$ docker ps -a` (Muestra todos los contenedores)

`$ docker inspect <containe ID>` (Muestra el detalle completo de un contenedor)

`$ docker inspect <name>` (igual que el anterior pero invocado con el nombre)

`$ docker run –-name hello-micka hello-world` (Asigna un nombre custom “hello-micka)

`$ docker rename hello-micka hola-micka` (Cambia el nombre de hello-platzi a hola-micka)

`$ docker rm <ID o nombre>` (Borra un contenedor)

`$ docker container prune` (Borra todos lo contenedores que esten parados)

`$ exit` (Se apaga el contenedor)

`$ docker --name <nombre> -d ubuntu -f <comando>` (Si se ejecuta exit, se apaga el contenedor)

`$ docker --name alwaysup -d ubuntu tail -f /dev/null` (Mantiene el contenedor activo)

`$ docker exec -it alwaysup bash` (Entra al contenedor)

`$ docker inspect --format ‘{{.State.Pid}}’ alwaysup` (Main process ubuntu)

`kill <PID>` (Mata el proceso dentro de una máquina linux)

`$ docker stop <name>` (Obliga a apagar el contenedor en cualquier SO)

`$ docker run -d --name proxy nginx` (Corre un nginx)

`$ docker stop proxy` (Apaga el contenedor)

`$ docker rm -f <contenedor>` (Para y borra el contenedor)

`$ docker run -d --name proxy -p 8080:80 nginx` (Corre un nginx y expone el puerto 80 del contenedor en el puerto 8080 de mi máquina)

`$ docker logs proxy` (Muestra los logs)

`$ docker logs -f proxy` (Follow de los logs)

`$ docker logs --tail 10 -f proxy` (Filtra 10 últimas entradas de los logs)