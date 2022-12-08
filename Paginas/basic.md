# Linux essentials (40 h) 8d 13/10/22 - 24/10/22

## CONOCIMIENTO DE LA COMUNIDAD LINUX Y DE UNA CARRERA EN EL CÓDIGO ABIERTO
1. Evolución de Linux y sistemas operativos populares
2.	Principales aplicaciones de código abierto
3.	Software de código abierto y licencias
4.	Habilidades TIC y trabajo en Linux
## ORIENTACIÓN EN UN SISTEMA LINUX
1.	Fundamentos de la línea de comandos
2.	Uso de la línea de comandos para obtener ayuda
3.	Uso de directorios y listado de archivos
4.	Crear, mover y borrar archivos
## UTILIZACIÓN DE UNA LÍNEA DE COMANDOS
1.	Gestión de archivos en la línea de comandos
2.	Búsqueda y extracción de datos de archivos
3.	Cómo convertir los comandos en un script
## ESPECIFICACIONES SOBRE EL SISTEMA OPERATIVO LINUX
1.	Elección del sistema operativo
2.	Entender el hardware de los ordenadores
3.	Dónde se almacenan los datos
4.	Su ordenador en la red
## CONFIGURACIÓN SEGURIDAD Y PERMISOS DE ARCHIVOS
1.	Seguridad básica e identificación de tipos de usuarios
2.	Creación de usuarios y grupos
3.	Gestión de los permisos y la propiedad de los archivos
4.	Directorios y archivos especiales

## ✌ 📘 EMPEZAMOS EL CURSO 📘 ✌
## 📅 13/10/2022
- Inicio
- Presentación
- Toma de contacto
- 10.1.1.111 - user7 (dirección de cubo y usuario)

## 📅 14/10/2022
- Creación de máquina virtuales
- Descarga de máquinas virtuale e isos

## 📅 17/10/2022
- instalación de SO en VirtualBox
- debian (distribución que se va a utilizar)
- CLI
  - CTRL + l (limpiar)  
  - CTRL + a (inicio)
  - CTRL + e (final)
  - CTRL + u (cortar)
  - CTRL + y (pegar)
  - CTRL + k (borrar)
  - CTRL + w (borrar palabra)
  - CTRL + h (borrar letra <-)
  - CTRL + d (borrar letra ->)
  - CTRL + c (cerrar)
  - CTRL + t (cambiar letras de posición)
  - SHIT + ESC + t (cambiar palabras de posición)
  - CTRL + r (buscar)
  - CTRL + p (historial)  
- ` hostname ` (nombre de máquina)
  + /etc/hostname (ruta de nombre de máquina)
- ($) usuario regular
- (#) superusuario
- ` pwd ` (ruta donde me encuentro)
- ` ls ` (listar)
- `ls -la` (lista detallada total)
  - comando - (opciones) - argumentos
  - ` apt install exa `
  - ` apt instal lsd ` (alternativa ls)
  - ` apt install moar ` (reemplaza a less)
- ` host -v nombre_host ` (muestra las ip's y nombre de máquina)
- ` uname -a` (muestra la información del hardware y S.O)
- `man man` (ayuda del man)
- `man 5 hostname` (ayuda de man en la sección 5)
- `hostname --help` (muestra la ayuda)
- `help hostname` (muestra la ayuda)
- `hostname -h` (muestra la ayuda)
- . , .. , ~ (vigulilla) , - , ^ (acento circunflejo)
- usr (unix source)
- `cd`(cambiar de directorio)
- `man hier` (muestra toda la información de cada directorio de archivo )

## 📅 18/10/2022
- `echo` (imprime por pantalla)
- `echo -e "adios \nmundo" ` (imprime por pantalla)
- `which -a comando` (ruta del comando interno o ejecutable)
- `stat fichero`(ver información del fichero)
- `touch` (cambia la fecha de un archivo, crea un archivo)
  - Access: Se actualiza cuando abrimos el fichero, por ejemplo, cuando utilizamos comandos tipo: car, grep, tail, etc..
  - Modify: Se actualiza cuando cambiamos el contenido del fichero.
  - Change: Se actualiza cuando cambiamos permisos, propietario: usuario, grupo, etc...
  - atime: Access time, mtime: Modify time, ctime: Change time
  - Cuando ejecutamos `ls -l` , estamos listando el: mtime
  - Cuando ejecutamos `ls -lu` , estamos listando el: atime
  - Cuando ejecutamos `ls -lc` , estamos listando el: ctime
  - `touch -a --date="2001-05-10" fichero-sysadmit.txt`
  - `touch -m --date="2001-05-10" fichero-sysadmit.txt`
  - ` Modificamos el change time: Ahora=$(date)` 
  - ` Cambiamos la hora del sistema: date --set "2001-05-10" `
  - ` Actualizamos la hora del fichero, con la fecha actual: touch fichero-sysadmit.txt`
  - ` Volvemos a la fecha actual: date --set "$Ahora" `
- `cat fichero1 fichero2` (concatena archivos y los muestra por la salida estándar)
- `nano fichero.texto` (editor de texto)
- `vi fichero.texto` (editor de texto)
- `column -s ":" -t /etc/passwd` (muestra el archivo en columnas)
- stdin 0, stdout 1, stderr 2 (descriptores de ficheros)
- modifica la salida std `>, >> (añade)`
- modifica la salida stderr `2>`
- `tty` (muestra los terminales en uso)
- `Ctrl + Alt + F3` hará que aparezca el mensaje de inicio de sesión de tty3.
- `mv archivo|carpeta archivo|carpeta` origen destino (renombra los ficheros)
- `mv fichero /destino`(mueve los ficheros)
- `less` (visualiza de línea en línea), `more` (visualiza el contenido a trozos), ` | ` (tuberia, pasa el argumento)
- `man` (manual de ayuda del sistema)
- `apt install locate` (aplicación para localizar archivos)
- `locate -> updatedb` (crea y actualiza la base de datos)
- `locate -r my-file$ ` (busqueda exacta)
- `locate -c my-file` (cuenta el nº de ficheros)
- `locate -i my-file` (ignora mayusc y minusc)
- `locate my-file n 10` (limita los resultados)
- [Ayuda: find y locate](https://www.hostinger.es/tutoriales/como-usar-comando-find-locate-en-linux/)
- `mkdir -p directorio/otro` (crear directorios recursivos)
- `mkdir -ma=rwx fichero`(crear directorio con modo)
- `chdir -m 777 mydir` (cambiar el modo)
- `apt install tree` (aplicación que muestra el contenido en forma de árbol)
- `rmdir directorio` (borra directorios vacios)
- `rm -r ficheros` (borra ficheros de forma recursiva)
- `who a mi` (muestra usuario terminal fecha corta)
- `id` (muestra el id del usurio)
- `date` (muestra la fecha)
- `date +"Año: %Y, Mes: %m, Día: %d"`
- __Variables__ 
- `a=1; echo $a` (asignación de una variable e impresión por pantalla)
- `env` (muestra las variables de entorno)
- `echo $PATH` (muestra la información de la variable)
- `PATH=$PATH:/sbin` (añade una ruta al PATH)
- `echo $PATH | tr : \\n`
- `_` (al momento de forma variables con nombres largo es recomndable utilizar _)
- `& `(proceso en segundo plano)
- ` && , : , || , * , ´ , ? , > < `
- ` "", ' ' ` (doble comillas - muestran el valor de las variables y comillas simples - imprime de forma literal)
- `bash` (reiniciar el terminal)

## 📅 19/10/2022
- `cat << EOF` (termina en el momento que aparece un EOF)
- `tee NewFile` (crea un fichero y editas, Ctrl + D (salir))
- `apt install info` (aplicación que muestra la información del comando o sistema en sustitución de man)
- `info cat`
- `apropos hostname` (muestra la informaión, secciones del comando ,... )
- `man -k hostname` (es igual que utilizar apropos)
- `file fichero` (muetra el tipo de fichero)
- `cp origen destino` (copia un fichero)
- `ln origen destino` (enlace duro) mismo inodo , numero de enlaces `ls -l`
- `ln -s` origen destino (enlace simbólico)
- * (varios ) ? (uno)
- `\` (contra barra, sirve para escapar caractéres)
- `ls [gz][rp]*` (lista desde un rango a otro)
- `grep` (filtra)
- `grep -icvrwh 'Model' /proc/cpuinfo`
- (h = elimina ruta, v = excepto , i = ignora mayus , c = cuenta , r = recursivo, w = palabra específica)
- `^ ` (acento circunflejo que nos dice que empiece)
- `/dev/null` (ruta donde no hay nada)
- `ssh user@ip -p` (conexión shh y puerto)
- bash (CLI con el que estamos trabajando) `echo $0` (muestra el bash utilizado)
- __$(comando)__ (variable que guarda lo que el comando muestra)

## 📅 20/10/2022
- bash:
  - `#!/bin/bash`
  - `var=2`
  - `$(var)`
  - `nombre=$1` (variables dinámicas)
  - `$#` (cuenta el nº de parametros enviados)
  - `$*` (cuenta todos los parámetros)
  - `read -p " texto " name` (en tiempo de ejecución) (declarar antes la varibales)
  - `echo " "`
  - `if (($var))[ $var ] then else fi`
  - `case $op in "A") ;; *) esac`
  - `n=(1 2 3)` (array de nombre)
  - `rango=({A..Z})` (array de rangos)
  - `echo = ${n[*]}` (imprimir arrays)
  - `echo = ${#n[*]}` (imprimir tamaño del array)
  - `echo = ${#n[3]}` (imprimir el elemento del array)
  - `unset n[0]` (quito el valor del array)
  - `n[0]=1` (asignar el valor)
  - `for n in longitud do done`
  - `while cond= read line do done < $var`
  - `until`
  - `function () { } `  (llamar a la función para que funcione)
- `sh archivo` (ejecutar un archivo)
- r w x (lectura escritura ejecución)
- r w x (usuario grupo otros)
- `chmod modo fichero` (cambiar permisos de un fichero)
- `./archivo` (ejecutar un archivo)
- `umask` (muestra los permisos por defecto de los fichero en forma octal - resta)
  - bitSUID (s) 4
  - bitSGID (s) 2
  - stickybit (t) 1
- `uptime -p` (muestra el tiempo de ejecución del servidor)
- `dpkg` (.deb) (comando de instalación)
- `apt install ksh` (echo $0, ver que bash tengo)
- `top` (muestra los procesos en ejecución) (alt +f)
- `apt install htop` (aplicación muy parecida a top)
- `apt install binutils` (aplicación con herramientas muy utiles como strings) 
- `string /bin/bash` (muestra la información o permite la lectura de ficheros binarios)
- `apt install lynx` (aplicación navegador web por terminal)
- `ps -ef` (muestra los procesos)
- `man signal` (muestra los diferentes tipos de señales)
- `kill -9 pid` (comando que mata un proceso)
- (SIGHUP 1 , SIGINT 2, SIGQUIT 3, SIGKILL 9, SIGALRM 14,SIGTERM 15, SIGTSTP 20)
- `sleep 100 &` (se duerme o se produce un delay de 100 milesegundos)
- `vmstat` (muestra información de la memoria virtual)
- `dmesg` (muetra los mensajes de error)
- `dmesg --level=alert,info`
- `dmesg -u` , `dmesg | grep -i usb` , `dmesg -c` (limpia)
- `head -n10` (muestra la 10 primeras líneas de un fichero)
- `tail -f` (muestra las 10 últimas líneas de un fichero y esta en constante escucha)
- `wc -lmwc fichero` (comando que cuenta los número de líneas, letras, palabras, bites)
- `who -p -u` (muestra información de tty y su PID)
- `netstat` (comando de red para mostrar información de la conexión de red - muestra los saltos)
- `apt install net-tools` (paquete que instala herramientas de red)
- `ss` (muestra el número de sockets)
- `arp` (muestra información del equipo)
- `dig` (muestra información de una dirección IP o hostname)
- `ping` (envia paquetes a una dirección IP)
- `traceroute dirección-web` (muestra el número de saltos)
- `ssh` (protocolo de conexión segura)
- `users` (muestra el usuario actual del sistema)
- `useradd` (crea un usuario añadiendole los parametros)
- `userdel` (elimina un usuario)
- `usermod` (cambia los permisos de un usuario o usuarios)
- `adduser` (crea un usuario de forma interactiva)
- `deluser` (elimina usarios de fomra interactiva) 
- Ficheros de configuración:
  - `/etc/sudoers`
  - `/etc/shadow`
  - `/etc/passwd`
  - `/etc/resolv.conf`
  - `/etc/network/interfaces`
  - `/etc/group`
  - `.bashrc , .profile`
- `apt install finger` (paquete que muestra información sobre las terminales) `who -a`

## 📅 21/10/2022
- `apt install info` (paquete que muestra información sobre un comando o sistema)
- `apt install pinfo` (paquete muy parecido a info)
- `/usr/share/doc/` (ruta de información sobre comandos)
- 7 tipos de ficheros:
  (-) fichero
  d directorio
  l enlace simbólico (es un archivo) y enlace duro ()
  c dispositivo carácter
  b dispositivo bloque
  p pipe
  S socket
- `stat ruta-fichero` (información del estado de un fichero)
- `apt install figlet`(dibuja letras en ascii)
- `/etc/motd` (ruta de fichero de bienvenida al iniciar el S.O)

## 📅 24/10/2022
- `shopt -psu` (muestra opciones del BASH, lista , activa, desactiva)
- `getent passwd` (ver base de datos)
- `getent services` (muestra los servicios)
- `/etc/magic` (file)
- `apt-cache search ^dosfstools` (busca paquetes que se encuentran disponibles en los repositorios)
- `dd if=/dev/zero of=fichero bs=1024` (crea un fichero con un tamaño, nombre y contenido Data Duplicator)
- `mount fichero /mnt/` (comando - ruta donde se montan los ficheros)
- `kill -l` (lista los diferentes señales)
  - 1 (iniciar demonios)
  - 2 (interrupcion)
  - 3 (salir)
  - 9 (kill)
  - 15 (terminar)
- `echo $$` (muestra el pid)
- `jobs` (muestra los trabajos en ejecución en segundo plano)
- `fg %1` (envía un proceso a primer plano) y `bg %1` (envia un proceso a segundo plano)
- `set, env , printenv` (muestra las variables de entorno) 
- `PS1` (prompt)
- `set red blue green` (creo  variables)
- `echo $1` (recupero el valor de la variable)
- `set *`(borro las variables)
- `echo "$*" ` (recupero todas las variables)
- `shift 1` (quita la variable posicional)
- `echo ${17}` (muestra el valor de la variable)
- `unset var` (liberar espacio de memoria)
- `export var` (exportar variables entre bash's) (se puede introducir en .bashrc)
- POSIX ( [:UPPER:] )
- `[ [ ] ]` (evalua la expresion que contiene los dos corchetes en  POSIX ( C ) )
- `locale` (muestra la forma de interpretar los signos)
- `echo` ( \ escape )
- `ls -l A???` (lista detalla que empiece por A mayúscula y sea de cuatro caractéres)
- 1> , 2> , &> (1 y 2) , >>, tail , head
- `tee` (visualiza por la pantalla y escribe en el fichero)
- `/dev/null` (ruta donde no tiene nada)
- `alias nombre="cmd" ` (muestra los alias del usuario)
- `unalias nombreAlias` (borra de memoria los alias)
- `type` (muestra información de comando)
  - `echo --version` , `/usr/bin/echo --versio` (comando interno o ejecutable)
  - (primero los alias (memoria), interno (binario), ejecutable (programa))
- `whereis` (muestra más información que which)
- `which -a comando` (muestra la ruta del comando o ejecutable)
- `ps -ef --no-heading` (muestra los procesos quitando el head de la información)
- ` hola mundo ` (contra comilla)
- `set -o` (lista)  `set -+o noclobber` (opciones de la shell HEREDADAS)(evitar sobreescritura accidental)
- ` . ` (punto) (se ejecute en el mismo proceso)
- `w` (muestra quien esta conectado en el servidor o numero de tty)

## 📅 25/10/2022
- `zypper install stat` (forma de instalar paquetes en openSuse)
- `$(which bash) --version` (vemos la versión de bash)
- estudiar comandos de Vi (ver pdf)
- vi
  - :w (guardar)
  - shift + zz (salir)  
  - * (busca la siguiente palabra)
  - :x (sale guardando)
  - hjkl (izquierda, abajo, arriba, derecha)
  - i (insertar)
  - a (insertar al principio)
  - b (back)
  - v (seleccionar)
  - p (pegar)
  - yy (copiar)
  - u (deshacer)
  - dw (borra una palabra)
  - db (borra una palabra hacia atras)
  - x (borra una letra)
  - v (selecionar) + G (seleccionar todo)
  - r (reemplazar)
  - o (insertar un linea)
  - 0 (ir al inicio) $ (ir al final)
  - /buscar
  - set showmode
  - set autoident
  - set tabstop=4
  - set expandtab
  - sysntax on
- `apt list --installed` (paquetes instalados)
- `pkg -l` (paquetes instalados)
- `snap list´ (ver paquetes snap)
 
## 📅 MARTES 30 PREGUNTAS