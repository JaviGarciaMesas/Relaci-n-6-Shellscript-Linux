#!/bin/bash
destino="CopiasSeguridad" 
if [[ `test -d $destino && echo 0 || echo 1` == 1 ]] 
then 
	mkdir $destino 
fi
 
if [ $# -ge 1 ] 
then  
	suma=0 
	for i in $@ 
	do 
		if [ `test -e $i && echo 0 || echo 1` == 1 ] 
		then 
			suma=$[$suma + 1] 
		fi 
	done
	if [ $suma -eq 0 ] 
	then 
		tar -cvf "./$destino/copia`date +"%Y%m%d"`.tar" $@ gzip "./$destino/copia`date +"%Y%m%d"`.tar" 
	else 
		echo "Alguno de los parámetros introducidos no existe." 
	fi 
else 
	echo "Ha introducido un número de parámetros incorrectos." 
fi
