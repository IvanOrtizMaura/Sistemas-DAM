#/bin/bash
mkdir result
touch result/even.dat
touch result/odd.dat
contador=0

for i in {0..100}
do
	n=$(($RANDOM%100))
	x=$(( $n % 2 ))
	echo $n
	
	if [ $x -eq 0 ];
	then
		echo $n >> result/even.dat
		contador=$(($contador + 1))
	else
		echo $n >> mkdir result/odd.dat
		contador=$(($contador - 1))


	fi
done

if [ $contador -gt 0 ];
then 
	echo "Hay mas numeros pares"
elif [ $contador -lt 0 ]
then 
	echo "Hay mas numeros impares"
else 
	echo "Hay el mismo numero de pares e impares"
fi