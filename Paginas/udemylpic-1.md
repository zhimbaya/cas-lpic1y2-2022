# Certificación LPIC-1: Administrador de Linux. EXAMEN 101

## Sección 1: ¿Qué se estudia en este curso?

1. Si NO quieres examinarte de LPIC, mira esto.
2. Si QUIERES tener tu certificación LPIC, mira aquí.
3. ¿Cómo es el curso?
4. ¿Qué distribución de Linux elegir para el curso?

## Sección 2: Introducción

5. Nota recordatorio
6. Instalar Debian con VirtualBox
7. Instalar Linux en un PC con Windows

## Sección 3: LPIC - 101.1  Selección y configuración del hardware

8. Conceptos Iniciales
   
   - IRQ: Es una señal que se envía a la CPU para que gestione una petición hardware (teclado, ratón, etc..). Se muestran en 
     
     ```
     /proc/interrupts
     ```
   
   - DMA: El dispositivo puede acceder a bloques de memoria sin que sea necesaria la CPU. Fichero: 
     
     ```
     /proc/dma
     ```
   
   - Direcciones E/S: Trozos de memoria para que los dispositivos se comuniquen con la CPU. Fichero:
     
     ```
     /proc/ioports
     ```
   
   - coldplug/hotplug: Son dispositivos que se tienen que conectar en frío (cuando la máquina está apagada) o en caliente (mientras está en funcionamiento)

9. Sys, udev y más
   
   - Sysfs: Es un sistema virtual de ficheros que se encuentra en `/sys/`, donde se puede acceder a información sobre los dispositivos.
   - D-Bus: Permite que los procesos se comuniquen y se notifiquen eventos
   - udev: Sistema de archivos virtual en `/dev/` donde se crearán o eliminarán ficheros que representan dispositivos según estén disponibles o no. Detecta cuando se conectan y desconectan y actúa en consecuencia.

10. Práctica con un Pendrive USB

11. Información sobre el hardware: lspci y lsusb
    
    - `lspci`: Muestra información sobre los buses PCI y los dispositivos que tienen conectados.
      `-v` : Amplia la información. `-vv` : más detalles
      `-s` : Muestra información sólo del dispositivo seleccionado
    - `lsusb`: Muestra info sobre los buses y dispositivos usb conectados.
      `-v, -vv` y `-s` igual que lspci.
      `-t `: muestra información en árbol y la velocidad del puerto USB.

12. Módulos del kernel en el sistema operativo
    Los módulos son partes del kernel que podemos activar o desactivar para añadir o quitar funcionalidades. Tiene una relación muy estrecha con los drivers.
    Son archivos terminados con la extensión `.ko` que se almacenan en la ubicación
    
    ```
    /lib/modules/versión_del_kernel/
    ```
    
    - `lsmod`: Muestra módulos cargados en el sistema
    - `modinfo`: Amplia información de un módulo insmod: Carga un fichero .ko en el sistema
    - `rmmod`: Quita un módulo del sistema
      `-w` : Espera a que deje de utilizarse 
      `-f` : Fuerza el borrado

13. Práctica sobre un sistema real

14. 
