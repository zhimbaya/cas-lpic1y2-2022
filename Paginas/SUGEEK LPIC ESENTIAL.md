# SUGEEK - LPIC 1 1001

### 1. Introducción

### Curso LPIC-1 Examen 101 Capitulo 101.1.1: BIOS y UEFI

### Curso LPIC-1 Examen 101 Capitulo 101.1.2: Comandos LSPCI y LSUSB

Muestra los buses pci de acuerdo a un número y verbose.

```
lspci -s 00.02.2 -v
```

Muestra sólo los módulos o kernel.

```
lspci -s 00.02.2 -k (solo módulos)
```

Muestra los buses usb verbose (mas información) del dispositivo (d).

```
lsusb -v -d 1781:0c9f
```

Lista los buses usb en forma de árbol (t).

```
lsusb -tv -d 13233.342
```

Muestra los buses usb.

```
lsusb -s 01:07
```

### Curso LPIC-1 Examen 101 Capitulo 101.1.3: Módulos y Controladores

Lista los módulos cargados y muestra (modulo , tamaño, número de veces utilizado, modulos dependientes).

```
lsmod | fgrep -i snd_hda_intel 
```

Información detallada del modulo , p (ignora otra información).

```
modinfo modulo -p
```

Se puede descargar o eliminar el módulo.

```
modprobe -r modulo (remove)
```

Archivo de configuración de los módulos, configuración por defecto.

```
/etc/modprobe.conf (persistentes)
/etc/modprobe.d (archivos por cada dispsitivo)
```

Bloquea o desactiva el o los módulos, también se suele crear un archivo para cada dispositivo dentro de modprobe.d.

```
blacklist.conf (bloquear dispositivo)
```

### Curso LPIC-1 Examen 101 Capitulo 101.1.4: Directorios PROC SYS y DEV.

Pseudo sistema de archivo, se cargan solo en tiempo de ejecución en memoria ram. información y configuración de los procesos en ejecución.

```
/proc
```

Archivos con información del sistema

```
/proc/cpuinfo (informaciónd de las cpus y vulnerabilidades)
/proc/interrupts (una lista de números de interrupciones por dispositivo)
/proc/ioports (enumero los puertos de entrada y salida)
/proc/dma (enumera a los canales, acceso directo a la memoria)
/proc/meminfo
/proc/partitions
```

Almacena información del dispositivo y datos del kernel.

```
/sys 
```

Dispositivos como tal y donde se montan.

```
/dev (punto de montanje)
```

Dispositivos en bloque

```
/dev/hda
/dev/fd0
/dev/sda1
/dev/nvme0n1p1
/dev/mmcblk0p1
```

Nomenclatura:
enp4s0 (disp tipo ethernet en, bus 4 p4, puerto pci 0 s0).
wlp2s0 (disp inal wl, bus2 p2, puerto pci 0 s0).
o (interfaz directamente en board).
x (sin ubicación, muestra la MAC).

### Curso LPIC-1 Examen 101 Capitulo 101.1.5: Taller 1 - En Vivo

```
lscpu (vemos vulnerabilidades)
```

### Curso LPIC-1 Examen 101 Capitulo 101.2.1: Arranque del Sistema.

BIOS (Boot Input/Output System)
Post - Bios - MBR - 512b
UEFI (Unified Extensible Firmware Interface)
Post - UEFI - lee el firmware de la partición ESP (fat32) - el cargador de arraque EFI carga el núcleo.

UEFI - admite Secure Boot
Archivo de configuración de usuarios administradores

```
visudo /etc/sudores
```

Opción de sudores para mostrar * para el password.

```
Defaults pwfeedback
```

Archivo de configuración del grub - persitente.

```
/etc/default/grub
```

Comando de configuración cuando se edite el grub.

```
grub-mkconfig
```

Archivo de configuración del grub que se genera una vez actualizado.

```
/boot/grub/grub.cfg
```

### Curso LPIC-1 Examen 101 Capitulo 101.2.2: Arranque del Sistema 2

initramfs (initial RAM filesystem).
Sistema de archivos que contiene el kernel de forma temporal para el proceso de arranque.
Proporciona los módulos necesarios para que el núcleo pueda acceder al sistema de archivos raíz del sistema operativo.

```
/boot (tenemos los init)
```

Luego monta los sistemas de archivos y llama al programa init

```
/etc/fstab (unidades mapeadas)
```

Es resposable de ejecutar todos los scripts de inicialización y demonios.

```
init
```

SysV Estandar contiene los runlevel del 0 al 6.
Administrador moderno de sistemas y servicios y compatibilidad con SysV.

```
systemd
```

Fue el sistema de para acelerar el arraque en distribuciones Ubuntu.

```
upstart
```

Muestra y limpia los mensajes de inicio del sistema.

```
dmesg -H
```

```
dmesg --clear
```

Es donde se encuentran los log del sistema.

```
/var/log/syslog ó /var/log/messages
```

Lista los mensajes de inicio

```
journalctl --list-boots
```

Muestra información del anterior arraque.

```
journalctl -b 0
```

Cambia la ruta por defecto de los logs (ruta por defecto /var/log/journal).

```
journalctl -D directoriio
```

### Curso LPIC-1 Examen 101 Capitulo 101.2.3: Ejercicios Guiados de Arranque del Sistema.

### Curso LPIC-1 Examen 101 Capitulo 101.3.1: Introducción a Niveles de Ejecución.

Daemons
Servicios controlados por scripts.
init 0 ..6
Devuant (fork de Debian, sin systemd)

### Curso LPIC-1 Examen 101 Capitulo 101.3.2: Entendiendo SysVinit

SysVinit es un estandar pero que es sustituido por systemd.

Runlevel 0: apagado del sistema.

Runlevel 1: modo monousuario (modo mantenimiento).

Runlevel 2, 3, 4: modo multiusuario.

Runlevel 5: modo multiusuario e interfaz gráfica.

Runlevel 6: reincio del sistema.

Vemos el nivel de ejecución.

```
runlevel
```

Ficheros de configuración.

```
init 0 (proceso padre)
/sbin/init (demonio encargado de administrar los niveles de ejecución)
```

id:runlevel:action:prosess
id = hasta 4 caracteres
actions:

- boot: el proceso se ejecutará durante la inicialización del sistema. runlevels se ingnora.
- bootwait: el proceso se ejecutará durante la inicialización del sistema e init esperará hasta que termine para continuar. runlevels se ignora.
- sysinit: el proceso se ejecutará después de la inicializaión del sistema, independientemente del nivel de ejecución. runlevels se ignora.
- wait: el proceso se ejecutará para los niveles de ejecución dados e init esperará hasta que termine para continuar.
- respawn: el proceso se reinicará si finaliza.
- ctrlaldel: el proceso se ejecutará cuando el proceso init reciba la señal SIGINT.

id:runlevel:action:prosess

```
/etc/inittab (encontramos los niveles de ejecución)
```

Cada vez que se modifica que el archivo /etc/inittab se tiene que ejecutar el comando.

```
telinit q
```

```
/etc/init.d/ (scripts se pueden ejecutar)
```

ruta de archivos, enlaces simbólicos a los init.d

```
/etc/rc0.d
/etc/rc1.d
/etc/rc2.d
```

Dentro de ca RC.
k: eliminará al ingresar al nivel de ejecución.
s: iniciará al ingresar al nivel de ejecución.

### Curso LPIC-1 Examen 101 Capitulo 101.3.3: Introducción a SystemD.

- services

- device

- mount

- automount

- target

- snapshot
  
  ```
  systemclt action servicio
  ```
  
  Action:
  start, status, enable, disable, stop, restart, is-active, is-enabled.
  Para cambiar manualmente a otro objetivo.
  
  ```
  systemctl isolate multi-user.target
  ```
  
  Modos de cambio de runlevel del sistema
  
  ```
  systemctl set-default multi-user.target
  ```
  
  ```
  /etc/systemd/system/default.target
  ```
  
  Ver el runlevel actual.
  
  ```
  systemctl get-default
  ```
  
  ### Curso LPIC-1 Examen 101 Capitulo 101.3.4: SystemD y Upstart