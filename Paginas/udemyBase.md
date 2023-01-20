# UDEMY BASH
### 1. Introducción
¿Qué es Linux?
- Sistema operativo
- GNU/Linux
- Software libre
- Comunidad
- Distribuciones (Debian, Redhat,...)
- Shell (bash, zsh, sh, fish, ...)

### 3. Instalar Linux en Windows con Virtualbox
### 4. Descripción del entorno
- Limpiar la terminal
```
clear
```
- Ver directorio actual
```
pwd
```
- Nombreusuario @ nombreservidor ~(path) $ (usurio/root)
### 5. Componentes de una orden: los parámetros
- Comando - modificador - parámetro
```
ls -l /home
```
### 6. Componentes de una orden: las opciones
- Las opciones pueden ir agrupadas o separadas
- COMANDO [OPCIONES] [PARÁMETROS]
- Con el comando le indico qué tiene que hacer, en las opciones cómo debe hacerlo y con los parámetros le indico los elementos donde tendrá que realizar la acción.

### 8. Navegar por los directorios y ver su contenido (cd, pwd y ls)
- Change directory
- cd va a mi directorio personal
```
cd
```
- pwd  print work direcotory
```
pwd
```
- l lista
- h humana
- S por tamaño
- r reversa
- t tiempo de modificación
```
ls -lhSrt
```
### 9. Las rutas. Tipos, usos y características
- Rutas absolutas: empieza por /
- Rutas relativas: NO empieza por /
- . (actual)
- .. (anterio)
- Respetar mayúsculas y minúsculas
- "nombre de longitud larga con ayuda de las dobles comillas"
### 10. Atajos en el uso del Bash.
- Cursor hacia arriba y hacia abajo
- Ayuda del Tabulador (autocompletar)
- Ayuda - historico
- Ctrl + r
```
history
```
-  !numero_instrucción
```
!354
```
### 11. Crear, mover y borrar ficheros y directorios (mkdir, touch, rm y mv)
- Crear un directorio
```
mkdir -p directorio/carpeta
```
- Borrar directorios
```
rm -r directorio
```
- Borra ficheros
```
rm fichero
```
- Crear ficheros
```
touch nombre_fichero
```
- Mover o cambiar ficheros y directorios, NO cambio el usuario y grupo propietario
```
mv origen destino/fichero
```
### 13. Copiar elementos
- Copia y a la vez cambia el usuario y grupo propietario
```
cp origen/fichero destino/fichero
```
- Copiar todo el contenido
```
cp -r directorio destino
```
### 14. Uso de comodines: el asterisco
- asterisco: todo o varios caracteres
### 15. Uso de comodines: la interrogación
- interrogación: un carácter
### 18. Información sobre usuarios y grupos
- Cambia a otro usuario
```
su
```
- Quien soy.
```
whoami
````
- A que grupo pertenezco
```
groups
```
- Ver el id del usuario y grupo
```
id
```

### 19. Crear usuarios, grupos, contraseñas y cambiar propietarios
- Crear un usuario
```
adduser nuevo_usuario
```
- Crear un grupo
```
addgroup
```
- Cambiar el grupo
```
usermod -g grupo_nuevo usuario
```
- Cambiar propietario y grupo a la vez
```
chown usuario:grupo fichero
```
- Solo el grupo
```
chown :grupo fichero
```
- Modificar la contraseña
```
password usuario
```
### 20. Los permisos en los ficheros
- lectura escritura ejecución
- usuario grupo otros
```
-rwx rwx rwx fichero
```
### 21. Los permisos en los directorios
- l link
- d directorio
- listar crear/eliminar acceder
```
drwx rwx rwx directorio
```
### 22. Cambiar permisos. Orden chmod
- De forma
```
chmod u+r,g+w,o+x fichero
```
- Solo establece este permiso
```
chmod u=r, g=w fichero
```
- De forma octal
```
chmod 777 fichero
```
### 24. Paquetes y repositorios
- Servidor en internet
- Actualizar el repositorio
```
apt update
```
- Buscar un paquete
```
apt-cache search vlc
```
- Eliminar un paquete
```
apt remove aplicación
```
- Eliminar totalmente el paquete (además ficheros de configuración)
```
apt purge aplicación
```
### 25. Administración con aptitude y Synaptic (entorno gráfico)
- aptitude (muestra un menú en modo texto).
```
aptitude search vlc
i instalado
p disponible
c archivos de configuración
```
- Synaptic: en modo gráfico.
### Fin
