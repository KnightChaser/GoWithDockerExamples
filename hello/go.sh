#/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
	echo "Not running as root"
	exit
fi

echo "[+] Building..."
docker build --tag gohello:0.1 .
echo "[+] Running..."
docker run --name gohello gohello:0.1
echo "[+] Deleting the running image..."
docker rm gohello
