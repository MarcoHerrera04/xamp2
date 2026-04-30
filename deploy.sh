#!/bin/bash
echo 'Bajamos repositorio actualizado...'
git pull origin master

echo 'Detenemos contenedores...'
sudo docker-compose down

echo 'Inicializamos contenedores y reconstruimos imagen actualizada...'
sudo docker-compose -f docker-compose.production.yml up -d --build

echo '¡Actualización finalizada en el puerto 8080!'