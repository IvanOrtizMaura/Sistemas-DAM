@echo off

set /p nombre="Introduce tu nombre completo: "
if exist myname.txt echo %nombre%>>myname.txt 
if not exist myname.txt echo %nombre%>myname.txt	
pause