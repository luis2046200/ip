#! / bin / bash
# Pregunta si o no
echo -n "¿ Desea saber su Ping (y / n)? "
leer respuesta
claro
# Buscador del ip local
printf  " Tu IP: "
nombre de host -i | cortar -d '  ' -f1
# if echo "$ respuesta" | grep -iq "^ y"; luego

if [ " $ respuesta "  ! =  " $ {respuesta # [Yy]} " ] ; entonces
echo -n " Ingrese la IP: "
leer my_var
    ping -c10 -i3 $ my_var
más
    claro
fi
