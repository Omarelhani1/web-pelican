Title: Uso básico de Virsh
Date: 2021-10-12 20:32
Tags: virsh
Category: Cloud Computing
Slug: uso-basico-virsh
Author: Omar Elhani
Summary: Esto es solo el principio

##Uso básico de virsh 

###Entrega

* El contenido del fichero xml y la instrucción para crear la red interna.

![xml](/images/xml.png){width='400px'}

<pre>
virsh -c qemu:///system net-define red_interna.xml
</pre>

* Instrucciones para crear el volumen que contenga la imagen.

Creamos el volumen.
<pre>
virsh -c qemu:///system vol-create-as --format qcow2 --name debian --capacity 2GiB --pool default
</pre>
Copiamos el fichero en el volumen
<pre>
virsh -c qemu:///system vol-upload debian debiantest.qcow2 --pool default
</pre>

* Instrucción que permite montar la imagen para su modificación.
<pre>
modprobe nbd max_part=8
</pre>
<pre>
qemu-nbd --connect=/dev/nbd0 /var/lib/libvirt/images/debiantest.qcow2
</pre>
Para disconectar ejecutamos:
<pre> qemu-nbd -d nbd0 </pre>
Creamos directorio donde vamos a montar el disco.
<pre>
mkdir /mnt/nbd
</pre>
Montamos el disco en ese directorio
<pre>
mount /dev/nbd0p1 /mnt/nbd/
</pre>
Para desmontar:
<pre>
umount /mnt/nbd
</pre>
* Fichero XML de la definición del dominio.

![ficheroxml](/images/ficheroxml.png){width='300px'}

* Pantallazo donde se vea un acceso a la máquina por ssh.

![maquina1](/images/maquina1.png){width='300px'}

![maquina2](/images/maquina2.png){width='300px'}

![interfaces](/images/interfaces.png){width='300px'}
