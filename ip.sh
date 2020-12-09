#!/bin/bash
echo -n "Desea saber su Ping (y/n)? "
read answer

# if echo "$answer" | grep -iq "^y" ;then

if [ "$answer" != "${answer#[Yy]}" ] ;then
echo -n "Ingrese el ip: "
read my_var
    ping -c10 -i3 $my_var
else
    clear
fi
