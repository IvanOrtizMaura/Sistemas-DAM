#/bin/bash

select opcion in Equipo Usuario IP Salir
do 
	case $opcion in 
		Equipo)
			echo $HOSTNAME
			;;
		Usuario)
			echo $USER
			;;
		IP)
			hostname -I
			;;
		Salir) 
			break;;
		*)
			echo "$REPLY no es una opcion valida"
			;;
	esac
done 