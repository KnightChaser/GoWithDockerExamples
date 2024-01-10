!#/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
	echo "Not running as root"
	exit
fi

echo "[+] Building the Dockerfile..."
docker image build --tag goserver:0.1 .
echo "[+] Running the service..."
docker container run -t -p 9000:8080 goserver:0.1 
