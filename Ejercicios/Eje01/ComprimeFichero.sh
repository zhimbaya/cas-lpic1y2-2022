#!/bin/bash

#Versión 0.2 de Propuesta_script.sh

GZIP=$(which gzip)

# F U N C I O N E S=============================================================================
# con las funciones el código queda más claro y limpio.

#Creo la función que pide un directorio para todos los usuarios por si quieren cambiar la ruta
PedirDirectorio() {
	while true 
	do
		echo "escribe el directorio dentro de tu directorio HOME: $HOME [ruta relativa]"
		read dir
		if [[ -d $dir ]];then DIR=$HOME/$dir; break
		else
			echo "El directorio no existe ¿quiere crearlo? [S/n]"
			read  crear
			case $crear in 
				[nN]) ;;
				*) mkdir -p $HOME/$dir; DIR=$HOME/$dir; break;; 
			esac
		fi
	done
	unset dir crear
}

#Creo la función que pide un nombre de fichero por si el usuario quiere cambiarlo
CambiarNombre() {
	while true 
	do
		echo "escribe el nombre con el que se copiará el fichero"
		read file
		if ! [[ -e $DIR/$file ]];then NOMBREF=$file; break
		else
			echo "El fichero existe en el directorio de copia ¿quiere sobreescribirlo? [S/n]"
			read  crear
			case $crear in 
				#Comprobamos si es el error de copia sobre si mismo el cual es irresoluble. Si es
				#sobreescritura "normal" tiramos millas con lo que nos ha proporcionado el usuario.
				[sS]) if [[ $FILE =  $DIR/$file ]] 
					then 
						echo "error de copia sobre si mismo. ¿Desea el nombre ${file}.co [S/n]";
						read co
						case $co in
							[sS]) NOMBREF=${file}.co; break;;
							*) ;; #vuelve al bucle
						esac
						
					fi ;; 
										
				*) NOMBREF=$file;; 
			esac
		fi
	done
		unset file crear co

}

#===================================================================================================
#verificación del compresor

if [ -z "GZIP" ]
	then
		echo -e "No tenemos compresor.\n SALIMOS"
		exit 1
fi

#verificación del argumento, el nombre del fichero

if [ "$#" = "0" ]
	then
		echo -e "No tenemos argumento (fichero)\n SALIMOS"
		exit 2
fi

#verificamos la ruta absoluta del fichero ¿cómo lo plantearías para tomar cualquier ruta?
#¿usando comando find? ¿verificando la ruta relativa con ./? ....

if ! [ $(echo $1 | grep '^\/') ]
	then
		echo -e "No tenemos la ruta absoluta\n SALIMOS"
		exit 3
fi
#Inicializamos las variables extraídas del valor del argumento

FILE=$1
DIR=$(dirname $FILE)
file=$(basename $FILE)

#verificamos los permisos de lectura sobre el fichero para poder copiarlo

if ! [ -r "$FILE" ]
	then 
	echo -e "No tenemos permiso de lectura.\n SALIMOS"
	exit 4
fi
echo -e "Compresor y fichero correctos. PROCEDEMOS"
sleep 1

#hemos introducido una nueva funcionalidad que permite al usuario interactuar
# Puede cambiar el directorio de copia en su HOME y/o cambiar el nombre del fichero
# de paso nos sirve para verificar el error de copia sobre si mismo.

echo "¿quiere cambiar el directorio de copia? [s/N]?"
read contestacion
case $contestacion in
	[sS]) PedirDirectorio;;
	*) DIR=$HOME;;
esac
unset contestacion # descargo la variable y reutilizo el nombre en el siguiente read (vaguería)

echo "¿quiere cambiar el nombre del fichero copiado? [s/N]?"
read contestacion
case $contestacion in
	[sS]) CambiarNombre;;
	*) if [[ $FILE =  $DIR/$file ]]
		then 
			echo "Nombre duplicado"
			sleep 1
			CambiarNombre
		else
			NOMBREF=$file
		fi
		;;
esac

cp $FILE $DIR/$NOMBREF
# Seguimos comprobando si algo sale mal ... PRSK "porsiaca" ( Por si acaso)
if [ "$?" != "0" ]
	then
		echo -e "Algo salió mal. \n SALIMOS"
		exit 5
fi
echo -e "compresión. PROCEDEMOS"
sleep 1
${GZIP} $DIR/$NOMBREF
#gzip comprime el fichero y le cambia el nombre agregando la cadena .gz. Ese es su comportamiento default.
ls -l $DIR/$NOMBREF.gz
