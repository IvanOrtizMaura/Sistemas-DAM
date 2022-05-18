#!/bin/bash 

menu(){
	echo "1 — Register a user "
	echo "2 — Search for an user by ID "
	echo "3 — View all registered users "
	echo "4 — Perform a Backup"
	echo "5 — Exit"
}
opcion(){
	clear
	bandera=false
	while [ $bandera ]
	do
	menu
	read -p "Elige una opcion → " num
	case $num in 
		1)
			clear
			register
			;;
		2)
			clear
			busqueda
			;;
		3)
			clear
			registro
			;;
		4)
			copia
			;;
		5)
			exit
			;;
		*)
			clear
			echo "Error"
			;;
		esac
	done
}


register(){
	
	echo "Introduce su DNI → "
	read dni
	echo "Introduce su Nombre → "
	read nombre 
	echo "Introduce su primer apellido → "
	read apellido1
	echo "Introduce su segundo apellido → "
	read apellido2
	echo "Introduce su direccion → ".
	read direccion
	echo "Introduce su ubicacion → "
	read ubicacion
	echo "Introduce su codigo postal → "
	read cp
	echo "Introduce su telefono → "
	read telefono 
	echo "Introduce su email → "
	read mail
	
	clear 
	echo $dni
	echo $nombre
	echo $apellido1
	echo $apellido2
	echo $direccion
	echo $ubicacion
	echo $cp
	echo $telefono
	echo $mail

	read -p "Son conrrectos los datos (s/n) " comprobacion
	if [[ "$comprobacion" = "s" ]]
	then
		informacion="$dni,$nombre,$apellido1,$apellido2,$direccion,$ubicaion,$cp,$telefono,$mail"
		echo $informacion >> usuario.txt
	fi
	
	
}


busqueda(){
	read -p "Que quieres buscar " busqueda
	grep $busqueda usuario.txt	
	
}
registro(){
	cat usuario.txt
}
copia(){
	if [[ ! -e /backup ]]
	then
		mkdir /backup
	fi
	sudo cp usuario.txt /backup/$(date +"%d%m%Y%H%M").txt
}
crearArchivo(){
	linea1="[DNI],[NOMBRE],[APELLIDO1],[APELLIDO2],[ADDRESS],[UBICATION],[POSTAL CODE], [TELEPHONE],[E-MAIL]"
	echo $linea1 >>usuario.txt
}

crearArchivo	
opcion

