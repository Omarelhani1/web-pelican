Title: Como hacer un Pull Request 
Date: 2021-10-12 19:35
Tags: Va a estar to chulo
Category: Implantación de Aplicaciones Web
Slug: Pull Request
Author: Omar Elhani
Summary: Esto es solo el principio

**Pimer paso: Realizar un Fork**

Hacemos click en fork en la parte superior derecha y automáticamente creará en una instancia completa en prueba 

![fork](/images/fork.png/){widght='200px'}

**Segundo paso: Clonar el repositorio.**

Clonamos el repositorio que se nos habrá creado en nuestra cuenta via ssh.

**Tercer paso: Crear una rama**

La rama va a reflejar el trabajo que estamos realizando.

<pre>
git checkout -b omar
</pre>

**Cuarto paso: Realizar los cambios y confirmarlos.**

Hacemos los cambios en nuestro repositorio en nuestro caso creamos un fichero el directorio file con nuestras iniciales y modificamos el Readme.md y escribimos nuestras iniciales con un enlace al fichero creado.
Para poder verificar que hemos modificado el repositorio ejecutamos

<pre>
git status
</pre>

Añadimos el fichero creado con el comando:

<pre>
git add [nombredelfichero]
</pre>

Confirmamos los cambios:

<pre>
git commit -am "Cambios realizado"
</pre>

**Quinto paso: Enviar los repositorios a github**

Identificamos el nombre del repositorio remoto con el comando git remote en nuestro caso es origin
Enviamos los cambios a GitHub señalando la rama creada anteriormente :
<pre>
git push origin omar
</pre>

**Sexto paso: Crear el pull request** 

Vamos al repositorio de github pulsamos en pull request hacemos click en el y veremos que habrán llegado nuestros cambios y creamos el pull request.

Esperamos a que nuestro pull request sea aceptado.

**Séptimo paso: Sincronizar las ramas.**

Es conveniente que sincronicemos nuestro repositorio con el orginal antes de realizar pull requests para que se agreguen cambios desde la vez que realizamos el fork para tener el repositorio en su úlitma versión.

Primero nos cambiamos a la rama main:

<pre>
git checkout main
</pre>

Para poder extraer los cambios desde el repositorio original a tu versión local necesitamos agregar el repositorio original como un upstream.
<pre>
git remote add upstream [Url_https_propietario]
</pre>

Ahora pasamos a fusionar las ramas upstream/main a nuestra rama local.

<pre>
git merge upstream/main
</pre>

una vez hecho tendriamos ya las ramas sincronizadas. Si deseamos actualizar el repositorio de github ejecutamos:

<pre>
git pull upstream main
git push origin main
</pre>

Repositorio sincronizado:

[Url](https://github.com/Omarelhani1/prueba-pr-asir)
