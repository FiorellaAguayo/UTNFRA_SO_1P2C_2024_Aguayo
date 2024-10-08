#!/bin/bash

# Configuración de grupos principales
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

# Crear hash de la contraseña "osboxes.org"
PASSWORD_HASH=$(openssl passwd -1 "osboxes.org")

# Crear usuarios con el grupo principal y contraseña
sudo useradd -m -s /bin/bash -p "$PASSWORD_HASH" -g p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -p "$PASSWORD_HASH" -g p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -p "$PASSWORD_HASH" -g p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -p "$PASSWORD_HASH" -g p1c2_2024_gProfesores p1c2_2024_P1

# Asignar grupos secundarios a cada usuario
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A1
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A2
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A3
sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1

echo "Usuarios y grupos creados correctamente con la contraseña 'osboxes.org'."

# Configurar permisos en las carpetas de Examenes-UTN

# Permisos para /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_1
sudo chmod -R 750 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_1  # Dueño: rwx, Grupo: r-x, Otros: ---

# Permisos para /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_2  # Dueño: rwx, Grupo: ---, Otros: ---

# Permisos para /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_3
sudo chmod -R 770 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/alumno_3  # Dueño: rwx, Grupo: rwx, Otros: ---

# Permisos para /Examenes-UTN/profesores
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/profesores
sudo chmod -R 775 /home/osboxes/UTNFRA_SO_1P2C_2024_Aguayo/Examenes-UTN/profesores  # Dueño: rwx, Grupo: rwx, Otros: r-x

# Crear archivos validar.txt con el usuario correspondiente
sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1
