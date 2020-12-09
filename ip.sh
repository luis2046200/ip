#!/bin/bash
#Pregunta si o no
echo -n "Desea saber su Ping (y/n)? "
read answer
clear
#Buscador del ip local
printf "Tu IP:"
hostname -I | cut -d' ' -f1 
# if echo "$answer" | grep -iq "^y" ;then

if [ "$answer" != "${answer#[Yy]}" ] ;then
echo -n "Ingrese la IP: "
read my_var
    ping -c10 -i3 $my_var
else
    clear
fi
