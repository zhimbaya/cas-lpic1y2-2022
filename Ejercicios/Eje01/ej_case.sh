#!/bin/bash

#comprobamos los argumentos y mostramos ayuda si no lo han hecho

if [ "$#" = "0" ] 
then
	echo -e "uso de $0:\n\t-help: esta ayuda\n\tinfo: información del sistema\n\tusuarios: número de usuarios\n"
	exit 1 # docuemnatremos que el código de retorno 1 es falta de argumentos
fi
# ya se nos ha facilitado un argumento por lo que pasamos a evaluarlo
case "$1" in
	"-help") echo -e "uso de $0:\n\t-help: esta ayuda\n\tinfo: información del sistema\n\tusuarios: número de usuarios\n";;
	"info") echo -e "Nombre del equipo es $(hostname)\n"
			sleep 2 #un corto delay
			echo -e "Kernel: $(uname -s)\n Release: $(uname -r)\nVersión: $(uname -v)\n"
			sleep 2
			echo -e "Tiempo de ejecución del equipo: $(uptime)\nNúmero de procesos $(ps -ef|wc -l)"
			sleep 2
			echo "Fin de la información"
			sleep 2
			clear
			;;
	"usuarios") # agrega el código para mostrar información de usuarios (por ejemplo el número, los nombres, etc)
		;;
esac
