#!/bin/bash
GZIP=$(which gzip)
DIR=$HOME
if [ -z "GZIP" ]
	then
		echo -e "No tenemos compresor.\n SALIMOS"
		exit 1
fi
if [ "$#" = "0" ]
	then
		echo -e "No tenemos argumento (fichero)\n SALIMOS"
		exit 2
fi
if ! [ $(echo $1 | grep '^\/') ]
	then
		echo -e "No tenemos la ruta absoluta\n SALIMOS"
		exit 3
fi
FILE=$1
if ! [ -r "$FILE" ]
	then 
	echo -e "No tenemos permiso de lectura.\n SALIMOS"
	exit 4
fi
echo -e "Compresor y fichero correctos. PROCEDEMOS"
sleep 1

nombre_fichero=$(basename $FILE)
if [ -e $HOME/$nombre_fichero ]
then
	echo -e "PROBLEMA. El fichero existe! Quieres copiarlo en otro sitio? [s/N]"
	read respuesta1
	case $respuesta1 in
		[sS]) echo "Indicame la ruta HOME?"
			read direct
			![ -d $HOME/$direct] && mkdir -p $HOME/$direct && DIR=$HOME/$direct
				
;;
		*)  echo "Pues dame una salida por favor. ¿Quieres que le cambiesmos el nombre? [S/n]"
			read respuesta2
			case $respuesta2 in
				[nN]) echo "Pues ahora mismo, no"; exit 5;;
				*) nombre_fichero=$nombre_fichero.cp ;;
			esac
	esac
fi



#ruta=~/
#cp $FILE "$(ruta)$FILE-COPIA"
cp $FILE $DIR
if [ "$?" != "0" ]
then
	echo -e "Algo salió mañ. \n SALIMOS"
	exit 6
fi
echo -e "compresión. PROCEDEMOS"
sleep 1
${GZIP} ~/$(basename $FILE)
ls -l ~/$(basename $FILE).gz
