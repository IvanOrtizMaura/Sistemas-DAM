#/bin/bash

mkdir $(date +%d-%m-%Y)

for i in {0..3}
do
	echo Introduce una ruta absoluta para hacer una copia de seguridad
	read ruta
	cp $ruta $(date +%d-%m-%Y)
done