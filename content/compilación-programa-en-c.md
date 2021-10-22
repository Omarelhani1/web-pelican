Title: Compilación de un programa en c
Date: 2021-10-12 19:14
Tags: Samba
Category: Sistemas Operativos
Slug: compilacion-programa-en-c
Author: Omar Elhani
Summary: Esto es solo el principio

**Modificación por Daniel Pérez**


En esta práctica he escogido el paquete Samba.

**Primer Paso: Crear un directorio en la ruta /opt**

Vamos a proceder a crear un directorio en la ruta /opt ya que en estos directorios es donde se suelen almacenar estos fichero y no en nuestro directorio personal

<pre> mkdir samba </pre>

**Segundo Paso: Descarga el paquete fuente.**

Una vez creado el directorio dentro de este vamos a descargarnos las fuentes.

<pre> sudo apt soure samba </pre>

Nos descargaŕá 3 archivos: un directorio samba desempaquetado, un paquete comprimido de samba y un fichero .dsc

**Tercer Paso: Ejecutar el ./configure**

Lo siguiente será cambiarnos al directorio samba desempaquetados y ejecutar ./configure para crear el makefile que en este caso ya está creado pero para asegurarnos de que no faltán dependecias.

<pre> ./configure </pre>

Nos muestra un fallo y es que nos falta el paquete lmdb versión 0.9.16 o superior. Añadimos ese paquete en el fichero /debian/control en el apartado build depends.

![dependencias](/images/dependecias.png){width='400px'}

Ahora pasamos a instalar las dependencias por lo que ejecutamos.
<pre> sudo apt-get build-dep samba </pre>

Este comando instalará las dependencias de samba definidas en el fichero control menos samba.

Después esto ejecutamos el configure y no nos dará ningún fallo.

**Cuarto Paso: Ejecutar el make.**

Una vez que tengamos ya el makefile listo ejecutamos.
<pre> make </pre>
Y empezará a compilar, tardará un poco.

**Quinto paso: Ejecutar make install**

Después de realizar toda la compilación ejecutamos.
<pre> make install </pre>
Esto mandará cada archivo a su destino y realizará la instalación.
  
Para realizar una desinstalación ejecutamos:

<pre> 
make uninstall
apt purge samba 
</pre>
