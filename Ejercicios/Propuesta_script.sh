#!/bin/bash
GZIP=$(which gzip)
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
ruta=~/
cp $FILE "$(ruta)$FILE-COPIA"
if [ "$?" != "0" ]
	then
		echo -e "Algo salió mañ. \n SALIMOS"
		exit 5
fi
echo -e "compresión. PROCEDEMOS"
sleep 1
${GZIP} ~/$(basename $FILE)
ls -l ~/$(basename $FILE).gz
