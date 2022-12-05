# Docker-Programar
Docker para crear e iniciar un entorno de programacion

Ejecutar en la terminal: 

docker pull ghcr.io/diego22piriz/docker-programar/phpymysql:v1

docker run -p 3000:80 -d -v "$(pwd)/src:/var/www/html" phpymysql
