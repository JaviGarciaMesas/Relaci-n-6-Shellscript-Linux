#!/bin/bash
printf "Pulse una tecla: \n" 
read tecla
case $tecla in 
	[º0-9\'¡]) echo "Ha pulsado una tecla de la primera fila." ;; 
	[qwertyuiop\`+]) echo "Ha pulsado una tecla de la segunda fila." ;; 
	[asdfghjklñ´ç]) echo "Ha pulsado una tecla de la tercera fila." ;;
	 [\<zxcvbnm,.-]) echo "Ha pulsado una tecla de la cuarta fila." ;; 
	*) echo "Ha pulsado una tecla de la otra línea del teclado." ;; 
esac

