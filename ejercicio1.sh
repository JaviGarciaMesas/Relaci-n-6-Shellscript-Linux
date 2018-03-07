#!/bin/bash 
directorio=`test -d $1 && echo true || echo false` 
entero=`echo $2 | grep -q "[0-9]\+" && echo true || echo false` 
if [ $# -eq 2 ] 
then 
	if [ $directorio == "true" ] && [ $entero == "true" ] 
	then 
		find $1 -size -$2 > archivosSizN.txt
		echo "El fichero archivosSizN.txt ha sido creado correctamente." 
	else 
		echo "ERROR: El directorio introducido no existe o el parámetro no es un entero." 
	fi 
else 
	echo "ERROR: Ha introducido un número incorrecto de parámetros." 
fi

