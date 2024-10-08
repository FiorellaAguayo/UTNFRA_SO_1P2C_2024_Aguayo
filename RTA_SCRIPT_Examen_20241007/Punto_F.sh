#!/bin/bash
IP=$(curl -s ifconfig.me)
REPOURL=$(git remote get-url origin)
USER=$(whoami)
HASH=$(sudo grep $USER /etc/shadow | awk -F ':' '{print $2}')
ARCHIVO_FILTRO_AVANZADO="$HOME/UTNFRA_SO_1P2C_2024_Aguayo/RTA_ARCHIVOS_Examen_20241007/Filtro_Avanzado.txt"

cat << EOF |tee $ARCHIVO_FILTRO_AVANZADO
Mi IP Publica es: $IP
Mi usuario es: $USER
El Hash de mi Usuario es: $HASH
La URL de mi repositorio es: $REPOURL
EOF
