@echo off

:menu
cls
echo 1 - Calculadora Batch
echo 2 - Historial
echo 3 - Abrir calculadora
echo 4 - Salir
set/p opcio="Que opcion quieres"

if %opcio% ==1 goto introducirDatos
if %opcio% ==2 goto historial 
if %opcio% ==3 goto calculadora
if %opcio% ==4 goto salir

:introducirDatos
cls
set /p numero1=Introduce un numero

set /p numero2=Introduce un numero

echo 1 - Suma
echo 2 - Resta
echo 3 - Multiplicacion
echo 4 - Division
set/p opcio2="Que opcion quieres"
if %opcio2% == 1 goto suma
if %opcio2% == 2 goto resta
if %opcio2% == 3 goto multiplicacion
if %opcio2% == 4 goto division


:suma

set /a resultado=%numero1%+%numero2%
echo el resultado de su suma es %resultado%
goto resultado
pause
cls
:resta

set /a resultado=%numero1%-%numero2%
echo el resultado de su resta es %resultado%
goto resultado
pause
cls
:multiplicacion
set /a resultado=%numero1%*%numero2%
echo el resultado de su multiplicacion es %resultado%
goto resultado
pause
cls
:division
set /a resultado=%numero1%/%numero2%
echo el resultado de su division es %resultado%
goto resultado
pause
cls
:resultado
echo %date% %time% %resultado% >> resultados.txt
goto menu
:historial
start resultados.txt
pause
goto menu
:calculadora
start calc.exe
goto menu

:salir
echo Gracias por todo
pause
exit


