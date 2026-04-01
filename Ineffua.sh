#!/bin/bash

echo "Hola que tal me podrias decir tu nombre?"
read nombre

while true; do

echo "--------------------------------------------------"
echo   "¿Hola $nombre que tal estas?,que quieres hacer?"
echo   	"----> 1)Ver tu ram"
echo 	"----> 2)ver tu Ip"
echo	"----> 3)ver tus discos"
echo	"----> 4)ver la hora/mes/año"
echo	"----> 5)calculadora"
echo	"----> 6)cuentame un chiste(todavia en proceso)"
echo	"----> 7)apagar el ordenador(todavia en proceso"
echo	"----> 8) ???(todavia en proceso)"
echo "-------------------------------------------------"

sleep 1
read  numero

if [ $numero -lt 1 ]; then
	echo "El numero no es valido"
	break
fi
if [ $numero -gt 8 ]; then
	echo "El numero no es valido"
	break
fi

if [ $numero  -eq 1 ]; then
	free -h
fi

if [ $numero -eq 2 ]; then
	ip a | grep inet
fi

if [ $numero -eq 3 ]; then
	df -h | grep /dev/
fi

if [ $numero -eq 4 ]; then
echo "Aqui tienes la  fecha junto a la hora :D" 
date
fi

if [ $numero -eq 5 ]; then
echo "ahora te inicio la calculadora"
echo "hola $nombre que deseas hacer en inffacalculator3000?"
echo "1--Sumar"
echo "2--restar"
echo "3--multiplicar"
echo "4--Dividir"
echo "5-SALIR"
read OP

if [ $OP -eq 1 ]; then
        echo "Dime 2 numeros para sumar:"
        read num1
        read num2
        let resp=$num1+$num2
        echo "La suma de $num1 + $num2 = $resp"
fi
if [ $OP -eq 2 ]; then
        echo "Dime 2 numeros para restar:"
        read num3
        read num4
        let resp1=$num3-$num4
        echo "La resta de $num3 - $num4 = $resp1"
fi
if [ $OP -eq 3 ]; then
        echo "Dime 2 numeros para multiplicar:"
        read num5
        read num6
        let resp2=$num5*$num6
        echo "La multiplicacion de $num5 x $num6 = $resp2"
fi
if [ $OP -eq 4 ]; then
        echo "Dime 2 numeros para dividir:"
        read num7
        read num8
        let resp3=$num7/$num8
        echo "La suma de $num7 / $num8 = $resp3"
fi
if [ $OP -eq 5 ]; then
        exit 1
fi


fi
done
