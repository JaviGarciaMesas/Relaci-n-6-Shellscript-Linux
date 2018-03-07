#!/bin/bash 
numero=0 
while [ $numero -lt 1 ] || [ $numero -gt 10 ]
do 
	echo "Introduzca un número del 1 al 10: " 
	read numero
done 

