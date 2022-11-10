# LPIC 1 (110h) 22d 25/10/22-25/11/22
## DISEÑO DE ARQUITECTURA DEL SISTEMA (LPIC1-101)
1.	Determinación y configuración de los ajustes de hardware
2.	Boot del sistema
3.	Cambio de los niveles de ejecución, boot selectivo, apagar o reiniciar el sistema
## INSTALACIÓN DE LINUX Y GESTIÓN DE PAQUETES (LPIC1-101)
1.	Configuración del disco de almacenamiento
2.	Instalación de la gestión del boot
3.	Gestión de las bibliotecas compartidas
4.	Uso de la gestión de paquetes de Debian
5.	Uso de la gestión de paquetes RPM y YUM
6.	Virtualización con Linux
## EJECUCIÓN DE COMANDOS GNU E UNIX (LPIC1-101)
1.	Trabajo en la línea de comandos
2.	Procesamiento de flujos de texto mediante filtros
3.	Realización de la gestión básica de archivos
4.	Utilización de streams, pipes y redireccionamientos
5.	Creación, supervisión y eliminación de procesos
6.	Modificación de las prioridades de ejecución de los procesos
7.	Búsqueda de archivos de texto mediante expresiones regulares
8.	Edición básica de archivos
## ESPECIFICACIONES SOBRE DISPOSITIVOS, SISTEMAS DE ARCHIVOS LINUX, ESTÁNDAR DE JERARQUÍA DE SISTEMAS DE ARCHIVOS (LPIC1-101)
1.	Creación de particiones y sistemas de archivos
2.	Mantenimiento de la integridad de los sistemas de archivos
3.	Control del montaje y desmontaje de los sistemas de archivos
4.	Administración de los permisos y los propietarios de los archivos
5.	Creación y cambio de enlaces duros y simbólicos
6.	Localización de archivos de sistema y ubicación de archivos en el lugar correspondiente
7.	Identificación y manejo Shells y scripts (LPIC1-102)
8.	Personalización y uso del entorno de shell
9.	Personalización y uso de scripts sencillos
## INTERFACES DE USUARIO Y ESCRITORIOS (LPIC1-102)
1.	Instalación y configuración X11
2.	Escritorios gráficos
3.	Accesibilidad
## ESPECIFICACIONES SOBRE TAREAS ADMINISTRATIVAS (LPIC1-102)
1.	Administración de cuentas de usuario y de grupo y los archivos de sistema relacionados con ellas
2.	Automatización tareas administrativas del sistema mediante la programación de trabajos
3.	Localización e internacionalización
## IDENTIFICACIÓN DE LOS SERVICIOS ESENCIALES DEL SISTEMA (LPIC1-102)
1.	Mantenimiento hora del sistema
2.	Registros del sistema
3.	Conceptos básicos del Agente de Transferencia de Correo
4.	Gestión de la impresión y de las impresoras
## IDENTIFICACIÓN DE LOS FUNDAMENTOS DE REDES (LPIC1-102)
1.	Fundamentos de los protocolos de Internet
2.	Configuración de red persistente
3.	Resolución de problemas básicos de red
4.	Configuración DNS en el lado del cliente
## CONFIGURACIÓN Y ADMINISTRACIÓN SEGURIDAD (LPIC1-102)
1.	Tareas de administración de seguridad
2.	Configuración de la seguridad del sistema
3.	Protección de datos mediante cifrado

## 📅 LPIC 1
ricardo.instructor.formacion@gmail.com

## 📅 26/10/2022
- Teoria de sistema operativo
- scp origen destino (curso@10.1.1.151:/home/curso)
- /etc/ssh/sshd_config
- systemctl restart sshd


## 📅 27/10/2022
- Hardware compatible
- Distribución
- Ver instalación
- Instalación de ubuntu server 22.04


Nombre del bootloader	Descripción
Bootmgr	Gestor de arranque de Microsoft desde Windows Vista / Windows Server 2008
NT-Loader (NTLDR)	Gestor de arranque de Microsoft hasta Windows XP /Windows Server 2003
barebox	Bootloader para sistemas integrados en impresoras, cámaras, coches, aviones, etc.
boot.efi	Bootloader EFI utilizado desde 2006 en dispositivos Mac
BootX	Antiguo bootloader de sistemas operativos Mac
Grand Unified Bootloader (GRUB)	Bootloader libre para sistemas operativos unixoides como Linux
ARM Core Bootloader	Bootloader para microcontroladores (usado, por ejemplo, en iPhones)
OpenBIOS	Gestor de arranque libre y portátil con licencia GNU-GPL

- Instalar guest addition en debian
- Crear una carperta compartida en virtualbox
- lsblk (lista los directorios del sistema)
- mount origen /mnt (destino)
- apt install gcc make perl
- umount /mnt

## 📅 02/11/2022
- PAQUETES -
- rpm -qiln (redhat)
- dpkg (debian)
- gpg
- rpm2cpio 
- alien (app que convierte un tipo de paquete a otro)
- /var/lib/rpm - /var/lib/dpkg
- dpkg -l
- dpkg-reconfigure
- repositorios
- /etc/yum.repos.d/centos.repo
- /etc/apt/sources.list
- apt update
- apt install <paquete>
apt install –reinstall <paquete>
-apt upgrade
apt full-upgrade
apt remove <paquete>
apt purge <paquete>
apt autoremove
apt autoremove –purge
apt search <criterio>
apt show <paquete>
apt-get clean
apt-clean autoclean
- yum instal hwinfo
- cambiar las contraseñas
- sensores hardware
- yum | more
- yum search sensor
- yum install lm_sensors
- yum install dmidecode
- apt install lm_sensors
- sensor
- apt search sensors
- No es posible porque no tenemos hardware.
- No tiene el path
- main , contrib, mon-free
- apt update -y
- apt upgrade -y
- yum install yum-utils
- apt install aptitude
- aptitude (desarrollado con ncurses)
- aptitude install cowsay
- find / -name cowsay
- aptitude remove cowsay
- zypper 
- /etc/zypp/repos.d
- zypper search refresh
- zypper install hwinfo
- aptitude sysvbanner
- snap (funciona con contenedores)

## 📅 03/11/2022
- squashfs
- gdebi
- gcc (compilador de C) C++ (orienta a objetos), make (ficheros 'makefile' )
- ^- necesitamos código fuente.
- source code bash -> GNU Project (bash) -> github -> git
- Source Forge ()
- bash --version
- instalar wget (sino esta instalado)
- wget https://ftp.gnu.org/gnu/bash/bash-5.2.tar.gz
- descargar archivo
- gzip, bzip2 (instalar apps)
- DEBIAN Y ALMA -
- tar zxvf fichero (app para descomprimir) (no tiene guion)
- ./configure --help
- Programación secuencial.
- README
- ./configure -> makefile
- make
- ./bash --version
- make install
- bash --version
- make unistall
#include <stdio.h> (cabecera)
void main (void)
{
        printf("Hola mundo");
        return;
}

- gcc -o bash codigo.c ()
- ./bash
- librerias lib lib64
- ldd (ver de que librerias depende un comando)
- ldd /bin/bash
- ldd /bin/wall
- printenv
- ldconfig -> donde esta la cache (pregunta)
- SHELL -
- pwd
- usermod -a -G sudo
- cal 19
- ncal
- ;
- echo
- type cd
- alias echo="ls -l"
- 
## 📅 04/11/2022
- type cat
- type ls
- date +%s
- alias fecha="date +%s"
- unalias nombre_alias
- CTRL + z (segundo plano)
- jobs, fg %1
- history
- fc -l (los utlimos)
- rm -r *
- fc -s w (busca)
- .bash_history (historia de comando)
- .bash_logout (fichero para hacer cuando apaga)
- FCEDIT=nano (guarda el editor por defecto pero en memoria)
- GESTION DE ARCHIVOS -
- - (fichero regular)
- l (enlace simbolico)
- d (directorios) (organiza los ficheros)
- s (sockets)
- P (tuberias) (se comunican los procesos) (/var/run)
- c (archivos carácter) (sistemas de ficheros -> herramientas que reparan) 
- b (archivos en bloque) b -> /dev/sda
- SISTEMAS FICHEROS -
- bin
- boot 
- dev 
- etc (apt, configuración, ...)
- home (usuarios) 
- lib 
- lib64
- mnt 
- opt 
- proc
- usr (fuentes de unix)
- sbin
- sys (sistema hardware)
- tmp
- var (base de datos de repositorios, run (ejecutanto))
- &;()~ \/| ` ? - (no utilizar)
- cd . (misma ubicacion, ruta absoluta)
- cd ../ (ruta relativa)
- cd - (regresa)
- ls -ld (solo el directorio)
- ls -Z ()
- + al final (lista control acceso)
- . al final ()
- touch (cambia la fecha)
- mkfifo (crear ficheros)
- cp (copiar)
- cpio
- mv 
- rm -ri ruta
- alias rm="rm -i"
- \rm bash
- alias, interno, externo
- \ (salta el alias)
- ln -s archivo vínculo
- crear enlace de ksh con ln
- ls -F (* indicador con enlace simbolico)
- comodines 
- * ? [ {
- \
- " "
- ´ ´
- find (localizar informacion) 
- find / -name "ba*" 2>/dev/null
- 2>/dev/null
- type -f -l -d
- user
- find / -perm -2111 -exec stat {} \; 2>/dev/null
- whereis date
- which

## 📅 07/11/2022
- vi - :1,$s/BASH/bash/g
- tres modos
- hacer ejercicios
- 0 standar input
- 1 stdout
- 2 error standar
- hostname 1>fichero_salida_estandar.dos
- uname -ñ >fichero_salida_estandar 2>error_standar
- ls -l /proc/6551/fd (muestra las salidas)
- echo "usuario2" >> usuarios.txt
- tr "[a-z]" "[A-Z]" < /etc/hostname
- cat << EOF
- cat <<< "ljaljflkjsfl sdklfjlsjf"
- cat /etc/hostname | tr 'd' 'D' > fichero
- ls -l > archivo 2>&1 (&1 es archivo)
- wc < resultado > cuenta
- exec 3>&-
- descriptor
- basename
- dirname
- grep 
- cat datos01 | grep "^[21]" ( [] <- esto es un O) ($ termina)
- cat datos01.txt | grep -o "\S*"
- ip addr | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}\S*'
- ip addr | grep -Eo '([0-9a-f]{1,2}\:){3}[0-9a-f]{1,2}\S*' | grep -v '^00'
- sed -e 's/usuario/user/g' datos01.txt (-i modifica)
- sed -e '/^ *$/d' (quita lineas en blanco)
- cut -f1 -d ":"
- expand unexpand
- sort
- uniq
- join
- paste

## 📅 8/11/2022
- Condicionales
if condicion
then
comandos
fi
---
case valor
nº) comandos;;
esac
---
for variable in casos
do
comandos
done
---
while condición true
do
comandos
done
---
until condición false
do
comandos
done
---
- cut -d: -f4 /etc/passwd | sort -n | uniq 
- rev (del reves)
- paste fichero1 fichero2
- split -b 1k fichero parte
- echo 8.8.8.8 | xargs ping   
- fmt, pr
- tee 
- diff cmp
- pv (barra de estado)
- apt install pv ( [======================================================>] 100%)
- pv /boot/vmlinuz-5.10.0-19-amd64 | gzip > test.zip
- sha512sum
- kill -l
- ps -ef
- sleep 10000 &
- descriptores de ficheros
- jobs
- ctrl + z
- fg
- bg
- kill -9 15 20
- top
- apt install htop
- nice -10 sleep 8023840284028 &
- renice -5 -p 7740
- time fc -s pv /boot/vmlinuz-5.10.0-19-amd64 | gzip > test.zip
- echo $$
- alias
- ; (ejercutar diferentes comandos)
- shopt -u opción
- set -o
- &&
- ||
- env
- set (variable posicionales)
- PATH=$PATH:/usr/sbin
- for i in $(env); do echo "$i"; done
- bi() {pwd; env;}
- export
- set a b ; echo $1 ; echo ${12}
- cho ${v:=-?}
- PS1,PS2....
- IFS

## 📅 9/11/2022
- pkill
- echo $$ (pid de la shell) 
- echo $? (pid del proceso en segundo plano) 
- echo $! (pid del ultimo comando)
- echo $- (opciones de la shell)
- echo $# (ver variables posicionales)
- ver capitulos las variables???
- () simples paréntesis
- (()) dobles paréntesis
- echo $((3/2))
- bc (basic calculator)
- etc/profile (lo primero que lo procesa el bash y es comun a todos los usuarios)
- /.profile
- /.bash_profile
- /.bashrc
- echo $(id -u) (muestra el id del usuario)
- id = 0 (es el root)
- set
- test (evalua una condición)
- test -d /etc/hostname ; echo $?
- 1 (no)
- 0 (si)
- a (si existe) ,d (directorio) , x (ejecutable) , w (se puede escribir) , s (si esta vacio), n (si exite y no esta vacio)
- test = [ a esto ] y [[ no da error ]]
- gt (mayor q) , lt (menor que), ne (diferente), eq (igual)
- . (ejecuta en el mismo espacio del padre)
- shopt (comando interno para cambiar las opciones del shell)
- eval (permite una doble evaluación de la línea)
- Consola solo una, terminales varias clear_console
- set -o noclobber (proteger sobreescribura de un ficheor)
- + (descativa), - (activa)
- shopt (muestra las opciones de la shell)
- # (comentario)
- !# (shiban)
- apt install sudo -> (etc/sudoers)
- apt install figlet (crear imagenes en asiic)
- variables posicionales
- shift (reorganización de los parámetros)

## 📅 10/11/2022
- - , l , c , b , s , p , 
- test -d /mnt; echo $?
- [ -d /mnt ]; echo $?
- [[ , {{ , 
- set (ver funciones)
- set -o (opciones de la shell)
- set 1 (define una variable posicional)
- echo ${var[1]}
- echo ${var:-4}
- echo ${var:-} (sino exite le un valor )
- shift (descargando)
- env 
- if
- case
- read (capturas la var )
- seq
- while
- until
- 
