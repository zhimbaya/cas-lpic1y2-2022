# UDEMY LPIC ESSENTIAL
97. Introdución a las redes
98. Configurar la red en un entorno gráfico
99. Comandos de red en CLI: net_tools
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
