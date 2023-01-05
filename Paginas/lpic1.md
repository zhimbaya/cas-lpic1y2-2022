# LPIC 1 (110h) 22d 25/10/22-25/11/22

## DISEÑO DE ARQUITECTURA DEL SISTEMA (LPIC1-101)
1. Determinación y configuración de los ajustes de hardware
2. Boot del sistema
3. Cambio de los niveles de ejecución, boot selectivo, apagar o reiniciar el sistema

## INSTALACIÓN DE LINUX Y GESTIÓN DE PAQUETES (LPIC1-101)
4. Configuración del disco de almacenamiento
5. Instalación de la gestión del boot
6. Gestión de las bibliotecas compartidas
7. Uso de la gestión de paquetes de Debian
8. Uso de la gestión de paquetes RPM y YUM
9. Virtualización con Linux

## EJECUCIÓN DE COMANDOS GNU E UNIX (LPIC1-101)
10. Trabajo en la línea de comandos
11. Procesamiento de flujos de texto mediante filtros
12. Realización de la gestión básica de archivos
13. Utilización de streams, pipes y redireccionamientos
14. Creación, supervisión y eliminación de procesos
15. Modificación de las prioridades de ejecución de los procesos
16. Búsqueda de archivos de texto mediante expresiones regulares
17. Edición básica de archivos

## ESPECIFICACIONES SOBRE DISPOSITIVOS, SISTEMAS DE ARCHIVOS LINUX, ESTÁNDAR DE JERARQUÍA DE SISTEMAS DE ARCHIVOS (LPIC1-101)
18. Creación de particiones y sistemas de archivos
19. Mantenimiento de la integridad de los sistemas de archivos
20. Control del montaje y desmontaje de los sistemas de archivos
21. Administración de los permisos y los propietarios de los archivos
22. Creación y cambio de enlaces duros y simbólicos
23. Localización de archivos de sistema y ubicación de archivos en el lugar correspondiente
24. Identificación y manejo Shells y scripts (LPIC1-102)
25. Personalización y uso del entorno de shell
26. Personalización y uso de scripts sencillos

## INTERFACES DE USUARIO Y ESCRITORIOS (LPIC1-102)
27. Instalación y configuración X11
28. Escritorios gráficos
29. Accesibilidad

## ESPECIFICACIONES SOBRE TAREAS ADMINISTRATIVAS (LPIC1-102)
30. Administración de cuentas de usuario y de grupo y los archivos de sistema relacionados con ellas
31. Automatización tareas administrativas del sistema mediante la programación de trabajos
32. Localización e internacionalización

## IDENTIFICACIÓN DE LOS SERVICIOS ESENCIALES DEL SISTEMA (LPIC1-102)
33. Mantenimiento hora del sistema
34. Registros del sistema
35. Conceptos básicos del Agente de Transferencia de Correo
36. Gestión de la impresión y de las impresoras

## IDENTIFICACIÓN DE LOS FUNDAMENTOS DE REDES (LPIC1-102)
37. Fundamentos de los protocolos de Internet
38. Configuración de red persistente
39. Resolución de problemas básicos de red
40. Configuración DNS en el lado del cliente

## CONFIGURACIÓN Y ADMINISTRACIÓN SEGURIDAD (LPIC1-102)
41. Tareas de administración de seguridad
42. Configuración de la seguridad del sistema
43. Protección de datos mediante cifrado

## 📅 LPIC 1
ricardo.instructor.formacion@gmail.com

## 📅 26/10/2022
- Teoria de sistema operativo
- `scp origen destino` (curso@10.1.1.151:/home/curso)
- `/etc/ssh/sshd_config` (fichero de configuración de ssh)
- `systemctl restart sshd` (reiniciar el demonio)

## 📅 27/10/2022
- Hardware compatible
- Distribución
- Ver instalación
- Instalación de ubuntu server 22.04

| Nombre del bootloader           | Descripción                                                                       |
| ------------------------------- | --------------------------------------------------------------------------------- |
| Bootmgr                         | Gestor de arranque de Microsoft desde Windows Vista / Windows Server 2008         |
| NT-Loader (NTLDR)               | Gestor de arranque de Microsoft hasta Windows XP /Windows Server 2003             |
| barebox                         | Bootloader para sistemas integrados en impresoras, cámaras, coches, aviones, etc. |
| boot.efi                        | Bootloader EFI utilizado desde 2006 en dispositivos Mac                           |
| BootX                           | Antiguo bootloader de sistemas operativos Mac                                     |
| Grand Unified Bootloader (GRUB) | Bootloader libre para sistemas operativos unixoides como Linux                    |
| ARM Core Bootloader             | Bootloader para microcontroladores (usado, por ejemplo, en iPhones)               |
| OpenBIOS                        | Gestor de arranque libre y portátil con licencia GNU-GPL                          |

- Instalar guest addition en debian
- Crear una carperta compartida en virtualbox
- `lsblk -p` (lista los directorios del sistema)
- `mount origen destino` (monta el directorio en la ruta indicada)
- `apt install gcc make perl` (instalación de paquetes necesarios)
- `umount /mnt` (desmonta el directorio)

## 📅 02/11/2022
- __PAQUETES__
- `rpm` (gestor redhat)
- `rpm -ivh paquete.rpm` (instalar, verbose, marcas #)
- `rpm -qa`(consultar todos los paquetes)
- `rpm -qf ruta.archivo`(consultar a que paquete pertenece un fichero)
- `rpm -qi paquete` (información)
- `rpm -Uvh paquete`(actualizar)
- `rpm -e paquete` (desinstalar)
- `dpkg` (debian)
- `dpkg -i package.deb` (usado para instalar el paquete)
- `dpkg -l paquete` (listar)
- `dpkg -P paquete` (eliminar paquete)
- `dpkg -c paquete` (informar del paquete antes de instalar)
- `dpkg -s paquete` (ver si un paquete esta instalado o información)
- `dpkg --unpack paquete` (descomprimir)
- `dpkg -R --install paquetesdeb ` (instalar desde un directorio)
- `dpkg-reconfigure paquete`
- `apt install neofetch` (muestra la info del sistema)
- `apt install gpg` (paquete de cifrado, contraseña)
- `gpg -c archivo` (crear contraseña) `gpg -d archivo` (descifrar)
- `gpg --gen-key` `gpg -k` (ver claves)
- `rpm2cpio` (convierte un fichero rpm en un archivo cpio) `cpio -t`
- `apt install alien` (app que convierte un tipo de paquete .rpm a otro .deb)
- `/var/lib/rpm - /var/lib/dpkg` (rutas de los diferentes paquetes)
- __Repositorios__
- main , contrib, mon-free
- `/etc/yum.repos.d/centos.repo` (fichero de repositorios de centos)
- `/etc/apt/sources.list` (fichero de repositorios de debian)
- `apt update && apt upgrade` (actualización y upgrdate)
- `apt install paquete`
- `apt install --reinstall paquete`
- `apt full-upgrade`
- `apt remove paquete`
- `apt purge paquete`
- `apt autoremove`
- `apt autoremove purge`
- `apt search paquete`
- `apt show paquete`
- `apt clean`
- `apt autoclean`
- __Alma__
- `dnf install hwinfo` (información del hw del sistema)
- `hwinfo --short` (información corta)
- dnf | more
- `dnf search sensor` (sensor de movimiento)
- `dnf install lm_sensors`
- `dnf install dmidecode`
- `dnf install yum-utils`
- `apt search sensors` (No es posible porque no tenemos hardware) No tiene el path
- `apt install aptitude` (otro gestor de paquete mas lento familia debian)
- aptitude (desarrollado con ncurses)
- `aptitude install cowsay` (la vaca que habla)
- `find / -name cowsay`
- `aptitude remove cowsay`
- `aptitude sysvbanner`
- zypper (gestor de paquetes de alma centos)
- `/etc/zypp/repos.d` (archivo de repositorios de alma)
- `zypper search refresh`
- `zypper install hwinfo`
- `snap` (funciona con contenedores)

## 📅 03/11/2022
- squashfs (sistema de ficheros root de solo lectura, crea archivos de copia de seguridad de solo lectura altamente comprimidos de sistemas completos.)
- [Copia de seguridad](https://killer-os-oficial.github.io/wiki/backup/squashfs/#reducir-una-partici%C3%B3n-con-mksquashfs)
- `apt install squashfs-tools`
- `mkfs.ext4 -L "root" -U "$(blkid -o value -s UUID /dev/sda5)" /dev/sda5`
- gdebi (gestor de paquetes gráfico)
- gcc (compilador de C), make (ficheros 'makefile' ) necesitamos código fuente.
- C++ (orienta a objetos)
- source code bash -> GNU Project (bash) -> github -> git
- Source Forge ()
- `bash --version` (versión de la bash)
- `dnf install wget` (instalar wget, sino esta instalado)
- `wget https://ftp.gnu.org/gnu/bash/bash-5.2.tar.gz` (descargar archivo)
- __DEBIAN Y ALMA__
- `dnf install gzip bzip2` (instalar apps)
- `tar zxvf fichero` (app para descomprimir) (no tiene guion)
```
tar función  [modificador...]  [fichero...]
-c	Crear un archivo
-r	Añadir a un archivo
-x	Extraer de un archivo
-t	Listar los miembros de un archivo
-u	Actualizar los miembros de un archivo si no existen o son más recientes  
--delete	Eliminar miembros de un archivo
-
-v	Muestra información sobre la evolución del trabajo que está haciendo la orden tar.
-f archivo	Indica cual va a ser el fichero que hará de archivo. Se le suele poner la extensión .tar.
-f -	Hace que el archivo sea la entrada estándar o la salida estándar según la función con la que se trabaje.
-z	Comprime a la vez que archiva. Usa gzip. A un archivo comprimido se le suele poner la extensión .tar.gz o tgz.
-j	Comprime con bzip2.
--totals	Muestra el total de bytes de los miembros con los que ha trabajado.
-C directorio	Especifica el directorio donde extraer los miembros. Por defecto es el directorio de trabajo.
-P	No quita la / del inicio de los nombres de los ficheros, por lo que guarda las rutas absolutas cuando estas se especifican así
```
- ./configure --help
- __Programación secuencial__
- README
- ./configure -> makefile
- make
- ./bash --version
- make install
- `bash --version`
- make unistall
```
#include <stdio.h> (cabecera)
  void main (void)
  { 
        printf("Hola mundo");
        return;
  }
 ```

- `gcc -o file file.c` (compilar el script)
- `./file` (ejecutar el script)
- librerias lib lib64
- `ldd` (ver de que librerias depende un comando)
- `ldd -v test` (más info)
- `ldd /bin/bash` 
- `ldd /bin/wall`
- `printenv` (imprime variables)
- `ldconfig -p | more` (imprime la librerias actuales)
- `pwd` (print working directory)
- [Usermod](https://www.zeppelinux.es/el-comando-usermod-modificar-usuarios-en-linux/)
- `usermod -G sudo usuario` (cambia y borra , grupo secundario)
- `usermod -a -G sudo usuario` (añade , grupo secundario)
- `usermod -g sudo usuario` (cambia , grupo primario)
- `groupadd filemon` (crear un grupo nuevo)
- `usermod -l filemon -g filemon -d /home/filemon -m mortadelo`
- `groupdel mortadelo`
- `cal 19` (calendario)
- `ncal` (calendario)
- ` ; ` (separador de cmd)
- `echo hola; cal 2022`
- `type cd` (tipo de comando interno o ejecutable)
- `alias echo="ls -l"` (se crea alias)
- `alias` (listar los alias)

## 📅 04/11/2022
- `type cat`
- `type ls`
- `date +%s` (fecha en segundo desde 1970)
- `alias fecha="date +%s" ` (se crea un alias)
- `unalias nombre_alias` (elimina el alias)
- `CTRL + z` (segundo plano)
- `jobs` (mirar los procesos que se ejecutan)
- `fg %1` (recupero el proc)
- `history` (historial de la terminal)
- `!12` (ejecutar el comando 12)
- `history -c`(limpia el historial)
- `fc -l` (los últimos comandos de history)
- `fc -s w` (busca)
- `.bash_history` (historia de comando)
- `.bash_logout` (fichero para hacer cuando apaga)
- `FCEDIT=nano` (guarda el editor por defecto pero en memoria)
- __GESTION DE ARCHIVOS__
- (-) (fichero regular), l (enlace simbólico), d (directorios) (organiza los ficheros)
- s (sockets), P (tuberias) (se comunican los procesos) (/var/run)
- c (archivos carácter) (sistemas de ficheros -> herramientas que reparan), b (archivos en bloque) -> /dev/sda
- __SISTEMAS FICHEROS__
- bin (ejecutables)
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
- & ; ( ) ~ \ / | ? - (no utilizar)
- `cd .` (misma ubicacion, ruta absoluta)
- `cd ../` (ruta relativa)
- `cd -` (regresa)
- `ls -ld` (lista solo directorios)
- `ls -Z` (imprime seguridad del fichero)
- + (si aparece al final, lista control acceso)
- punto . (al final )
- `touch fichero` (cambia la fecha)
- `mkfifo nombre` (crear ficheros tuberias ejemplo con bc)
- `cp -aipr origen destino` (misma configuración, copiar pide permiso, hereda, recursivo)
- `cp -ls origen destino` (crea un enlace duro, enlace simbolico)
- `cp -vu` (mensaje al terminar, copia si es mas antiguo)
- `cpio -i -o` (copia de entrada y salida de varias directorios)
- `find /var/log/apache2/ | cpio -o > /tmp/apache2.cpio` (Empaquetar los archivos)
- `find /etc/apache2/ | cpio -o > /tmp/apache2.cpio`
- `cpio -tv < /tmp/apache2.cpio` (Ver el contenido de un archivo empaquetado)
- `cpio -vid < /tmp/apache2conf.cpio` (desempaquetar)
- `cpio -ov -H tar > archive` (crear .tar)
- `cpio -iv -F < archive` (descomprimir .tar)
- `mv fichero ruta` (mover)
- `rm -ri ruta` (elimina recursiva, permiso)
- `rm -r *` (borrar recursivamente todo)
- `alias rm="rm -i"` (crear alias)
- alias, interno, externo (orden de búsqueda)
- \ (backslash)
- ` \ ` (salta el alias) `\rm fichero`
- `ln -s archivo` (enlace simbólico)
- `ls -F` (@ indicador con enlace simbolico, lista)
- `* ? [ { ` (comodines)
- " " ' ' (comillas simples y dobles)
- `find -name -type -size -user -perm` (localizar informacion, ficheros , archivos) 
- `find / -name "ba*" 2>/dev/null`
- `find / -perm -2111 -exec stat {} \; 2>/dev/null` (exec placeholder, delimitador)
- `type -a comando` (muestra ruta de los ejecutables)
- `type -t comando` (muestra si es una función, alias, ejecutable, archiv)
- `whereis date` (muestra ruta de los ejecutables)
- `which -a comando` (muestra ruta de los ejecutables)
- [Más información find](https://www.ionos.es/digitalguide/servidores/configuracion/comando-linux-find/?ac=OM.WE.WEo42K356300T7073a&itc=L0Q5C23R-FAC1E9-&utm_source=google&utm_medium=cpc&utm_campaign=SGE-ES-MYW-MIXX---PERFORMANCE_MAX---&utm_term=&matchtype=&utm_content=&gclid=Cj0KCQiAj4ecBhD3ARIsAM4Q_jFZ78sbaIRbbjBTHUuSR_4KBaNMCQpPGqpA1mJXwizusbsx4JwKkfYaAuAOEALw_wcB&gclsrc=aw.ds)

## 📅 07/11/2022
- vi - :1,$s/BASH/bash/g (sustituye) (tres modos)
- hacer ejercicios
- 0 standar input, 1 stdout, 2 error standar
- `hostname 1>fichero_salida_estandar`
- `uname -a >fichero_salida_estandar 2>error_standar`
- `ls -l /proc/6551/fd` (muestra las salidas)
- `echo "usuario2" >> usuarios.txt` (añade)
- `tr "[a-z]" "[A-Z]" < /etc/hostname` (sustituye, a mayúsculas)
- `cat << EOF` (termina hasta que encuentra un EOF)
- `cat <<< "ljaljflkjsfl sdklfjlsjf" `
- `cat /etc/hostname | tr 'd' 'D' > fichero`
- `ls -l > archivo 2>&1` (&1 es archivo)
- `wc -cmlw < resultado > cuenta`
- `exec 3>&- `
- descriptor (0 1 2)
- `basename` (elimina  la  parte  de  directorios y sufijos de los nombres de archivos)
- `dirname` (muestra la ruta de un archivo)
- `grep` (filtro)
- `cat datos01 | grep "^[21]" ` ( [] <- esto es un O) ($ termina)
- `cat datos01.txt | grep -o "\S*" `
- `ip addr | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}\S*' `
- `ip addr | grep -Eo '([0-9a-f]{1,2}\:){3}[0-9a-f]{1,2}\S*' | grep -v '^00' `
- `sed -e 's/usuario/user/g' datos01.txt` (-i modifica) (busca y sustituye)
- `sed -e '/^ *$/d' fichero` (quita lineas en blanco)
- `cut -f 1 -d : /etc/passwd` (muestra la fila 1)
- `expand | unexpand -t 4 fichero` (convierte las tabulaciones en espacios)
- `sort archivo` (ordena)
- `uniq archivo` (elimina repetidos)
- `join file1 file2` (une las filas coincidentes)
- `paste file1 file2` (pega las filas de los archivos)

## 📅 8/11/2022
- __Condicionales__
```
if condicion; then comandos fi
case valor nº) comandos;; *) ;; esac
for variable in casos do comandos done
while condición true do comandos done
until condición false do comandos done
```
- `cut -d: -f4 /etc/passwd | sort -n | uniq`
- `rev archivo` (del reves)
- `split -d -b 1k fichero log_` (divide el archivo numerado, en bloques de 1k) ( -n , número de partes)
- `echo 8.8.8.8 | xargs ping`   
- `fmt -w 5 fichero` (Modificación y control de visualización de caracteres por anchura)
- `pr archivo` (preparar un archivo para imprimir)
- `du -h | tee -a disk_usage.txt` (tee, crea un archivo y escribe)
- `diff file1 file2` (muestra las diferencias)
- `cmp file1 file2` (compara y devuelve un true o false)
- pv (barra de progreso)
- `pv -p /etc/hosts | wc` ( [=============barra de progreso===========>] 100%)
- `pv /boot/vmlinuz-5.10.0-19-amd64 | gzip > test.zip`
- `sha512sum`
- `kill -l` (lista las señales del sistema)
- `kill -9 15 20` (mata los procesos)
- `ps -ef` (lista todos procesos del sistema)
- `sleep 10000 &` (sleep en segundo plano)
- descriptores de ficheros (stdin, stdout, stderr)
- `jobs` (procesos en segundo plano)
- `ctrl + z`(se envia el proceso a segundo plano)
- `fg %1` (se recupera el proceso de segundo plano)
- `bg %1` (se envia el proceso a segundo plano)
- `top` (muestra los procesos)
- `apt install htop` (herramienta parecida a top)
- `nice -10 sleep 8023840284028 &` (-19 0 +20) urgencia o prioridad de un comando
- `renice -5 -p 7740` (cambia la prioriodad)
- `time fc -s pv /boot/vmlinuz-5.10.0-19-amd64 | gzip > test.zip` (mide el tiempo)
- `echo $$` (muestra el pid)
- `alias` (comando alias o atajos)
- ` ; ` (ejercutar diferentes comandos)
- `shopt -u opción` (muestra opciones de la shell)
- `set -o option` (cambia + - las opciones de la shell heredada)
- && , || (and , or)
- `env` (muestra las variables de entorno)
- `set` (variable posicionales)
- PATH=$PATH:/usr/sbin
 -`for i in $(env); do echo "$i"; done`
- `bi() {pwd; env;} `
- `export`
- `set a b ; echo $1 ; echo ${12} `
- `cho ${v:=-?} `
- `PS1,PS2....`
- `IFS`

## 📅 9/11/2022
- [Fedora online](https://bellard.org/jslinux/vm.html?cpu=riscv64&url=fedora33-riscv.cfg&mem=256)
- `kill` (pid)
- `pkill` (nombre)
- `echo $$` (pid de la shell)
- `echo $?` (pid del proceso en segundo plano) 
- `echo $!` (pid del último comando)
- `echo $-` (opciones de la shell)
- `echo $#` (ver variables posicionales)
- ver capítulos las variables???
- () simples paréntesis
- (( )) dobles paréntesis
- `echo $((3/2))`
- `bc` (basic calculator)
- `vi /etc/profile` (lo primero que procesa el bash y es común a todos los usuarios)
- `/.profile`
- `/.bash_profile`
- `/.bashrc`
- `echo $(id -u)` (muestra el id del usuario)
- id = 0 (es el root)
- `set`
- test (evalua una condición)
- `test -d /etc/hostname ; echo $?`
- 1 (no) , 0 (si)
- a (si existe) ,d (directorio) , x (ejecutable) , w (se puede escribir) , s (si esta vacio), n (si exite y no esta vacio)
- test = [ a esto ] y [[ no da error ]]
- gt (mayor q) , lt (menor que), ne (diferente), eq (igual)
- . (ejecuta en el mismo espacio del padre)
- `shopt` (comando interno para cambiar las opciones del shell)
- `eval` (permite una doble evaluación de la línea)
- Consola solo una, terminales varias clear_console
- `set -o noclobber` (proteger sobreescritura de un fichero)
- + (descativa), - (activa)
- # (comentario)
- #! (shiban)
- `apt install sudo` (etc/sudoers)
- `apt install figlet` (crear imagenes en asiic)
- variables posicionales
- `shift` (reorganización de los parámetros)

## 📅 10/11/2022
- - , l , c , b , s , p , 
- `test -d /mnt; echo $?` , `[ -d /mnt ]; echo $? `
- `[[ , {{ , `
- `set` (ver variables, funciones)
- `set -o` (opciones de la shell)
- `set 1` (define una variable posicional)
- `echo ${var[1]} `
- `echo ${var:-4} ` (si la var no esta definida o nula es 4)
- `echo ${var:-} ` (sino existe lee un valor)
- `echo ${STRING:6:5}` (muestra de la posición 6 al 5)
- `echo ${STRING%name}`
- `echo ${STRING/name/string} ` (reemplazo)
- `echo ${ARRAY[*]##t*}` (elimina lo que empiece por t)
- `shift` (descargando)
- `env`
- if, case, seq, while, until
- `read -p " texto " dato ` (capturas la variable)
- `echo $dato`
- [Curso Bash](https://www.ediciones-eni.com/open/mediabook.aspx?idR=991ee13f3e75e249d95404d083f27360)

## 📅 11/11/2022
- bc -l <<< "89%5" (calculadora)
- `eval` 
- trap comandos señales
- `kill -l`
- multiplexores
- `apt install screen` (ctrl + a y c)
- ctrl + a y c (nueva ventana)
- ctrl + a y S (divide horizontal)
- ctrl + a y | (divide vertical)
- ctrl + a y tab (cambia de ventana)
- ctrl + a y x (mata panel)
- ctrl + a y d (cierra)
- `apt install tmux` (mejor)
- ctrl + b y c (crea una ventana)
- ctrl + b y w (muestra todas las ventanas) 
- ctrl + b y < (menu)
- ctrl + b y x (mata panel)
- ctrl + b y > (menu paneles)t
- ctrl + b y q y 0..9
- ctrl + b y fecla (pasas de un panel a otro)
- ctrl + b (sin soltar ) y fecla (redimensionar)
- ctrl + b y d (salir del todo)
- tmux attach
- `basename`
- `dirname`

## 📅 14/11/2022
- Discos IDE - PATA
- Discos Sata
- S.M.A.R.T
- RAID
- SCSI, SATA, USB, FIREWIRE 
- NVME -> /dev/nvme
- Sistema de archivos (tienen metadatos)
- Nombres de ficheros -> inodos
- ext2, ext3 Journal (registro de transacciones), ext4 
- BTRFS, XFS, XFAT, FUSE
- `lsblk -fm` (lista información de todos los discos)
- `su -` (como root y el home del root)
- `apt install hdparm && apt install sdparm && apt install nvme-cli`
- BIOS -> CMOS -> POST -> BOOT -> MBR -> 64B TABLA DE PARTICIONES
- MBR -> 4PPrimarias -> 3PP Y 1PExtentida (particiones lógicas)
- GPT -> 128 Particiones 
- `apt -qq list nano` (ver si esta instalado)
- `apt-cache policy nano` (información del paquete)
- `fdisk -l` (lista los discos)
- `fdisk /dev/sdc` 
    -n (nuevo)
    -g (una forma de borrar todas las particiones)
    -w (escribir)
    -p (imprime)
    -m (ayuda)
- `dd if=Descargas/mini.iso of=/dev/sdb` (clonar o copiar ficheros o discos)
- `bc` (calculadora)
- `apt install gdisk` (otra herramienta de particionado)
- `gdisk /dev/sdc` (comando para particionar)
- 1) ADD DIKS 2) PARTICIONAR 3) FORMATEAR 4) MONTAR
- `apt install ntfs-3g` (plugin para poder particionar en ntfs)
- `df –hT` (espacio total, ocupado y libre en nuestro sistema) (-i inodos)

## 📅 15/11/2022

- `efibootmgr` (comando para ver la tabla de particiones)
- `/boot/efi/EFI/debian` (ruta donde se guarda información de la tabla de particiones)
- `apt install hexedit` (ver ficheros en binario)
- `sfdisk -l` (lista las particiones)
- `cfdisk /dev/sdb` (modo interactivo)
- `sfdisk /dev/sdc < archivo` (copia el mismo particionado que contiene el archivo en el nuevo disco)
- `sfdisk --delete /dev/sdc` (elimino la tabla de particiones)
- `dumpe2fs -h /dev/sda1` (muestra información de sistemas de ficheros ext2/3/4)
- `e2label /dev/sdd1 nueva_etiqueta` (cambia la etiqueta de un sistema ext2/3/4)
- `stat fichero` (información del fichero)
- `find / -inum 217` (encontrar el fichero por el inodo)
- `ls -li` (ver inodo y enlaces del fichero)
- `mkfs [-V] [-t filesystem] dispositivo`
- `mkfs.ext2 /dev/sda1` (ext2,3,4,vfat,msdos)
- `mount disco ruta` (montar el disco)
- `mount -o ro,noexec,relatime /dev/sdb1` (opciones)
- `umount ruta` (desmonta)
- `debugfs` -> ls
- `apt install translate` (traductor)
- `apt-get install dict-freedict-eng-spa`
- `dict -D palabra`
- `tune2fs -j /dev/sdc1` (particiona a ext3)
- `tune2fs -O extents /dev/sdc1` (particiona a ext4)
- `fsck /dev/sdb1` - check and repair a Linux filesystem
- `/etc/fstab` (fichero que muestra los puntos de montaje)
- `e2label /dev/sdc1 disco_3_part_1`
- `blkid` (muestra el UUID)

## 📅 16/11/2022

- ver gparte en modo gráfico
- `/proc/partitions` (muestra las particiones)
- `df -Th` (muestra las particiones y sus tipos)
- `du -hk`(muestra )
- `fsck -fV /dev/sdb1` (repara)
- `badblocks -V /dev/sdb1`
- `dumpe2fs /dev/sda2`
- `debugfs -R 'ls -l' /dev/sda1 | tee`
- `apt install xfsprogs`
- `xfs_*` (varios comandos)
- `mkswap /dev/sdb1`(montar la partition swap)
- `free -h` (cantidad de memoria swap)
- `swapoff -a` (desactivar la swap)
- `swapon -a` (activar la swap)
- `swapon  --show` (muestra información de la partición de swap)
- `fallocate -l 4G /ruta` (crea un fichero de 4G)
- `cat /proc/sys/vm/swappiness` (ver el nivel de swappiness)
- __Cuotas en disco__
- `apt install quota`
- `mount | grep part3`
- `quotacheck ruta` (chequeo la quota)
- `quotaon ruta` (activo la quota)
- `quota` (muestra la quota del disco)
- `edquota`
- `repquota -a`
- [Cuotas de disco](https://www.linuxtotal.com.mx/index.php?cont=info_admon_018)
- Permisos y usuarios
- `useradd -m nombre`
- `stat`
- `umask` (quita el valor predefenido)
- `chmod`
- `chgrp`
- `chown usuario:grupo fichero`
- __Permisos de acceso extendido__
- `ldconfig -v` (ver todas las bibliotecas)
- `ldd` (ver bibliotecas compartidas)
- `find / -perm -2000`
- `chmod u+s fichero`
- `chmod 1777 fichero - t`
- `chmod 2644 fichero - s`

## 📅 17/11/2022

- Inicio de Linux
- BIOS - MBR
- UEFI - GPT
- GRUB 1 Y 2 (cargador universal)
- `/boot/grub/grub.cfg`
- `/etc/default/grub` (grup)
- `/etc/grub.d` (ficheros de configuración)
- `cat README`
- `update-grub`
- `/boot` (se encuentran los ficheros, de arranque y modulos)
- initrd.img-* (modulos)
- `lsmod` (lista todos los módulos)
- 1) boot -> hardware bios/UEFI -> cargador GRUB -> cargar en memoria el Kernel (operaciones básicas) -> carga módulos -> Inicia
- vmlinz-* (kernel)
- shimx64.efi (arranque del grub firmado)
- /sbin/grub-install /dev/sda (donde se instala el grub en una instalación)
- `/etc/init.d` (arrancar los programas)
- inittab (definie niveles)(SYSV - BSD)
- `who -r` (ver el nivel de ejecución)
- `/etc/inittab` (fichero de configuración)
- `/etc/init.d/rc` 
- `/etc/rc` (varios archivos de los niveles de ejecución)
- `/etc/init.d/ssh start|stop|reload` (iniciar parar un demonio)
- `telinit 5` (cambiar el nivel de ejecución)
- `runlevel`  (ver en que nivel estoy y estuve)`ç
- `ip link set dev eth0 up` (levantar eth0)
- `service sshd stop` (levantar, parar el demonio)
- `/usr/lib/system` (archivos ya estan compilados)

## 📅 18/11/2022

- systemctl contiene targets llamada a otros archivos
- `systemctl list-units --type=service --all`
- `systemctl list-units`
- `systemctl list-units --type=target`
- `systemctl get-default` == runlevel
- `/etc/systemd/system` (archivos de system)
- `/lib/systemd`
- `systemd-cgls` (ver árbol)
- `systemctl get-default`
- `systemctl set-default multi-user.target`
- `systemctl isolate poweroff.target`
- `apt install telned`
- `systemctl status inetd` (estado del servicio)
- `systemctl start|stop|reload inetd`
- `systemctl enable|desenable inetd` (habilita o deshabilita el demonio al iniciar el server)
- `systemctl list-dependencies` (ver los servicios)
- `apt purge telnetd`
- `logger -p emerg hola`
- `os-prober` (ve los sitemas operativos que tiene)
- `dmesg == journalctl`
- `/var/log` (logs)
- __Nucleo__
- [Web Kernel Linux](https://www.kernel.org/)
- `xz -d linux-5.15.79.tar.xz` (descomprime)
- `tar -xvf linux-5.15.79.tar`
- `apt install gcc make bison openssl dkms`
- `apt install libncurses-dev libssl-dev libelf-dev libudev-dev libpci-dev libiberty-dev autoconf`
- `yum install kernel-devel`
- `cp /boot/config-5.14.0-162.6.1.el9_1.x86_64 ./.config`
- `make oldconfig`
- `apt install flex`
- `make menuconfig`
- `apt install bc` (calculadora)
- `make`

## 📅 21/11/2022

- `lsmod` (lista los módulos)
- `insmod` (instala los móduos)
- `rmmod` (desinstala los módulos)
- cat /pro (modulos) (pseudo sitemas de ficheros)
- `modprobe` (carga los módulos con las dependencias)
  -__INSTALAR EL KERNEL - FACIL__
- `deb http://deb.debian.org/debian bullseye-backports main contrib non-free`
- `deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free`
- `/etc/apt/source.list.d/agregarFichero.list`
- `apt update && apt upgrade`
- `apt -t bullseye-backports upgrade` (agrega el repositorio)
- initrd , initramfs
- `cpio` (copias de seguridad)
- binwalk (proceso de seguimiento de cualquier ejecutable)
- `sysctl -a` (consulta las opciones de configuración del núcleo)
- `/etc/sysctl.d/` (fichero de configuración)
- `sysctl -n net.ipv4.ip_forward=1` (lo hace permanente)
- Archivos de perifericos
- c , b se crea en un pseudo sistemas de ficheros en /dev
- `mknod` (fichero de dispositivo)
- `lspci` (extrae información del /proc)
- `lsof` (lista la fichero abiertos)
- `apt install hwinfo` (herramienta de info de hardware)
- hwinfo = dmidecode
- `/dev/disk`
- __TAREAS ADMINISTRATIVAS__
- `locale` (variables del sistema la configuración del sistema)
- `id` (cmd info)
- `/etc/passwd` (256 carac, pass, uid, gid, descripción, path, shell)
- `/etc/shadow` (login, pass, numero de dias desde 1/1/1970,dias para cambiar la contraseña, desactiva la cuenta, dias de aviso)
- $1$: md5 , $2a$: blowfish, $5: SHA-256 , $6: SHA-512, Otro: DES
- `/etc/group`  (grupos secundario) (nombre grupo, contraseña, id del grupo, usuarios del grupo secundario)
- `usermod -a -G maquina curso` (agrega al grupo secundario)
- `/etc/gshadow` (contraseñas de grupo)
- `/etc/skel` (Plantilla por defecto que como se creará la configuración del home del usuario)
- `useradd -D` (información de la cuenta del usuario)
- `/etc/login.defs` (fichero de configuración de loggin)
- `useradd -m -s /bin/ksh -g maquina -G user1 -c "Cuentafake" tester`
- `/etc/default` (opciones por defecto)
- `/etc/default/useradd` (cambiar opciones por defecto del usuario
- `ch` (comandos ch que cambian algo)
- `chfn` (cambia la información del usuario)
- `newgrp` (cambia el grupo a grupo principal si esta incluido sino no)
- `gpasswd` (cambiar la contraseña del grupo)
- Existe contraseña para el grupo secundario cuando un usuario que no pertence al grupo quiere pertenecer al grupo.

## 📅 22/11/2022

- `useradd -D -s /bin/bash` (cambiamos la shell)
- `adduser` (interactivo)
- `pwck` (comprobar la integridad de la base de datos)
- `pwunconv` (solo deja UNA base de datos de passwd y shadow)
- `pwconv` (devuelve el shadow o lo crea)
- `/etc/adduser.conf` (fichero de configuración)
- `useradd -m -p $(grep tester01 /etc/shadow | cut -d ":" -f 2) tester03`
- `cat login.defs | sed -e '/^#/d' -e '/^$/d' `
- `/etc/pam.d/*` (archivo de configuración de autenticación)
- pam (módulos) (se procesan por pilas)
- `last` (/var/log/wtmp) (consulta la información de la siguiente ruta)
- `include` (si da fallo no sigue)
- `require` (si da fallo sigue)
- `/etc/pam.d./common-password` (cambiar el sha512 o encryptación)
- `/etc/pam.d./common-session` (fichero de configuración de inicio de sesión de los usuarios)
- `usermod -l diego tester01` (cambiar el nombre de usuario)
- `usermod -mdpsug diego tester01` (cambiar el home, password, shell, uid, guid )
- `userdel -r user` (borra todo) `userdel user` (no borra el home)
- `su -c "make install" ` 
- `getent` (realizar el proceso de consulta de la base de datos) (hay varios)
- `cat /etc/nsswitch.conf` (fichero el orden de consulta de la base de datos)
  
  ```
  #!/bin/bash
  if [ $(id -u) != 0 ]
  then
    echo "El script $0 se debe ejecutar como root"
    exit 1
  else 
    echo "hola root"
  fi
  echo -e "Indicame el nombre de usuariao, xf:\n"
  read nombre
  echo -e "¿Quieres las opciones predeterminadas? [S/n]\n"
  read op
  case $op in
    [nN]) echo "son las $(date)";;
    *) ;;
  esac
  ```
- `useradd -m $nombre && passwd $nombre`
- cups (common unix printer system)
- __KERNEL__
- `apt install gcc bison flex bc build-essential dwarves linux-source cpio libssl-dev libncurses-dev libelf-dev`
- `wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.79.tar.xz`
- `tar -xJvf linux-5.15.79.tar.xz`
- `cd linux-5.15.79`
- `cp /boot/config-5.10.0-19-amd64 .config`
- `make bzImage`
- `make[1]: *** No hay ninguna regla para construir el objetivo 'debian/certs/debian-uefi-certs.pem', necesario para 'certs/x509_certificate_list'.  Alto.
  make: *** [Makefile:1900: certs] Error 2`
- `make localmodconfig`
- `make bzImage`
- __Compilar__
- `make modules`
- `make modules_install`
- `make install`
- `uname -a`

## 📅 23/11/2022
- `apt install cups` (instalación del demonio de impresión)
- `pgrep -a cups` (buscar el id de un demonio en concreto)
- `pgrep -u depruebas` (buscar el id de un usuario en concreto)
- `kill -9 $(pgrep apache2)` (matar varios id de un servicio en concreto)
- avahi-daemon (demonio que se instala con el servicio de impresión y es muy importante)
- `systemctl status | start | enable cups` (inicializar el demonio) (habilitarlo al momento de iniciar)
- http://localhost:631 (página de configuración de cups)
- `apt install net-tools` (herramientas del sistema)
- netstat (estadísticas del sistema)
- `netstat -an | grep 631`
- `netstat -i` (muestra las interfaces)
- `netstat -r` (kernel)
- `netstat -s` (protocolos)
- `netstat -l` (lista todo)
- `netstat -natu | grep 'ESTABLISHED' `
- `netstat -an | grep 'LISTEN' `
- `cupsctl` (muestra la configuración de cups)
- `cupsctl --remote-admin --remote-admin --share-printers` (habilitar estas opciones de cups)
- `systemctl stop firewalld` (demonio de firewall, se para)
- `lpadmin -p IMP01 -v /print/impresora01` ()
- `/etc/cups/...` (ficheros de configuración)
- `cups-files.conf` (FileDivice yes) - descomentar
- `lpstat -t` (ver si estan habilitadas - listar)
- `lpadmin -p IMP02 -E` (habilitar la impresora)
- `lpstat` (ver cola de trabajo)
- `lp -d IMP01 /etc/passwd` (imprimir)
- `lpadmin -d IMP02` (hacer impresora predeterminada)
- `cancel IMP02-2` (cancela el trabajo)
- `cancel -u root` (cancela impresoras de solo root)
- `lpinfo -v` (lista los dispositivos disponibles)
- `lpoptions` (visualiza las opciones por defecto)
- __HERRAMIENTA MODERNA__
- `cupsdisable IMP01` (deshabilitar la impresora)
- `cupsenable IMP02`(habilitar la impresora)
- `lpadmin -p parrot -c POOLIMPRESORAS` (creo un pool o clase)
- `cupsenable POOLIMPRESORAS`(habilitar pool)
- `/etc/cups/cups.conf` (servicio web)(archivo de configuración)
- `lppasswd -a usuario`(colocar contraseña al usuario)
- __AUTOMATIZACIÓN__
- cron (programación de tareas, demonio, se utiliza en servidores)
- `/etc/crontab` (ficheros creados)
- `/var/spool/cron/crontabs`(ruta donde mira cron cada minuto)
- `/etc/cron.daily` (colocamos aqui los ficheros o scripts)
- `anacron` (ejecuta tareas que no se han ejecutado)(se utiliza en equipos de escritorio)
- `apt install anacron`(instalación si no esta instalado en alguna distro)
- `/etc/anacrontab` (fichero donde se crearan las tareas y opciones)
- `7 10 backup.weekly /bin/bash /home/joan/scripts/backup.sh`
- `anacron -f` (forzar las tareas)
- run-parts (Ejecuta scripts o programas en un directorio)
- `crontab fichero.sh`(
- `crontab -e` (crear un cron)
- `/var/spool/cron/crontabs` (aparece los crontabs que nos hemos creado)
- `crontab -l` (lista)
- `crontab -e` (edita)
- `crontab -r` (borrado)
- `crontab -u user`
- `/etc/cron.allow` (solo los usuarios podrán ejecutar el crontab)
- `/etc/cron.deny` (todos los usuarios podrán ejecutar el crontab)
- `apt install at` (instalar la app)
- `at` (una vez, ejecuta comando cuando queremos y lo borra, de forma interactiva)
- `at now + 5 minutes` , `at 10:00 AM 6/22/2021` ...
- `atq`(listar)
- `atrm`(borrar)
- `at -c 1`(ver como esta echa la tarea)
- `/var/spool/cron/atjobs` (donde se almacenan los ficheros temporalmente)
- `systemd`
- `systemctl list-timers`
- [Generador](https://crontab-generator.org/)
 
## 📅 24/11/2022
- Ver el pdf de como crear un timer.
- `syslog` (grabación secuencial de todas las acciones que afectan a un sistema informático o una aplicación y se recogen en una base de datos.)
- `/etc/syslog.conf` (fichero de configuración)(origen importancia destino)
- tcp / udp , 514
- Debian -> rsyslog -> accion -> target + puerto -> modo tcp 514
- `/var/log/journal` (debian)
- `/run/log/journal` (alma)
- `apt install rsyslog` (instalación)
- `systemctl start rsyslog`
- `vi /etc/rsyslog.conf` (archivo de configuración de rsyslog)
- Aquí creamos nuestros propios log en `/var/log`
- local1.* /var/log/milog.log
- `/etc/logrotate.d` (contiene ficheros de configuración de otras aplicaciones instaladas)
- `logrotate -vf /etc/logrotate.conf` (ejecutar el comando manualmente)
- `vi /etc/crontab` (aquí estan los logratated)
- `/etc/cron.*`(cron diarios, semanales, ...)
- __Niveles de recurso__
```
0 (kernel - kern) mensajes del kernel
1 (Usuario - user) mensajes del nivel de usuario
2 (Mail - mail) sistema de correo
3 (Demonio - daemon) demonios del sistema
4 (Autentication - auth) seguridad-autorización
5 (Syslog - syslog) mensajes generados internamente por syslogd
6 (Impresión - lpr)
7 (Noticias - news)
8 (uucp)
9 (demonios del reloj)
10 (Autorización - authpriv)
11 (FTP - ftp)
12 (Subsistema de NTP)
13 (Inspección del registro)
14 (Alerta sobre el registro)
15 (Clock)
16 (local0) - 23 (local7)
```
- __Niveles de serveridad__
``` 
    “emerg” (0)
    ”alert” (1)
    “crit” (2)
    “warning” (4)
    “notice” (5)
    ”info” (6)
    “debug” (7)
```
- [Como configurar un server centralizado](https://www.ochobitshacenunbyte.com/2018/10/29/registros-centralizados-en-linux-con-rsyslog/)
- `recurso*8+nivel` (cálculo de nivel de prioridad)
- Journal o diario
- `journald` (demonio)
- `systemctl restart systemd-journal-flush.service` (cambia con el texto del libro)
- `systemctl list-units --all`
- `/etc/systemd/journald.conf` (archivo de configuración)
- `journalctl --list-boots` (registro de reinicios del sistema)
- `journalctl --disk-usage` (espacio ocupado por los diferentes logs)
- `journalctl --since "2017-08-16 18:46:30" --until "2017-08-16 18:55:00" `
- `journalctl --since yesterday`
- `journalctl --since 17:00 --until "2 hour ago" `
- `journalctl –u docker-service`
- `journalctl /dev/sda2`
- `journalctl -k -b`
- `journalctl –n 7`
- `journalctl -p 4` (ver información del sistema con prioridad 4)
- `journalctl -f` (muestra los registros últimos, esta a la escucha)
- `logger -p 0 ELFIN` (generar un error)
- `echo "URGE" | systemd-cat -p emerg` (systemd-cat es parecido a logger)
- `journalctl _[tab]` (muestra más opciones)

## 📅 25/11/2022
- Archivado y backup
- `yum install cockpit` (cpanel ligero)
- sestatus
- reloj
- `hwclock`
- `timedatectl`
- `find /etc -name [ab]* -exec cp {} . \;`
- `time`
- `tar czvf curso01-00.tar.gz curso/`
- `tar xvf curso01-00.tar -C extraer/`
- `tar tvf ../curso01-00.tar | grep pdf`
- `tar cvf martes.tar -g lunes.snap ../test`
- `bzip2, bunxip2`
- `zip`
