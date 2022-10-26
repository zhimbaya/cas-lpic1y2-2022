# ✌ 📘 EMPEZAMOS EL CURSO 📘 ✌
## 📅 13/10/2022
- Inicio
- Presentación
- Toma de contacto

## 📅 14/10/2022
- Creación de máquina virtuales
- Descarga de máquinas virtuale e isos

## 📅 17/10/2022

- instalación de SO en VirtualBox
- debian (distribución que se va a utilizar)
- hostname (nombre de máquina)
  - /etc/hostname (ruta de nombre de máquina)
- ($) usuario regular
- (#) superusuario
- pwd (ruta donde me encuentro)
- ls (listar)
  - comando - (opciones) - argumentos
- host nombreHost (muestra las ip's y nombre de máquina)
- uname -a (muestra la información del hardware y S.O)
- man man (ayuda del man)
- man 5 hostname (ayuda de man en la sección 5)
- hostname --help
- help hostname
- . , .. , ~ , - 
- ls -la (listar detallada total)
- usr (unix source)
- cd (cambiar de directorio)

## 📅 18/10/2022

- echo -e "adios \nmundo"
- echo (imprime por pantalla)
- which -a comando (ruta del comando interno o ejecutable)
- touch (cambia la fecha de un archivo, crea un archivo)
- cat (concatena archivos y los muestra por la salida estándar)
- nano (editor de texto)
- descriptores de ficheros stdin 0, stdout 1, stderr 2
- modifica la salida std >, >> (añade)
- modifica la salida stderr 2>
- tty (muestra los terminales en uso)
- mv origen destino (mueve los ficheros, o los renombra)
- less (visualiza de línea en línea), more (visualiza el contenido a trozos), | (tuberia, pasa el argumento)
- man (manual de ayuda del sistema)
+ apt install locate (aplicación para localizar archivos)
- locate -> updatedb (crea y actuliza la base de datos)
- mkdir -p (crear directorios recursivos)
- apt install tree (aplicación que muestra el contenido en forma de árbol)
- rmdir (borra directorios vacios)
- rm -r (borra ficheros de forma recursiva)
- who a mi (muestra usuario terminal fecha corta)
- id (muestra el id del usurio)
- date (muestra la fecha)
- variables a=1, echo $a
- env , echo $PATH
- PATH=$PATH:/sbin
- utilizar _
- proceso en segundo plano &
- && , : , ||, *´, ? , >
- "", ' '
- bash (reiniciar el terminal)

## 📅 19/10/2022
- cat << EOF
+ apt install info
- 10.1.1.111 - user1
- apropos hostname
- man -k hostname
- file (tipo de fichero)
- cp origen destino
- ln (enlace duro) mismo inodo , numero
- ln -s origen destino (enlace simbolico)
- * (varios ) ? (uno)
- \
- ls [gz][rp]*
- grep
- ^ (que empiece)
- grep -v (excepto)
- /dev/null
- ssh user@ip -p 
- vi
- bash
- $( comando )

## 📅 20/10/2022

- if
- for
- while
- until
- function
- sh archivo
- r w x (lectura escritura ejecución)
- usuario grupo otros
- ./archivo
- chmod
- umask
- bitSUID (s) 4
- bitSGID (s) 6
- stickybit (t) 7
- uptime
- dpkg (.deb)
+ apt install ksh (echo $0, ver que bash tengo)
- top
+ apt install htop
+ apt install binutils
- string /bin/bash
+ apt install lynx
- ps
- signal
- kill -9 pid (sleep 100 &)
- vmstat
- dmesg
- head
- tail -f
- wc -lwc
- who -p -u
- netstat
+ apt install nettool
- ss
- arp
- dig
- ping
- traceroute
- ssh
- users , useradd, userdel, usermod
- adduser, deluser, 
- /etc/sudoers.d
- /etc/shadow
- /etc/passwd
- /etc/resolv.conf
- /etc/network/interfaces
- /etc/group
- .bashrc , .profile
+ apt install finger

## 21/10/2022
+ apt install finger
+ apt install info
+ apt install pinfo
- /usr/share/doc/
- 7 tipos de ficheros:
(-) fichero
d directorio
l enlace simbólico (es un archivo) y enlace duro ()
c dispositivo carácter
b dispositivo bloque
p pipe
S socket
- stat ruta (información del estado de un fichero)
- /etc/motd
- setfacl ( + al final del archivo)

## 📅 MARTES 30 PREGUNTAS
## 📅 24/10/2022
- shopt (elemento interno)
- getent (ver base de datos)
- getent services
- /etc/magic (file)
+ apt-cache search ^dosfstools
- dd if=/dev/zero of=fichero bs=1024
- mount fichero /mnt/
- kill -l
1 (iniciar demonios), 2(interrupcion),3(salir),9(kill),15(terminar)
- echo $$ (muestra el pid)
- jobs
- fg y bg
- env , se, printev
- PS1
- shift (quita la variable posicional)
- echo ${17}
- unset (liberar espacio de memoria)
- export (exportar variables entre bash)
- POSIX -> ( [:UPPER:] )
- [[ -> evaluar la expresion que contiene los dos corchetes en  POSIX ( C )
- locale (forma de interpretar los signos)
- echo -> ( \ escape )
- ls -l A???
- 1> , 2> , &> (1 y 2) , >>, tail , head
- tee (visualiza por la pantalla y escribe en el fichero)
- /dev/null 
- alias , unalias ( borra de memoria los alias)
- type (información de comando)
- comando interno o ejecutable -> echo --version , /usr/bin/echo --version (primero los alias (memoria), interno (binario), ejecutable (programa))
- whereis = which -a
- ps --no-heading
- ` ` (contra comilla)
- set -+o noclobber (warning)
- . (se ejecute en el mismo proceso)

- https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet


