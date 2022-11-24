# ¿Qué son los microservicios?

Son un enfoque de arquitectura y organización para el desarrollo de aplicaciones compuestas por pequeños servicios autónomos que se comunican a través de API RESTful. 

> En otras palabras, nos permiten dividir nuestro gran sistema en una serie de componentes más pequeños e independientes que colaboran entre si.

Permite que las aplicaciones sean más simples de escalar, más rápidas de desarrollar y más fácil de reutilizar. 

## Características

1. Función única
2. Independiente
3. Registro y auto-descubrimiento de servicios
4. Auto escalado y agilidad
5. Confiabilidad y tolerancia a fallas
  
## Ventajas

1. Facilidad de implementar nuevas y distintas tecnologías
2. Reducción de costos gracias al autoescalamiento
3. Entregables más rápido
4. Equipos de desarrollo más pequeños

## Desventajas

1. Mayor esfuerzo al desplegar e integrar los microservicios
2. Múltiples bases de datos, duplicidad de datos
3. Requiere más personal
4. Necesidad de DevOps y buenas herramientas
5. Complejidad al manejar gran número de microservicios
6. Alta inversión, mantenimiento y arquitectura

## Buenas Prácticas a seguir

1. Aislamiento
2. Autonomía
3. Repositorio propio para cada microservicio
4. Base de datos para cada microservicio permitiendo alta disponibilidad
5. Desplegar en servidores de manera independiente
6. Cada microservicio debe tener una única responsabilidad
7. Manejar datos estándar
8. Monitoreable(Logs)
9. Versionado

## Opciones para desplegar microservicios

1. Maquinas virtuales
2. Servicios para APIs (App Service de Azure)
3. Serverless (Azure functions, AWS lamda, Alibaba function compute)
4. Contenedores (Docker)