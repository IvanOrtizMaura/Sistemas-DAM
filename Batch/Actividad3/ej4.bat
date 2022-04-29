@echo off 

:menu
echo "0 = Negro"
echo "1 = Azul"
echo "2 = Verde"
echo "3 = Aguamerina"
echo "4 = Rojo"
echo "5 = Purpurina"
echo "6 = Amarillo"
echo "7 = Blanco"
echo "8 = Gris"
echo "9 = Azul claro"
echo "A = Verde claro"
echo "B = Aguamarina claro"
echo "C = Rojo claro"
echo "D = Púrpura claro"
echo "E = Amarillo claro"
echo "F = Blanco brillante"
set/p fondo="Que opcion quieres"
set/p texto="Que opcion quieres"
color %fondo%%texto%
pause