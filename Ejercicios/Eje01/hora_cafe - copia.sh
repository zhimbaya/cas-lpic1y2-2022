#!/bin/bash

if [[ "$#" = "0" ]]
then 
	echo -e "Uso $0: $0 argumento."
	exit 1
fi

if [ "$1" = "-h" ]
then
	echo -e "-h: muestra esta ayuda $0 argumento."
	exit
fi

hora=$1

if [[ $(echo ${hora} | grep -E '([0-9][0-9]:){2}[0-9]{2}') ]] 
then 
	echo "Formato de hora correcto: $hora" 
else 
	echo "Formato de hora incorrecto"
	exit 
fi

cafe=""
while [ "$cafe" != "$hora" ]
do
	date +%H:%M:%S >/dev/null
	cafe=$(date +%H:%M:%S)
	sleep 1
done

cat << EOF

ES LA HORA DE TOMAR EL CAFÉ
==========================
R E P E T I M O S
=========================== 
C A F É
==========================

EOF

exit


