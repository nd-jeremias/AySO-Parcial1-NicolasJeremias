cat /prc/meminfo | grep -i memtotal > filtrobasico.txt
sudo dmidecode -t chassis | grep -A1 "Chassis" >> filtrobasico.txt
