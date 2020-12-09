#!/bin/bash
#Pregunta si o no
echo -n "Desea saber su Ping (y/n)? "
read answer
clear
#Buscador del ip local
printf "Tu IP:"
ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p'
printf "Nombre de la terminal:"
hostname -s | cut -d' ' -f1
# if echo "$answer" | grep -iq "^y" ;then

if [ "$answer" != "${answer#[Yy]}" ] ;then
echo -n "Ingrese la IP: "
read my_var
    ping -c10 -i3 $my_var
else
    clear
fi
