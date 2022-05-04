#/bin/bash
echo Introduce tu nombre
read nombre
if [ -e $nombre ];
then 
	rmdir $nombre
	mkdir $nombre
	echo "Carpeta creada"
else 
	mkdir $nombre
	echo "Carpeta creada"
	
for i in {0..9}
do 
	if [ -e $nombre/$nombre$i.txt ]
		rmdir $nombre/$nombre$i.txt
		mkdir $nombre/$nombre$i.txt
		echo "Carchivos creados"
	else
		mkdir $nombre/$nombre$i.txt
		echo "Carchivos creados"

done
