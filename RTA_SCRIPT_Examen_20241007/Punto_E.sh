#!/bin/bash

grep -i memtotal /proc/meminfo > /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

sudo dmidecode -t chassis | grep -i manufacturer >> /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt

