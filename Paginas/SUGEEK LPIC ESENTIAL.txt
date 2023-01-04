SUGEEK - LPIC 1 1001

lspci -s 00.02.2 -v
lspci -s 00.02.2 -k (solo módulos)

lsusb -v -d 1781:0c9f
lsusb -tv -d 13233.342
lsusb -s 01:07

lsmod
lsmod | fgrep -i snd_hda_intel (modulo , tamaño, modulos dependientes)

modprobe -r modulo (remove)
modinfo modulo -p
/etc/modprobe.conf (persistentes)
/etc/modprobe.d (archivos por cada dispsitivo)
blacklist.conf (bloquear dispositivo)

/proc
/proc/cpuinfo
/proc/interrupts
/proc/ioports
/proc/dma
/proc/meminfo
/proc/partitions
/dev (donde se montan)
/sys (configuración de los dispositivos)

lscpu (vemos vulnerabilidades)

enp4s0 (disp tipo ethernet en, bus 4 p4, puerto pci 0 s0)
wlp2s0 (disp inal wl, bus2 p2, puerto pci 0 s0)
o (interfaz directamente en board)
x (sin ubicación, muestra la MAC)

visudo /etc/sudores
Defaults pwfeedback 
---
/etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
/boot (tenemos los init)
/etc/fstab (unidades mapeadas)
init
sysv 0 6
systemd
upstart
/var/log
journalctl --list-boots
journalctl -b 0 (anterior)
dmesg -H
journalctl -D directoriio (cambair ruta por defecto de logs)