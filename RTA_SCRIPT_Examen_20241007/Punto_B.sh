#!/bin/bash

sudo fdisk /dev/sdb << EOF
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


w
EOF

sudo mkfs.ext4 /dev/sdb1
sudo mkfs.ext4 /dev/sdb2
sudo mkfs.ext4 /dev/sdb3
sudo mkfs.ext4 /dev/sdb5
sudo mkfs.ext4 /dev/sdb6
sudo mkfs.ext4 /dev/sdb7
sudo mkfs.ext4 /dev/sdb8
sudo mkfs.ext4 /dev/sdb9
sudo mkfs.ext4 /dev/sdb10
sudo mkfs.ext4 /dev/sdb11

sudo mount /dev/sdb1 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdb2 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdb3 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdb5 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdb6 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdb7 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdb8 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdb9 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdb10 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdb11 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/profesores
