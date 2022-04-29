@echo off 

:menu
echo "1 - Nombre del ordenador"
echo "2 - Nombre del usuario"
echo "3 - Fecha y hora"
echo "4 - Salir"
set/p opcio="Que opcion quieres"

if %opcio% == 1 goto nombreOrdenador
if %opcio% == 2 goto nombreUsuario
if %opcio% == 3 goto fechaHora
if %opcio% == 4 goto salir

:nombreOrdenador
echo %hostname%
goto menu
:nombreUsuario
echo %username%
goto menu
:fechaHora
echo %date% %time%
goto menu
:salir
exit


pause

