#!/bin/bash
echo -n "Desea saber su Ping (y/n)? "
read answer

# if echo "$answer" | grep -iq "^y" ;then

if [ "$answer" != "${answer#[Yy]}" ] ;then
    ping -c10 -i3 192.168.1.1
else
    clear
fi
