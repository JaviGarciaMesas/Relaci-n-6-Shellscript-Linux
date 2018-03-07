#!/bin/bash
if [ $# -eq 3 ] 
then 
	num_files=$2 
	if [ `echo $num_files|grep "^[1-9][0-9]\?$"` ] 
	then 
		dirname=$1 
		if [[ `test -d $dirname && echo 0 || echo 1` == 1 ]]
		then
			mkdir $dirname 
		fi 
		chmod u+rw $dirname 
		basefilename=$3 
		cd $dirname 
		for i in `seq 1 1 $num_files` 
		do 
			if [ $i -lt 10 ] 
			then 
				touch $basefilename"0"$i 
			else 
				touch $basefilename$i 
			fi 
		done 
		echo "El archivo se ha creado correctamente." 
	else 
		echo "El número debe estar entre 1 y 99." 
	fi 
else 
	echo "ERROR: Ha introducido un número incorrecto de parámetros." 
fi
