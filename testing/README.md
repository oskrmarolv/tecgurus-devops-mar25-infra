# tecgurus-devops-mar25
Repositorio para curso "DevOps desde Cero" Marzo 2025


## DOCKER


### Directivas DOCKERFILE

* FROM
* RUN
* COPY
* ENV
* EXPOSE
* CMD
* ENTRYPOINT


### Docker CLI

```
# construccion de una imagen
...$ docker build --file <Dockerfile_path> --tag <repositorio>/<projecto>:<version> .
```

```
# lanzar un contenedor
...$ docker run --name <container_name> <docker_imager>

# contenedor con interfaz interactiva (-it) 
...$ docker run -it --name <container_name> <docker_imager>

# contenedor con salida en 2do plano (-) 
...$ docker run -d --name <container_name> <docker_imager>

# conexion de puertos (-p)
...$ docker run -it --name <container_name> \
      -p <real_port>:<logic_port> \ 
      <docker_imager> 

# montaje simple de un volumen
...$ docker run -it --name <container_name> \
      -v <orig_local_path>:<dest_container_path> \ 
      <docker_imager>

...$ docker run -d --name <container_name> \
      --env <clave>=<valor> \
      <docker_imager>
```

```
# listar imagenes disponibles
...$ docker images 

# listar los contenedores lanzados
...$ docker ps
...$ docker ps --all

# inicia un contenedor ya creado
...$ docker start

# detiene un contenedor en ejecución
...$ docker stop

# envia un comando para ser ejecutado por un contenedor
...$ docker exec -it <container_name> <command>

```
