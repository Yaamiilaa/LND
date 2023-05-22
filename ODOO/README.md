<div align='justify'>

# Sistema de gestión empresarial
La actividad consiste en realizar la instalación y despliegue del ERP Odoo. 

<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/odoo.jpg>)
  
</div>

# índice:
  
1. [Introducción.](#introduccion)
2. [Descarga e instala Odoo.](#odoo)
3. [Crea el usuario y la base de datos principal.](#usuario)
4. [Crea un sitio web.](#web)
5. [¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto.](#editar)
6. [Instala y prueba otro módulo que consideres interesante.](#instalar)
7. [Crea tu propio módulo de Odoo.](#crear)

## Introducción. <a name='introduccion'>
Odoo es un paquete de aplicaciones, en principio dirigido a empresas, tanto grandes, pequeñas o medianas empresas, que permite gestionar de forma global todas las necesidades que se tengan en esa empresa, desde compras, ventas contabilidad, facturación, nóminas, gestión de redes sociales, recursos humanos y una infinidad de aspectos que se pueden gestionar desde el mismo software.
  
## Descraga e instala Odoo. <a name= 'odoo'>
Para la instalación de Odoo en Windows tenemos que dirigirnos a esta [página](<https://www.odoo.com/es_ES/page/download>) y rellenar los campos con nuestros propios datos. 

<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_12.PNG>)
  
</div>
  
Una vez realizado este paso, deberemos elegir la versión de Odoo que queramos descargarnos. En mi caso, he descargado la versión 16. Como vemos en la siguiente imagen veremos que tenemos dos opciones **Odoo Community** y **Odoo Enterprise**. Nosotros elegiremos la primera opción ya que es gratis.
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_13.PNG>)
  
</div>
  
Después de esto, iremos a nuestro **explorador de archivos** y abriremos la aplicación de Odoo. Una vez se abrá la aplicación, se abrirá una nueva pestaña donde deberemos seleccionar el idioma. 
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_1.png>)
  
</div>

A continuación, se nos abrirá otra pestaña que nos muetsra la política de la empresa de Odoo. Deberemos aceptar esto porque si no no podremos seguir con la instalación. 

<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_2.png>)
  
</div>

Una vez realizado el paso anterior, la pestaña en la que estabamos nos dirigirá a otra pestaña que nos muestra la configuración de la conección de PostgreSQL. Yo elegí la configuración predeterminada pero si el usuario lo desea se puede cambiar por la que más desee. 
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_3.png>)
  
</div>
  
Después de esto, la instalación empieza a descargarse. Este proceso durrá un par de minutos. 
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_6.png>)
  
</div>
  
## Crea el usuario y la base de datos principal. <a name= 'usuario'>
En el apartado anterior vemos como vamos a crear nuestro usuario y nuestra base de datos.

## Crea un sitio web. <a name= 'web'>
Para crear nuestro propio sitio web deberemos ir al apartado de aplicaciones del siguiente [enlace](<localhost:8069/>). Ahora nos dirigimos al apartado de *Sitios Web* y activaremos el primer módulo.
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_14.png>)
  
</div>
  
Esta acción de activar el módulo anterior, nos dirigirá a una página donde comanzará el proceso de creación de nuestra propia página web. 

<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_10.png>)
  
</div>
  
Una vez seleccionada una de las opciones anteriores nos seguirá preguntando cosas de nuestra página para que al crearla tenga todo lo que le hemos especificado.
  
Por último, nos aparecerá un mensaje en la pantalla como que la página web se está creando. El mensaje será igual o parecido al siguiente.
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_11.png>)
  
</div>

## ¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto. <a name='editar'>
Para editar nuestro sitio web deberemos acceder a ella. Primero deberemos darle click al cuadradito en la esquina superior izquierda. Una vez realizado este paso, se nos abrirá un desplegable donde deberemos clicar en *Sitio web*.

<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_15.png>)
  
</div>

Después, deberemos buscar un botón que pone *Editar*. Ahora podemos empezar a editar nuestra página web a nuestro gusto.
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_16.png>)
  
</div>  
  
## Instala y prueba otro módulo que consideres interesante. <a name='instalar'>
Entre todos los módulos que he visto el más interesante es uno de hacer reuniones. Una vez activado, se nos abre en una nueva pestaña.

<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_17.png>)
  
</div>  
  
## Crea tu propio módulo de Odoo. <a name='crear'>
Para crear nuestro propio módulo desde la **terminal**. A continuación se mostrarán los pasos que se deben de seguir para poder crear nuestro propio módulo:

1. Abrir la terminal en modo **admnistrador**.
2. Abrir la carpeta **server** de Odoo como se muestra en la siguiente imagen.
3. Crear una carpeta. La podemos llamar como quieras, en mi caso, la llamé *module_addons*.
3. Escribir el siguiente comando: 
  ```
  "C:\Program Files\Odoo 16.0.20210517\python\python.exe" odoo-bin scaffold custom_module custom_addons
  ```
Gracias a este comando, podemos crear nuestro módulo en la carpeta seleccionada.
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_8.png>)
  
</div>

Una vez realizado este paso, deberemos abrir **Sublime Text** para poder añadir la carpera que creamos anteriormente en la configuración de Odoo. 

Esto, lo haremos en el archivo *odoo.conf* en *addons_path*. 
  
<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/cap_9.png>)
  
</div>
  
</div>
