#!/bin/bash
# Clona el repositorio si no existe, o lo actualiza si ya existe
if [ ! -d "AppConMySQL_PHP_phpMyAdmin" ]; then
    git clone https://github.com/AlejoSC58/AppConMySQL_PHP_phpMyAdmin.git
else
    cd AppConMySQL_PHP_phpMyAdmin
    git pull
    cd ..
fi

# Entra en el directorio del proyecto
cd AppConMySQL_PHP_phpMyAdmin

# Ejecuta Docker Compose
docker-compose up -d
