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
- __Parametros regionales__
- `locale` (variables)
- `cat /etc/locale.conf` (fichero de configuración de locale de alma)
- `dpkg-reconfigure locales` (configuración en debian)
- `dpkg-reconfigure tzdata` (configuración en debian del time zone)
- `ln -s /usr/share/zoneinfo/Europe/Madrid /etc/localtime` (eliminar fichero y reemplazarlo por el de Madrid)(debian)
- A 00000000 / 01111111 = 0 - 127 - 8 (mascara)
- B 10000000 / 10111111 = 128 - 191 - 16 
- C 11000000 / 11011111 = 192 - 223 - 24
- D 111 MULTICAST
- E 1111 EXPERIMENTACION
- `bc <<< "obase=2;255" ` (calcular el binario)
- [Ejercicios Bash](https://es.linux-console.net/?p=632#gsc.tab=0)
- NAT (direcciones públicas y privadas)
- 10/8
- 172.16/12
- 192.168/16
- PORT ADRESS TRASLATION = PAT = PUERTOS
- 8 MAC + FF
- netstat -r (muestra la tabla de rutas)
- ip del route / nuestra ip , gateway , mascara , flag , ventanas, interfaz

## 📅 30/11/2022

- Cambiar la ip automática a fija
- `vi /etc/network/interfaces`
- `systemctl restart networking`
- `vi /etc/NetworkManager/system-connections/enp0s3.nmconnection`
- `systemctl status NetworkManager`
- `nmtui` (interfaz de texto en alma)
- `ip address add 10.1.1.205/24 dev enp0s3` (agregar ip, alma, momentanea)
- 9
- `ifconfig enp0s8 up` (alma, levantar la red)
- `ifconfig enp0s8 down` (alma, desactivar la red)
- `nmcli dev status` (alma, ver el estado de la red)
- `sysctl` (ver configuración de la red)
- system-connections (archivos de configuración de las redes en alma)
- `cd /etc/NetworkManager/system-connections` (archivos que se han creado con la creación de la red)
- `nmcli con mod "Conexión cableada 1" ipv4.method manual ipv4.addr "192.168.1.9/16" (colocar la ip manual en modo cmd)`
- `tracepath google.com` (va mostrando los números de saltos)
- `apt install traceroute` (ver número de saltos)
- `apt install nmap` (sniffer)
- `/etc/nsswitch.conf` 
- `vi /etc/hosts` (agregar nombres de hosts)
- `vi /etc/protocols`
- `getent services | grep 13` (que protocolo es)
- `apt install xinetd` ( the extended Internet services daemon)
- `nc -l -p 666` (se abre un puerto)
- `nc localhost 17` (intento conectarme al puerto)
- `nc -l - 666 -e /bin/bash` (una shell reverse)
- `apt install apache2` ()

## 📅 01/12/2022

- `dhclient -v` (asigna una ip)
- `netplan apply` () 10.1.1. 208 (ubuntu server)
- [Cambiar de nombre](https://www.linuxadictos.com/cambiar-de-nombre-de-usuario.html)
- [Mensajes DHCP](https://sites.google.com/site/sriasir20152016/dhcp/4-tipos-de-mensajes-dhcp)
  
  ```
  set tabstop=4 
  set shiftwidth=4 
  set expandtab
  set number
  ```
- `cd /etc/xinetd.d/`
- `apt install xinetd` ()
- `dnf install nmap-ncat` (instala y crear socket alma)
- `ncat -l 666` (ponemos a la escucha el puerto 666)
- `nmap -sS alma` (escanear puertos)
- `firewall-cmd --list-ports` (alma)
- `firewall-cmd --add-port=666/tcp`
- `apt install isc-dhcp-server` (internet system consourci)
- `/etc/dhcp/dhcpd.conf`
  
  ```
  #servidor dhcp
  #cambiar el nombre de server
  #cambiar el dns
  ```

subnet 10.1.1.0 netmask 255.255.255.0 {
    range 10.1.1.150 10.1.1.200;
    option routers 10.1.1.1;
    option domain-name-servers 172.16.2.2;
}

```
- `systemctl status isc-dhcp-server.service`
- `systemctl umask | mask isc-dhcp-server.service`
- __OpenSSH__
- `/etc/shh/*` (archivos de configuración)
- `sshd_config`
- `apt install sshfs`
```

10.1.1.111    cubo
10.1.1.180    debian
10.1.1.181    alma
10.1.1.183    parrot
10.1.1.208    ubuntu

```
- `ssh-keygen -t ed25519` (gernerar un cert)(enter enter)
- `ssh-copy-id -i id_ed25519.pub ubuntu` (copiamos la clave pública)
- `ssh ubuntu` (probar)

## 02/12/2022
- __En un solo Servidor__
- `ssh-keygen -t ed25519` (generamos el cert con la palabra de paso)
- `ssh-copy-id -i id_ed25519.pub alma` (enviamos el cert pub al servidor)
- `ssh-agent` (en terminal)
- `SSH_AUTH_SOCK=/tmp/ssh-XXXXXXPZGjBF/agent.1131; export SSH_AUTH_SOCK; SSH_AGENT_PID=1132; export SSH_AGENT_PID;` (en terminal)
- `ssh alma` (nos solicita la palabra de paso)
```

- `eval $(ssh-agent)` (para automatizar lo cargamos en el inicio de sesión del usuario)
- `ssh-add`
  ```
- `vi .agente` (y agrego el eval)
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
- `` (dns raices)

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
- 
- 

---------

```bash
shred file_to_shred.txt
```

curl ifconfig.me

[Bash Prompt Generator](https://scriptim.github.io/bash-prompt-generator/)

[Gestión centralizada de Logs con Rsyslog - YouTube](https://www.youtube.com/watch?v=TpXZmtVoTQg&ab_channel=DenisEspinoza)
