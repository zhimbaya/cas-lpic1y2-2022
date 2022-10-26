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
- variables 
  - a=1; echo $a (asignación de una variable e impresión por pantalla)
- env (muestra las variables de entorno)
- echo $PATH (muestra la información de la variable)
- PATH=$PATH:/sbin (añade una ruta al PATH)
- _ (al momento de forma variables con nombres largo es recomndable utilizar _)
- & (proceso en segundo plano)
- && , : , ||, *, ´, ? , > <
- "", ' ' (doble comillas - muestran el valor de las variables y comillas simples - imprime de forma literal)
- bash (reiniciar el terminal)

## 📅 19/10/2022
- cat << EOF (termina en el momento que aparece un EOF
+ apt install info (aplicación que muestra la información del comando o sistema en sustitución de man)
- 10.1.1.111 - user7 (dirección de cubo y usuario)
- apropos hostname (muestra las informaión, secciones del comando , )
- man -k hostname (es igual que utilizar apropos)
- file (muetra el tipo de fichero)
- cp origen destino (copia un fichero)
- ln origna destino (enlace duro) mismo inodo , numero
- ln -s origen destino (enlace simbolico)
- * (varios ) ? (uno)
- \ (contra barra, sirve para escapar caractéres)
- ls [gz][rp]* (lista desde un rango a otro)
- grep (filtra)
- ^ (acento circunflejo que nos dice que empiece)
- grep -v (filtra excepto)
- /dev/null (ruta donde no hay nada)
- ssh user@ip -p (conexión shh y puerto)
- vi (editor de texto)
- bash (cli con el que estamos trabajando)
- $(comando) (variable que guarda lo que el comando muestra)

## 📅 20/10/2022
- bash:
  - if
  - for
  - while
  - until
  - function
- sh archivo (ejecutar un archivo)
- r w x (lectura escritura ejecución)
- r w x (usuario grupo otros)
- chmod (cambiar permisos de un fichero)
- ./archivo (ejecutar un archivo)
- umask (muestra los permisos del fichero en forma octal)
- bitSUID (s) 4
- bitSGID (s) 2
- stickybit (t) 1 
- uptime (muestra el tiempo de ejecución del servidor)
- dpkg (.deb) ()
+ apt install ksh (echo $0, ver que bash tengo)
- top (muestra los procesos en ejecución)
+ apt install htop (aplicación muy parecida a top)
+ apt install binutils (aplicación con herramientas muy utiles)
- string /bin/bash (muestra la información o permite la lectura de ficheros binarios)
+ apt install lynx (aplicación navegador web por terminal)
- ps (muestra los procesos)
- man signal (muestra los diferentes tipos de señales)
- kill -9 pid (comando que mata un proceso)
- sleep 100 & (se duerme o se produce un delay de 100 milesegundos)
- vmstat (muestra información de la memoria virtual)
- dmesg (muetra los mensajes de error
- head (muestra la 10 primeras líneas de un fichero)
- tail -f (muestra las 10 últimas líneas de un fichero y esta en constante escucha)
- wc -lwc (comando que cuenta los número de líneas letras, palabras, bites)
- who -p -u (muestra información de tty y su PID)
- netstat (comando de red para mostrar información de la conexión de red - muestra los saltos)
+ apt install nettool (paquete que instala herramientas de red)
- ss (muestra el número de sockets)
- arp (muestra información del equipo)
- dig (muestra información de una dirección IP)
- ping (envia paquetes a una dirección IP)
- traceroute dirección-web (muestra el número de saltos)
- ssh (protocolo de conexión segura)
- users (muestra los usuarios del sistema)
- useradd (crea un usuario añadiendole los parametros)
- userdel (elimina un usuario)
- usermod (cambia los permisos de un usuario o usuarios)
- adduser (crea un usuario de forma interactiva)
- deluser (elimina usarios de fomra interactiva) 
- Ficheros de configuración:
  - /etc/sudoers.d
  - /etc/shadow
  - /etc/passwd
  - /etc/resolv.conf
  - /etc/network/interfaces
  - /etc/group
  - .bashrc , .profile
+ apt install finger (paquete que muestra información sobre las terminales)

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


