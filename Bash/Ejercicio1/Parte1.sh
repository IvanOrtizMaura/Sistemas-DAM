#/bin/bash
echo Introduce un número 
read num1
echo Introduce un número
read num2

suma = $(($num1 + $num2))
resta = $(($num1 - $num2))
multiplicacion = $(($num1 * $num2))
division = $(($num1 / $num2))
resto = $(($num1 % $num2))
comparacion = $(($num1 == $num2))
