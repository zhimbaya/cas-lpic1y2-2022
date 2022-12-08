menu(){
	cat << FDF
	===================================================================
	===================================================================
	==	T O O L 	F O R 		A L L 								===
	===================================================================
	===================================================================
	%								  %
	%			O P C I O N E S		  %
	%								  %
	===================================================================
		[1] - Crear usuario
		[2] - Copia de seguridad
		[3] - Info del sistema
		[4] - Salir
FDF

read op

case $op in  

	1) echo " Crear un usuario. Se completará en su momento";;
	2) echo "Copia de seguridad. Se completará en su momento";;
	3) echo -e "Información del sistema:\n $(uname -a)\n";;
	4) echo  "salimos";exit;;
esac
sleep 1
}
while true 
do
	menu
done
