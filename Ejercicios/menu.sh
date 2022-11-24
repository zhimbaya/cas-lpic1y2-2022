#!/usr/bin/env bash
#Versión 0.2 del menu.sh
# Marcamos el comportamiento ante señales para recordar lo visto en 
# el apartado de procesos
trap ' echo " No intente ejecutar la señal de interrupción en este script"' 2
trap ' echo "Este script no puede llevarse a segun plano"' 20


#Declaramos fucniones con lo que vamos aprendiendo en los siguientes módulos
# listar los dispositivos de bloque
ListaDev() {
	#Vemos toda la estructura de ficheros y sistemas de ficheros con ols permisos sobre los ficheros
	lsblk -fm
	sleep 5
	
	#modificamos la variable IFS para que el separador sea SOLO el salto de  línea
	IFS=$'\n'
	
	# las variables posicionales son cada una de las líneas del listado de fdisk
	
	set $(fdisk -l)
	
	#Mostramos por pantalla 
	for i in $@ 
	do
		echo $i
		sleep 2
	done
	sleep 6
}

menu(){
	clear
	cat << FDF
	===================================================================
	===================================================================
						C O N T R O L    P A N E L  								
	===================================================================
	===================================================================
	%								  %
	%			O P C I O N E S		  %
	%								  %
	===================================================================
		[1] - Listar los dispostivos de almacenamiento en el equipo
		[2] - Copia de seguridad
		[3] - Info del sistema
		[4] - Salir
FDF

read op
clear
case $op in  

	1) #echo " Crear un usuario. Se completará en su momento"
		ListaDev;;
	2) echo "Copia de seguridad. Se completará en su momento";;
	3) echo -e "Información del sistema:\n $(uname -a)\n";;
	4) echo  "salimos";exit;;
esac
echo "Pulsa cualquier tecla para continuar"
read # no capturamos nada de nada es solo como una pausa
}
while true 
do
	menu
done
