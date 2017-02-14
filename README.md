# unifi
Controladora Unifi

Crear la imagen:
docker build -t bikotek/unifi .



Ejecutar:

docker run --name unifi -p 8080:8080 -p 8443:8443 -p 8843:8843 -p 8880:8880 -v /home/txupas/Descargas/prueba/:/var/lib/unifi/ -d bikotek/unifi





