
@echo off
REM Comprobar si la carpeta del proyecto ya existe
if not exist "AppConMySQL_PHP_phpMyAdmin" (
    echo Clonando el repositorio...
    git clone https://github.com/alejomallen58/AppConMySQL_PHP_phpMyAdmin.git
) else (
    echo Repositorio ya clonado. Actualizando...
    cd AppConMySQL_PHP_phpMyAdmin
    git pull
    cd ..
)

REM Cambiar al directorio del proyecto
cd AppConMySQL_PHP_phpMyAdmin

REM Ejecutar Docker Compose
echo Iniciando Docker Compose...
docker-compose up -d

echo El programa se ha iniciado. Pulsa cualquier tecla para salir.
pause
