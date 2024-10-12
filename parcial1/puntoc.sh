# Para agregar los usuarios
sudo useradd developer1
sudo useradd tester1
sudo useradd devops1
sudo useradd devops2
# Para agregar los grupos
sudo groupadd grupodevops
sudo groupadd grupodevelopers
sudo groupadd grupotesters
# Para asignar los usuarios a los grupos
sudo usermod -aG grupodevops developer1
sudo usermod -aG grupodevelopers developer1
sudo usermod -aG grupotesters tester1
sudo usermod -aG grupodevops devops1
sudo usermod -aG grupodevelopers devops1
sudo usermod -aG grupodevops devops2
# Cambiar permisos de usuario
sudo chmod -c -R o-rwx Examenes-UTN/alumno_1
sudo chmod -c -R g-x o-rwx Examenes-UTN/alumno_2
sudo chmod -c -R o-rwx Examenes-UTN/alumno_2
sudo chmod -c -R o-rwx Examenes-UTN/alumno_3
sudo chmod -c -R g-rwx Examenes-UTN/alumno_3
sudo chmod -c -R o-w Examenes-UTN/profesores
# Crear archivo validar.txt mostrando el usuario
whoami > validar.txt # dentro de cada carpeta "alumno" y profesores
