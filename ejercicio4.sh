#!/bin/bash
printf "Elige un mes del 1 al 12: \n" 

if [ $# -eq 1 ]
then

case $1 in
	1) echo "Enero" ;;
	2) echo "Febrero" ;;
	3) echo "Marzo" ;; 
	4) echo "Abril" ;; 
	5) echo "Mayo" ;; 
	6) echo "Junio" ;; 
	7) echo "Julio" ;; 
	8) echo "Agosto" ;; 
	9) echo "Septiembre" ;; 
	10) echo "Octubre" ;; 
	11) echo "Noviembre" ;; 
	12) echo "Diciembre" ;; 
	“ene”) echo “Enero” ;;
	“feb”) echo “Febrero” ;;
	“mar”) echo “Marzo” ;;
	“abr”) echo “Abril” ;;
	“may”) echo “Mayo” ;;
	“jun”) echo “Junio” ;;
	“jul”) echo “Julio” ;;
	“ago”) echo “Agosto” ;;
	“sep”) echo “Septiembre” ;;
	“oct”) echo “Octubre” ;;
	“nov”) echo “Noviembre” ;;
	“dic”) echo “Diciembre” ;;
	*)echo "La opción introducida no es correcta." ;; 
esac

else
	echo "El parámetro introducido es incorrecto."
fi

