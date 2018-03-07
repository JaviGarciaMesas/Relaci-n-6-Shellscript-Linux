#!/bin/bash
directorio=`test -d $1 && echo true || echo false` 
if [ $# -eq 1 ] 
then 
	if [ $es_directorio == "true" ]
	then 
		for i in `ls $1` 
		do 
		archivo=`test -f $i | echo true || echo false`
		enlace=`test -h $i | echo true || echo false` 
		subdirectorio=`test -d $i | echo true || echo false` 
		if [ $enlace == "true" ] 
		then 
			echo "Enlace : $i" 

		elif [ $archivo == "true" ] 
		then 
			echo "Archivo regular : $i" 

		elif [ $subdirectorio == "true" ] 
		then 
			echo "Directorio : $i" 
		fi 	
		done 
else 
	echo "El directorio no existe"
fi 
else
	echo "Número incorrecto de parámetros"
fi

