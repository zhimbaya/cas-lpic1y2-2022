#!/bin/bash
# Creamos una entrada que me pida la hora del café en el formato indicado
# el formato es %H:%M:%S . Ejemplo 18:30:00
# Ese valor se pasa como argumento, se verifica que sea correcto y si no es así
# se cierra el programa

# En primer lugar se verifica que se pase un argumento. Si se pasan más serán despreciados

if [[ "$#" = "0" ]]
then 
	echo -e "Uso $0:\n\t $0 argumento. Argumento es formato hora (ej. 18:30:00)"
	exit 1 # referenciaremos en el manual que el retorno 1 es que "no se ha facilitado argumento"
fi
if [ "$1" = "-h" ]
then
	#Se muestra la ayuda del programa que puede ser una reiteración del condicional anterior
	echo -e "\t-h: muestra esta ayuda\n\t$0 argumento. Argumento es formato hora (ej. 18:30:00)"
	exit
fi
#capturamos el valor del argumento y comprobamos su valor como aprendimos con las expresiones regulares
#del comando grep. Era un rollo pero es muyyyyyyyy útil

hora=$1 # en adelante ya usaremos la variable hora en ves de la posicional ¿lo entendemos?

# el valor tiene que tener dos patrones de 0 a 9 y los dos puntos ¿recordamos el ejercicio de la dirección MAC?
# comprobamos si el comando da un valor de ejecución correcta o, si no lo es, devolverá un valor diferente de 0
# esto es, un error, un falso

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
	date +%H:%M:%S >/dev/null #la salida no nos interesa lo más mínimo. La ocultamos.
	cafe=$(date +%H:%M:%S) #definimos la variable cafe con el valor de cada segundo
	sleep 1
done
#Una vez que se ha cuumplido el bucle generamos un mensaje que nos muestra la 
#información de que es la hora del CAFÉ
cat << EOF

ES LA HORA DE TOMAR EL CAFÉ

==========================
R E P E T I M O S

=========================== 

C A F É

==========================

EOF

#Salimos de manera ordenada

exit


