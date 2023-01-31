# Certificación LPI Linux Essentials: Temario oficial completo

## Sección 1: Introducción

### 1. ¿Qué necesitas para empezar?

> Este curso está diseñado para garantizar la superación de la Certificación LPI: Linux Essentials. El contenido también está recomendado para el que quiera iniciarse en el mundo de Linux y el software libre.

> Lo primero que necesitamos es disponer de un sistema operativo Linux para practicar lo que se explica en el curso. En esta sección te explico dos maneras posibles: Instalación en un PC en producción y creación de una máquina virtual (la que yo te recomiendo). Si ya dispones de uno puedes avanzar a la siguiente sección.

Ubuntu, Debian, RedHat.

### 3. Instalar Debian con VirtualBox

### 4. Instalar Linux en un PC con Windows

## Sección 2: Linux Essentials 1 : La comunidad Linux y el mundo del código abierto.

### 5. ¿Qué aprenderemos en esta sección?

### 6. Las distribuciones de Linux.

### 7. Las ramas más importantes y sus distribuciones derivadas.

### 8. Linux como sistema embebido y su uso en cloud computing.

### 9. Instalación de software. Los paquetes.

### 10. Pricipales aplicaciones de escritorio.

- Libreoffice

- VLC

- Transmition

- Firefox

### 11. Principales aplicaciones para servidores.

- Navegación web: Apache, Nginx

- Base de datos: Mysql, MariaDB

- Información privada online: ownCloud, Nextcloud

### 12. Principales lenguajes de programación.

- Javascript
- c/c++
- Java
- Phyton
- Php
- LAMP

### 13. Tipos de licencia de software.

- Free: significa gratis y también libre (hay confusión).

- **Cuatro libertades:**
  
  1. La libertad de ejecutar el programa como se desee, para cualquier propósito. (libertad 0)
  2. La libertad de estudiar cómo funciona el programa y de modificarlo para que se adapte a tu necesidad (libertad 1). El acceso al código fuente es una codición previa para ello.
  3. La lbertad de redistribuir copias para poder ayudar a los demás (libertad 2)
  4. La libertad de distribuir copias de sus versiones modificadas a otros (libertad 3)

- Software de Código Abierto (open source) y Software Libre

- __FOSS__ (Free and Open Source Software)

- __FLOSS__ (Free/Libre and Open Source Software)

- __Copyleft__ (FSF impulsado) el autor exige que los beneficiarios del producto preserven las mismas libertades de distribución de copias y derivados.

- __GNU General Public License (GPL)__ creada por FSF. Ofrece libertad de usar, estudiar, compartir y modificar el software. Es copyleft sus derivadas tendrán que ser GPL.

- __Open Source Initiative (OSI)__: desarrollo un procedimiento estandarizado para comprobar que las licencias de software cumplen con la Open Source Definition.

- __FreeBSD License__: licencias permisivas, ya que no incluye el copyleft. Por tanto se puede hacer cualquier cosa con el código, incluso venderlo y cerrarlo. Pero incluye uan cláusula de exención de responsabilidades.

### 14. Licencias Creative Commons.

- Attribution __(CC BY)__ cualquier uso, se debe mencioanr al autor.

- Attribution ShareAlike __(CC BY-SA)__ los trabajos derivadas deben compartirse bajo la misma licencia.

- Attribution No-Derivs __(CC BY-ND)__ puedes redistribuir el contenido bajo CC-BY, pero no lo puedes cmabiar.

- Atribution-NonCommercial __(CC BY-NC)__ como CC NY, pero no lo puedes utilizar para los fines comerciales.

- Attribution-NonCommercial-ShareAlike __(CC-BY-NC-SA)__ como CC BY-NC, pero requiere que los cambiows se compartan bajo la misma licencia.

- Attribution-Non-Commercial-No-Derivs __(CC-BY-ND)__ puedes distribuir pero no sin fines comerciales ni modificaciones.

- NO Rights Reservados __(CC0)__ versión de Creative Commons de dominio público.

### 15. Cómo ganer dinero con Linux

- Instalación, soporte y personalización.

- Trabajar en empresas

- Mediante donaciones

- Cloud computing

### 16. El entorno de escritorio

- Hardware - Kernel - Shell - Sistemas de Ventanas - Gestor de ventanas - Entorno de escritorio - Usuario
- Gnome - c - GTK, KDE - c++ - QT

### 17. El entorno gráfico de Gnome.

### 18. El entorno gráfico de KDE.

### 19. Usos de entornos profesionales. El terminal.

### 20. Navegación y contraseñas.

## Sección 3: Linux Essentials 2: Encontrando el camino en un sistema Linux.

### 22. ¿Qué aprenderemos en esta sección?

### 23. Ubicación del intérprete de comandos dentro de Linux.

1. ¿Qué es Linux?
   - Sistema operativo
   - GNU/Linux
   - Software Libre
   - Comunidad
   - Distribuciones
   - Debian, RedHat, Ubuntu, CentOS
2. Distintos nombres: Shell, intérpretes de comandos, modo consola.
3. Bash, Sh, Tcsh/Csh, Zsh, Fish

### 24. Empezando en Bash: el prompt, pwd y man.

Borrar la pantalla.

```
clear
```

Prompt.

```
nombre_usuario@hostname:path $
```

Ver en dónde nos encontramos.

```
pwd
```

### 25. Partes de un comando: los parámetros.

### 26. Partes de un comando: las opciones.

Lista (comando opciones parámetros)

```
ls directorio
```

### 27. Un comando simple: echo

`-e` respeta los caracteres especiales.

```
echo -e "hola \n \t mundo"
```

Variables = $variable

```
echo $USER
echo $PATH
```

Comillas simples y dobles

```
"muestra el valor de las variables"
'NO muestran el valor de las variables'
```

```
echo $((50 * 4))
```

### 28. Comandos type, wich y name

Comando interno y otros ejecutables externos

`type` muestra esta información.

```
type cd
which cd
```

`man`muestra ayuda de comandos, y ficheros de configuración.

`uname` muestra información del sistema.

Muestra toda la información.

```
uname -a
```

Muestra información de la versión del Sistema operativo.

```
less /etc/issue
less /etc/os-release
less /etc/*rele*
```

### 29. Variables. Set, unset y export

`set -o` muestra la configuración de nuestro entorno.
Activamos o desactivamos las opciones.

```
set -o +o opción
```

`export` crea o modifica variables de entorno.

```
export NOMBRE=diego
```

`unset` elimina una variable de entorno.

```
unset NOMBRE
```

`env` muestra las variables de entorno.

```
env
```

### 30. Entorno. Comando history y env.

Me muestra el valor de la variable.

```
echo $PATH
```

Estoy en este mismo directorio y no se tiene que ir a buscar a `$PATH`.

```
./mi_comando.sh
```

Muestra el historial.

```
history
```

Fichero que guarda el historial para cada usuario.

```
~/.bash_history
```

### 31. Obtener ayuda

```
man comando
```

Secciones dentro de una página.

- Nombre

- Synopsis

- Descripción

- Optiones

- Argumentos

- Ficheros

- Ejemplos

- Ver también

- Copyright

- Bugs

Categorías

- 9 categorias (1 comandos generales, 5 formato de ficheros, 8 comandos de administración)

Navegar por la información

- Espacio (página por página)

- Intro (línea en línea)

- `/palabra_a_buscar` hacia abajo

- `?palabra_a_buscar` hacia arriba

- `n , N` siguiente o anterior.

Opciones más importantes

-f , -k 

```
man 5 passwd
man -f ls (corta informaci)
man -k wc
```

Algunos comando tiene una ayuda rápida y simple.

```
-h o --help
```

Muestra información simple o corta.

```
whatis ls
apropos usuarios
whereis
```

Muestra más información con hiperenlaces.

```
info comando
```

Base de datos `updatedb`

```
locate comando
```

Manuales de ayuda, readme, ficheros, etc.

```
/usr/share/doc/
```

### 32. Obtener ayuda. Práctica.

### 33. Obtener ayuda. Práctica 2.

### 34. Navegar por directorios.

```
ls -l /home/
ls -lh /directorio
ls -lS (tamaño)
ls -lr (descendente)
ls -lt (fecha de modificación)
pwd (directorio donde estoy)(
cd /var (cambiar de directorio)
cd (va a mi directorio personal)
cd -
```

### 35. Rutas relativas y absolutas.

## Introdución a las redes

2228. Configurar la red en un entorno gráfico

2229. Comandos de red en CLI: net_tools
- obsoletas
100. Práctica: comandos de net_tools
- ifconfig
- ifconfig enp0s3 up
- ifconfig etho 192.168.1.23
- ifconfig etho 192.168.1.23 netmask 255.255.0.0
- netstat -l -p -t -u -64 -n (listening, proc, tcp, udp, ipv, número)
- route
101. Comando ping y trace
- tracepath / tracepath6
- traceroute / traceroute6
- ping / ping6
102. Práctica: ping y trace
- ping google.com
- systemctl restart networking
- ping -c 3 yahoo.com
- tracepath google.com
- traceroute (permisos de root)
103. El comando IP
104. Práctica con el comando IP
- ip -c a
- ip link set enp0s3 up
- ip link set enp0s3 down
- ip address show
- ip a add 192.168.1.24/24 dev enp0s3
- ip a del 192.168.1.24/24 dev enp0s3
- ip route show
- ip route add 192.168.1.24/24 via 192.168.1.1 dev enp0s3
105. El comando ss
106. Práctica con el comando ss
- ss -t
- ss -l
- ss -u
- ss -p
- ss -s (estadísticas)
- ss -t state established dst 192.168.1.3
- ss -t state established dport = :https 
107. Ficheros de red: hostname, resolv.conf, hosts ....
108. Práctica: Ficheros de Red
- vi /etc/hostname
- hostname
- hostname -s
- hostnamectl status
- hostnamectl set-hostname mipc
- vi /etc/hosts
- vi /etc/resolv.conf
- vi /etc/nsswitch.conf (orden de búsqueda)
109. Configuración de red en consola
- /etc/network/interfaces
110. Práctica: Configuración de red
111. Configuración del DNS en un cliente
- host cliente (consulta dns real)
- getent cliente (consulta archivos)
- apt install dnsutilis
- dig google.com
- dig @1.1.1.1 google.com
- dig -t MX google.com
- dig -t CNAME www.mundo.com
- dig ANY google.com
- dig +short google.com
- dig +trace google.com
112. Introducción a IPV6
- 128 bits
- hexadicimal
- autoconfigurable
- sin máscara de red 
- mas seguro 
113. Qué aprenderemos?
- su
- whoami
- groups
- id nombre (ver todos los grupos)
115. Cambiar propietarios de un fichero o directorio
- chgrp
- chown (las dos cosas o independiente)
- chown :migrupo -r carpeta
- newgrp fichero (cambiar al grupo secundarios y hacerlo principal)
116. Permisos de ficheros
- rwx (lectura, escritura, ejecución)
117. Permisos de los directorios
- rwc (listar, crear, modificar)
118. Cambiar permisos: chmod
- chmod (+-=)
119. Chmod con notación octa
- chmod (421)
121. Permisos especiales
- setUID
- setGID
- sticky Bit
122. Práctica: permisos especiales
- chomd u+s
- chomd g+s
- chomd o+t
123. Información sobre usuarios: last, who y limit
- su -
- who
- w
- last
124. Usuarios del sistema. Ampliación
- /etc/passwd
- useradd -d -m -g -G -s -k
125. Contraseñas
- /etc/shadow
- $id$salt$hash
126. Práctica: Usuarios
- passwd -l user
- passwd -u user
127. Práctica: Contraseñas
128. Administración de Grupos de Usuarios
- /etc/group
- groupadd
- /etc/skel
- groupdel
- groupmod
- usermod -a -G
- userdel -r
129. Práctica: Administración de Usuarios y Grupos
130. Enlaces en el sistema de ficheros de Linux
- ln (ficheros)
- ln -s (directorios)

FIN