#!/bin/bash
echo 'Bajamos repositorio actualizado...'
git pull origin main

echo 'Detenemos contenedores...'
docker-compose down

echo 'Inicializamos contenedores y reconstruimos imagen actualizada...'
docker-compose -f docker-compose.production.yml up -d --build

echo '¡Actualización finalizada en el puerto 8080!'