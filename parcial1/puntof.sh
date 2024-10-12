echo "Mi IP: $(curl -s ifconfig.me)" > filtroavanzado.txt
grep vagrant /etc/passwd | awk -F ':' 'BEGIN { printf "mi usuario es: " } { printf "%s", $1 } END { printf "\n" }' >> filtroavanzado.txt
sudo grep vagrant /etc/shadow | awk -F ':' 'BEGIN { printf "El hash de mi Usuario es: " } { printf "%s", $2 } END { printf "\n" }'
