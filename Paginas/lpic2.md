# LPIC2 (110h) 22d (16d2022-6d2023) 28/11/22 -16/01/2023

## PLANIFICACIÓN DE LA CAPACIDAD
1. Medición y solución del uso de recursos
2. Predicción de las necesidades futuras de recursos
   
## ESPECIFICACIONES DEL KERNEL DE LINUX
3. Componentes del Kernel
4. Compilando un Kernel
5. Gestión del tiempo de ejecución del núcleo y resolución de problemas
   
## INICIO DEL SISTEMA
6. Personalización del inicio del sistema SysV-init
7. Recuperación del sistema
8. Cargadores de arranque alternativos
   
## SISTEMA DE ARCHIVOS Y DISPOSITIVOS
9. Funcionamiento del sistema de archivos de Linux
10. Mantenimiento de un sistema de archivos Linux
11. Creación y configuración de las opciones del sistema de archivos
    
## ADMINISTRACIÓN AVANZADA DE DISPOSITIVOS DE ALMACENAMIENTO
12. Ajuste del acceso a los dispositivos de almacenamiento
13. Gestor de volúmenes lógicos
    
## CONFIGURACIÓN DE LA RED
14. Configuración básica de la red
15. Configuración avanzada de la red y resolución de problemas
16. Solución de problemas de red
    
## MANTENIMIENTO DEL SISTEMA
17. Ejecución de ‘Make’ e instalar programas desde el código fuente
18. Operaciones de copia de seguridad
19. Notificar a los usuarios los problemas relacionados con el sistema
    
## SERVIDOR DE NOMBRES DE DOMINIO
20. Configuración básica del servidor DNS
21. Crear y mantener zonas DNS
22. Asegurar un servidor DNS
    
## SERVICIOS WEB
23. Implementación de un servidor web
24. Configuración de Apache para HTTPS
25. Implementación de un servidor proxy
26. Implementación de Nginx como servidor web y proxy inverso
    
## COMPARTICIÓN DE ARCHIVOS
27. Configuración del servidor SAMBA
28. Configuración del servidor NFS
    
## GESTIÓN DE CLIENTES EN RED
29. Configuración de DHCP
30. Autenticación PAM
31. Uso del cliente LDAP
32. Configuración de un servidor OpenLDAP
    
## SERVICIOS DE CORREO ELECTRÓNICO
33. Uso de servidores de correo electrónico
34. Gestión de la entrega del correo electrónico
35. Gestión de la entrega remota de correo electrónico
    
## SEGURIDAD DEL SISTEMA
36. Configurar un router
37. Asegurar los servidores FTP
38. Shell seguro (SSH)
39. Tareas de seguridad
40. OpenVPN

## 📅 29/11/2022
- `date -s "01/01/1970 00:00" ` (no deja cambiar la hora al principio de todo)
- `hwclock` (muetra el reloj del hardware)`
- `ntp` (esta un poco en deshuso)
- `timedatectl` (comando que muestra la información de la hora del sistema)
- `systemctl list-units` (lista los units)
- `host 2.debian.pool.ntp.org`
- `systemctl status systemd-timesyncd.service` (debian)
- `systemctl status chronyd` (alma)
- `ssh-keygen -f .ssh\known_hosts -R ip` (quitar la keygen) (windows)
- Protocolo una serie de reglas de los RFCs
- `/etc/chrony.conf/* ` (varios archivos de configuración)
- __Parámetros regionales__
- `locale` (The system locale defines the language and country-specific setting for the programs running on your system and the shell sessions.)
- `cat /etc/locale.conf` (fichero de configuración de locale de alma)
- `vi /etc/default/locale`(fichero configuración en debian)
- `update-locale LANG=en_GB.utf8`
- `dpkg-reconfigure locales` (configuración regional en debian, si queremos uno)
- `dpkg-reconfigure tzdata` (configuración en debian del time zone)
- `/etc/locale.gen`(si queremos varios)
- `locale-gen` (actualizar una vez se ha editado el fichero anterior)
- `ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime` (eliminar fichero y reemplazarlo por el de Madrid)(debian)
- `localectl list-locales`(mirar locales)
- `localectl set-locale LANG=es_CO` (se cambia)
- `localectl status` (se comprueba)
```
   - A 00000000 / 01111111 = 0 - 127 / 8 (máscara)
   - B 10000000 / 10111111 = 128 - 191 / 16 
   - C 11000000 / 11011111 = 192 - 223 / 24
   - D 111 MULTICAST
   - E 1111 EXPERIMENTACION
```
- `bc <<< "obase=2;255" ` (calcular el binario)
- [Ejercicios Bash](https://es.linux-console.net/?p=632#gsc.tab=0)
- NAT (network address translation | direcciones públicas y privadas)
- 10/8
- 172.16/12
- 192.168/16
- PORT ADRESS TRASLATION = PAT = PUERTOS
- 8 MAC + FF
- netstat -r (muestra la tabla de rutas)
- ip del route / nuestra ip , gateway , mascara , flag , ventanas, interfaz

## 📅 30/11/2022
- Cambiar la ip automática a fija.
- `vi /etc/network/interfaces`
- `systemctl restart networking`
- `vi /etc/NetworkManager/system-connections/enp0s3.nmconnection`
- `systemctl status NetworkManager`
- `nmtui` (interfaz de texto en alma)
- `ip address add 10.1.1.205/24 dev enp0s3` (agregar ip, alma, momentanea)
- `ifconfig enp0s8 up` (alma, levantar la red)
- `ifconfig enp0s8 down` (alma, desactivar la red)
- `nmcli dev status` (alma, ver el estado de la red)
- `systemctl status systemd-networkd` (ubuntu netplan)
- `sysctl` (ver configuración de la red, command allows you to view and change Linux kernel parameters.)
- `sysctl -w kernel.sysrq="1"` (cambio de manera temporal)
- `echo 1 > /proc/sys/kernel/sysrq` (temporal, como un router)
- `sysctl -w net.ipv4.ip_forward=1`
- `/etc/sysctl.conf` o `/etc/sysctl.d` (de manera permanente)
- `sysctl -p /etc/sysctl.d/file_name.conf` (muestra los valores del fichero)
- __system-connections__ 
- Archivos de configuración de las redes en alma
- `cd /etc/NetworkManager/system-connections` (archivos que se han creado con la creación de la red)
- `nmcli device`
- `nmcli connection show` (ver estado)
- `nmcli dev status` (alma, ver el estado de la red)
- `nmcli con mod "Conexión cableada 1" ipv4.method manual ipv4.addr "192.168.1.9/16" ` (colocar la ip manual en modo cmd)
- `nmcli connection up connection_name`
- `nmcli connection down connection_name`
- `tracepath google.com` (va mostrando los números de saltos)
- `apt install traceroute` (ver número de saltos)
- `apt install nmap` (sniffer)
- `/etc/nsswitch.conf` (define el orden de búsqueda de las bases de datos de red, comutador de servicio de nombres)
- `vi /etc/hosts` (agregar nombres de hosts)
- `vi /etc/protocols` (se identifican todos los protocolos de transporte reconocidos junto a su número de protocolo y sus aliases)
- `getent services | grep 13` (que protocolo es)
- `apt install xinetd` ( the extended Internet services daemon)
- `ncat -l 80` (ver si el puerto esta en uso)
- `ncat -v web.com 443` (host remoto puerto específico)
- `ncat -l -u 161` (udp)
- `nc -l -p 666` (se abre un puerto)
- `nc localhost 17` (intento conectarme al puerto)
- `nc -l -p 666 -e /bin/bash` (una shell reverse)
- `mkfifo 2way`
- `ncat -l 80 0<2way | ncat 192.168.0.200 80 1>2way` (crear un servidor proxy de ida y vuelta)
- `ncat -u -l 80 -c  'ncat -u -l 8180' ` (redirección de puertos)
- `apt install apache2` (servidor web)
- `dnf install httpd` (alma)
- `systemctl start httpd.service`
- `systemctl enable httpd.service`

## 📅 01/12/2022
- `dhclient -v` (asigna una ip, o muestra la información del servidor dhcp)
- `dhclient -r` (renueva la ip)
- `dhclient -k` (chekea la ip)
- `vi /etc/netplan/00...) (configuración de red ubuntu)
- `netplan try` (comprueba si esta bien)
- `netplan apply` (aplica los cambios)
- `resolvectl status` (devuelve la info)
- `ip a s eth0` (muestra y renueva la ip)
- `/etc/resolv.conf`(resolución de nombres)
- `systemctl start systemd-resolved` 
- `systemctl enable systemd-resolved`
- `systemctl restart systemd-resolved.service `
- `hostnamectl` (ver nombre del equipo y más información interesante)
- [Cambiar de nombre de usuario](https://www.linuxadictos.com/cambiar-de-nombre-de-usuario.html)
- `usermod -l nuevo-nombre viejo-nombre` (cambiar de nombre)
- `usermod -u UID username` (0-99 cambiar el uid)
- `groupmod -n nuevo-nombre viejo-nombre` (cambiar de grupo)
- `usermod -d /home/nuevo -m nuevo` (cambiar de directorio)
- 
 ![Tabla Mensaje dhcp](https://d7677e76-a-62cb3a1a-s-sites.googlegroups.com/site/sriasir20152016/dhcp/4-tipos-de-mensajes-dhcp/4.%20dhcp.jpg?attachauth=ANoY7crgMWW4yjgojKglSMFbn3EP0ojWFfoZVcq-YqdV4wvKFgA3uxBcxymUyenjtGFH_GuVwpcuf4ZokhUyxPj4ZlbE2gQM4kiDYGD20tJ1gtVKu63V3hiX6blS6UizFwRvlNtoIY5MWfdC0J1fdHQlkkbxaqdymI3uHOJelJuYhlDOQEFVzlq07Nbkgn70mYkECTtVQ4bJetzmfIFWwdg6x6_iopxHUOhjoA9t2wlkT99MIi2ZV_IpsKctSAULmuj0jJ9Y2iDx&attredirects=0)
  ```
  set tabstop=4 
  set shiftwidth=4 
  set expandtab
  set number
  ```
- Se trata de un demonio (daemon, en inglés) y super servicio TCP-wrapped (Envoltorio de TCP) que controla el acceso a un subconjunto de servicios de red populares, incluyendo FTP, IMAP y Telnet. También proporciona opciones de configuración específicas del servicio para control de acceso, registro mejorado, vinculación, redirección y control de utilización de recursos. Su nombre viene del acrónimo en inglés “eXtended InterNET Daemon”, esto es, Demonio Extendido de Internet. Es típico de los sistemas UNIX y like-UNIX. También se considera una extensión mucho más segura del servicio de Internet inetd
- `cd /etc/xinetd.d/`
- `apt install xinetd` (instalación del demonio)
- `dnf install nmap-ncat` (instalar y crear socket alma)
- `ncat -l 666` (ponemos a la escucha el puerto 666)
- `nmap -sS alma` (escanear puertos)
- `firewall-cmd --list-ports` (alma)
- `firewall-cmd --add-port=666/tcp` (se añade un puerto)
- `apt install isc-dhcp-server` (internet system consourci)
- `vi /etc/dhcp/dhcpd.conf`
```
servidor dhcp
cambiar el nombre de server
cambiar el dns

subnet 10.1.1.0 netmask 255.255.255.0 {
    range 10.1.1.150 10.1.1.200;
    option routers 10.1.1.1;
    option domain-name-servers 172.16.2.2;
}
```
- `systemctl status isc-dhcp-server.service`
- `systemctl umask | mask isc-dhcp-server.service`
- __OpenSSH__
- `/etc/ssh/*` (archivos de configuración)
- `vi /etc/ssh/sshd_config` (archivo de configuración)
- `/etc/ssh/sshd_config.d` 
- `apt install sshfs`
- [sshfs](https://geekland.eu/montar-sistema-archivos-remoto-con-sshfs/)
```
10.1.1.111    cubo
10.1.1.180    debian
10.1.1.181    alma
10.1.1.183    parrot
10.1.1.208    ubuntu
```
- __Crear Cert__
- `ssh-keygen -t ed25519` (gernerar un cert con el algoritmo)(enter enter) (servidor)
- `ssh-copy-id -i id_ed25519.pub curso@ubuntu` (copiamos la clave pública al cliente)
- `~/.ssh/authorized_keys`(comprobamos en el cliente que se a copiado el cert)
- `ssh ubuntu` (probar)
- `vi /etc/ssh/sshd_config` (#PermitRootLogin yes)
- `systemctl restart sshd.service` (alma)

## 02/12/2022
- __En un solo Servidor__
- `ssh-keygen -t ed25519` (generamos el cert con la palabra de paso)
- `ssh-copy-id -i id_ed25519.pub alma` (enviamos el cert pub al servidor)
- `ssh-agent` (en terminal)
- `SSH_AUTH_SOCK=/tmp/ssh-XXXXXXPZGjBF/agent.1131; export SSH_AUTH_SOCK; SSH_AGENT_PID=1132; export SSH_AGENT_PID;` (en terminal)
- `ssh alma` (nos solicita la palabra de paso)
- `eval $(ssh-agent)` (para automatizar lo cargamos en el inicio de sesión del usuario)
- `ssh-add`
- `vi .agente` (y agrego el, eval $(ssh-agent) ssh-add)
- `chmod 755 .agente` (damos permisos de ejecución)
- `vi .bashrc` ( . .agente) (agregar)
- `ssh debian mkdir pepe && date` (se crea desde el servidor una carpeta y se muestra la fecha)
- __Sistema de ficheros__
- mkdir mtaq
- sshfs cubo:/comun mtaq
- `ssh-add -d` (borrar entidades)
- __DNS__
- Puerto 53 udp y tcp
- FQDN
- Servidores raiz . , servidores .com .es .org , servidores google, apple, microsoft
- TTL
- https://www.isc.org/othersoftware/
- `apt install bind9`
- `systemctl status named`
- `/etc/bin/*` (más archivos de configuración del dominio)
- `vi /etc/resolv.conf` (fichero de configuración de dns del cliente)(insertar el dominio)
- `dig`
- `.` (dns raices)

## 09/12/2022

- Correo
- POP3, SMTP,
- SERVIDOR CLIENTE
- `apt install apache2` (debian)
- `dnf install httpd` (alma)
- `apt install curl`
- curl hostname
- NFS -> SUNRPC -> 111
- SMB -> CIFS -> SAMBA
- WEDDAB
- LDAP (Lightweight Directory Access Protocol)
- DNS
- HTTP
- SMTP /MTA
- IPTABLES
- `apt install pwgen` (genera contraseña aleatorias)
- `pwgen -1 16 -sy`
- `apt install john` (instalar)
- `ncat -lk 666`
- `apt install chkrootkit` (herramienta para detectar rootkit)
- `apt install rkhunter` ()
- `xinetd` (mirar esto)
- `apt install clamav` (antivirus)
- :(){:|:&};:
- `ulimit -a`
- `apt install sudo` ()
- NIS (Network Information System)
- RBAC (mirar esto)
- En alma esta mejor comentado el fichero sudoers.!!

---------

```bash
shred file_to_shred.txt
```

curl ifconfig.me

[Bash Prompt Generator](https://scriptim.github.io/bash-prompt-generator/)

[Gestión centralizada de Logs con Rsyslog - YouTube](https://www.youtube.com/watch?v=TpXZmtVoTQg&ab_channel=DenisEspinoza)

## 12/12/2022

- Seguriad
- netstat
- nmap

```
pct@cas-training.com

SI PRÁCTICAS
Asunto: CV+nombre y apellidos+22/1268
CV en formato Word
PLAZO 19/12/22

NO PRÁCTICAS
Asunto: Renuncia prácticas+Nombre y Apellidos+22/1268
PLAZO 19/12/22
Mª José/Jon 91.55.36.162
```

- apt install tshark (ubuntu)
- apt install tcpdump (ubuntu)
- xinetd
- ldd (muestra los enlaces)
- tcp_wrappers 
- strings -f /usr/sbin/in.telnetd | grep hosts (para ver quien utiliza wrappers)
- /usr/sbin/in.telnetd: (agregar esto en el fichero hosts.deny)
- systemctl stop xinetd.service
- netfilter (permiter filtrar paquetes)(no es secuencial, por referencias)
- systemctl status ufw (firewall) (ubuntu)
- systemctl status firewald (alma)
- iptables (casi en deshuso)(de forma secuencial)
- nftables (mas complicado)
- TCP: tamaño de ventana (caudal), ACK, Timer, SYCN, RST (netfilter, llega hasta el nivel muy bajo)
- __IPTABLES__
- iptables -L
- cat /proc/sys/net/ipv4/ip_forward (reenvío)
- iptables -A INPUT -j DROP -p icmp (crea la regla)
- iptables -D INPUT -j DROP -p icmp (elimina la regla)
- iptables -A INPUT -j REJECT -p icmp
- iptables -A INPUT -j DROP -p tcp --dport 23
- iptables -A INPUT -j DROP -p tcp --dport 23 --source alma

## 13/12/2022

- Xwindows 

- Instalación fedora

```
8GB
4 Nucleos
efi
50
49 ip bridge
linuxmint 64
32mb grafica
```

Cambiar ip a Suse

dws service

debian

apt search gnome

tasksel

/etc/x11

`apt install xrdp` (instalar)

`sestatus` (mirar si esta habilitado o no)

`vi /etc/selinux/config` (editar el fichero)

`SELINUX=disabled` (deshabilitar)

`systemctl status xrdp`

`systemctl start xrdp`

`firewall-cmd --permanet --add-port=3389/tcp`

`netstat -an | grep 3389` (mirar si esta el puerto abierto)

- apt install 

## 14/2/2022

- `ifdown interface`
- `ifup interface`
- `ip link set interface up/down`
  EN CASO DE FALLO DE LA INSTALACIÓN DEL ENTORNO GRÁFICO Y SE APIPA.
- `systemctl stop|disabled NetworkManager.service` (funciona con nmtui)
- `systemctl start networking`
- `ifdown enp0s3`
- `ifup enp0s3`
- dpkg-reconfigure ssdm
  Instalar con Fedora una caja o sistema operativo virtualizado.
- systemctl stop ufw.service (paramos el firewall)
- `apt install x11vnc` (instalamos el demonio)
- `ufw allow 5900/tcp` (se habilita el puerto)
- `x11vnc -auth guess` (correr el servidor remoto)
- `netstat -na | grep 5900` (mirar si esta escuchado)

```
Redirección de X sobre ssh
CLIENTE
ForwardX11 yes /etc/ssh/ssh_config o .ssh/config

SERVER
X11Forwarding yes /etc/ssh/sshd_config
xauth instalado

Procedimiento
ssh -v -X servidor-ssh # comprobar Requesting X11 Forwarding

verificar con un 
xterm & 
o algo similar
```

apt install xterm
dpkg-reconfigure gdm3 (seleccionar el gestor de inicio o session)

## 15/12/2022

__Discos__

- fdisk
- sfdisk
- RAID
- RAID 5
  __Volumenes__
- Físicos -> Discos
- Vomumens -> agrupaciones
- Lógicos
- fdisk (crar 5 particiones)
- sfdisk -d /dev/sdb > partsdb (crea un volcado de las particiones que hemos creado)
- fdisk -I (también se puede crear)
- sfdisk /dev/sdc < partsdb (creamos las particiones en el disco c)
- mdadm -C /dev/md/r0 -l0 -n3 /dev/sdb1 /dev/sdc1 /dev/sdd1 (creamos un raid tipo 0)
- cat /proc/mdstat
- mkfs.ext4 /dev/md/r0 ()
- mkdir /meta (crear un directorio para montar)
- mount /dev/md/r0 /meta/raid0 (montamos)
- cat /dev/disk/by-uuid/e9f73f6b-42aa-4916-8b61-e35655936971 (pseudo sistema de ficheros)
- echo "/dev/disk/by-uuid/e9f73f6b-42aa-4916-8b61-e35655936971 /meta/raid0 ext4 defaults 0 2" >> /etc/fstab
- vi /etc/fstab
- umount /meta/raid0
- mount /meta/raid0
- mdadm -C /dev/md/r1 -l1 -n2 /dev/sdb2 /dev/sdc2
- mkfs.ext4 /dev/md/r1
- mount /dev/md/r1 /meta/raid1/
- mdadm -C /dev/md/r5 -l5 -n3 /dev/sdb3 /dev/sdc3 /dev/sdd3
- mkfs.ext4 /dev/md/r5
- echo "UUID=33f798af-763f-4abb-97e4-7f073851b966 /meta/raid5 ext4 defaults 0 2" >> /etc/fstab (dump chequeo)
- mount /meta/raid5
- umount /meta/raid5
  __NUBE__
- https://app.vagrantup.com/boxes/search (descargar vagrant)
- https://developer.hashicorp.com/vagrant/downloads (vagrants ya hechos y configurados)

## 16/12/2022

- `df -Th` (ver los discos)
- `mdadm -Dvs` (lista los raids)
- `mdadm -D /dev/md/secos\:r1` (información de los tipos de array creados)
- `mdadm /dev/md/secos\:r1 - f /dev/sdc2` (provocamos un fallo)
- `mdadm /dev/md/secos\:r1 -remove /dev/sdc2` (quitamos el disco que falla)
- `mdadm /dev/md/secos\:r1 -a /dev/sdd2` (se añade el disco)
- `mdadm /dev/md/secos\:r1 -a /dev/sdc2` (se añade el disco como repuesto | emergencia - spare)
- `dd if=/dev/zero of=/dev/sdb1 bs=4M count=10`
- `mdadm -Dvs >> /etc/mdadm/mdadm.conf` (introducir la configuración de los raids en el archivo de conf)
- mdadm -C /dev/md/r1_0 -l1 -n2 /dev/sdb4 /dev/sdc4
- mdadm -C /dev/md/r1_1 -l1 -n2 /dev/sdd4 /dev/sde4
- mdadm -C /dev/md/r0_0 -l0 -n2 /dev/md/r1_0 /dev/md/r1_1
- watch cat /proc/mdstat
- wipefs (borrado)
- mdadm -S /dev/md/r0_0 (paramos los metadispositivos)
- mdadm --zero-superblock /dev/sd[bcde]4 (nos cargamos los superbloques)
- mdadm -S /dev/md127 (para el radi0)
- wipefs -af /dev/sd[bcd]1 (borramos)
- lv (logicos)
- vg (volúmenes)
- pv (particiones)
- pvdisplay
- pvcreate /dev/sdc4
- vgcreate volumen01 /dev/sdb4 /dev/sdb5 /dev/sdc4
- vgdisplay
- vgs
- lvcreate -L+2G volumen01
- lvcreate -L 1G -n lv_linear vg-01
- lvrename (se puede renombrar)
- mkfs.ext4 /dev/volumen01/lvol0 (se da formato)
- lvextend -L+1G /dev/volumen01/lvol0 (se agrega espacio)
- No crece el sistema de ficheros
- resize2fs /dev/mapper/volumen01-lvol0 (se redimensiona el sistema de fichero - manual)
  __Openstack__
- /opt/stack/devstack# ./unstack.sh && ./stack.sh
- `vagrant init ubuntu/trusty64`
- `vagrant up`
- `vagrant ssh`

## 19/12/2022

- mdadm --zero-superblock /dev/sd[bcde]4
  __Creamos un fichero como un disco__
- `/meta/raid5# dd if=/dev/zero of=./dsk.disk bs=4M count=500`
- `mkfs.btrfs ./dsk.disk`
- `mount ./dsk.disk /mnt/ `

____

- mkdir /meta/BBDD
- mkfs.btrfs -d raid1 -m raid1 /dev/sdc5 /dev/sdd5
- mount /dev/sdc5 /meta/BBDD/
- umount /meta/BBDD/
- btrfs filesystem show
- btrfs device scan
- mkfs.btrfs -f /dev/sdc5 /dev/sdd5
- btrfs device add -f /dev/sde5 /meta/BBDD/
- btrfs subvolume create /meta/BBDD/nodejs
- btrfs subvolume create /meta/BBDD/oracle
- btrfs subvolume snapshot /meta/BBDD/oracle/ /meta/BBDD/.orasnaphot
  __Virtualización__
- app -> virtualbox hypervisor
  
  |so so so|
  
  | hypervisor |
  
  | hardware |
  
  | Vmware |
- qemu (**QEMU** es un emulador genérico y de código abierto de máquinas virtuales)
- instalación de máquinas virtuales con qemu
  __Vagranfile__
- Ver manual de comandos
- `vagrant fichero` (aprovisionamos o creamos las máquinas)
- `vagrant status` (vemos las máquinas)
- y vemos en virtualbox las tres maquinas
- `vagrant ssh master` (nos conectamos al vagrant master por ssh)

## 20/12/2022
- Metodos de virtualización
- vmare 
- paravirtualización ()
__Contenedores__
- Fichero: Vagrant_provision (mirar)
- Modificar Vagranfile para aprovisionar
- `vagrant up` ( con el nuevo fichero modificado)
- `curl localhost` (agente de http)
- En Secos.mv
- Fichero: instalar_docker (instalar como muestra en los pasos)
- https://hub.docker.com/
- `docker search alpine`(buscamos por alpine)
- `docker pull`
- alpine apk instalación
- docker ps -a
- kamatera (nube)
- 
