"Informacion del lsblk"
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0 63.9M  1 loop /snap/core20/2318
loop1    7:1    0   87M  1 loop /snap/lxd/29351
loop2    7:2    0 38.8M  1 loop /snap/snapd/21759
sda      8:0    0   40G  0 disk 
└─sda1   8:1    0   40G  0 part /
sdb      8:16   0   10M  0 disk 
sdc      8:32   0   10G  0 disk 
├─sdc1   8:33   0  2.5G  0 part 
├─sdc2   8:34   0  2.5G  0 part 
├─sdc3   8:35   0  2.5G  0 part 
├─sdc4   8:36   0    1K  0 part 
└─sdc5   8:37   0  2.5G  0 part 
sdd      8:48   0    2G  0 disk 
"Comandos utilizados"
sudo fdisk /dev/sdc #Abre la herramienta fdisk
Dentro de fdisk: n crea una una particion
		 p para elegir crear una particion primaria
		 "enter" para seleccionar el comienzo del sector por defecto
		 +2.5G crea la particion de 2.5 Gigabytes
		 e para crear una particion extendida. Luego repetir los pasos anteriores

sudo mkfs.ext4 /dev/sdcN # da formato a la particion numero N en el disco "c"

sudo mkdir /mnt/sdcX # Crea un directorio para montar la particion recien creada
sudo mount /dev/sdcX /mnt/sdcX # Monta la imagen en el directorio
