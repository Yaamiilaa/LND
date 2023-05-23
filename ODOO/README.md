<div align='justify'>

# Sistema de gestión empresarial
La actividad consiste en realizar la instalación y despliegue del ERP Odoo. 

<div align='center'>
  
![Imagen 1](<https://github.com/Yaamiilaa/LND/blob/main/img/odoo.jpg>)
  
</div>

# índice:
1. [Introducción.](#introduccion)
###  Primera parte:
1. [Descarga e instala Odoo.](#odoo)
2. [Crea el usuario y la base de datos principal.](#usuario)
3. [Crea un sitio web.](#web)
4. [¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto.](#editar)
5. [Instala y prueba otro módulo que consideres interesante.](#instalar)
6. [Crea tu propio módulo de Odoo.](#crear)

### Segunda parte:
1. [¿Cuáles son las principales características y funcionalidades del ERP de Odoo?](#funcionalidades)
2. [¿Cómo puede el ERP de Odoo ayudar a las empresas a mejorar su eficiencia operativa?](#ERP)
3. [¿Qué módulos y aplicaciones adicionales ofrece Odoo para complementar su funcionalidad de ERP?](#empresas)
4. [¿Cuáles son las ventajas de utilizar el ERP de Odoo en comparación con otros sistemas similares en el mercado?](#mercado)
5. [¿Cuáles son los requisitos técnicos para implementar el ERP de Odoo en una empresa y qué consideraciones se deben tener en cuenta antes de iniciar la implementación?](#implementacion)

### Tercera parte:
1. [Descargar e instalar usando docker o MV el ERP Odoo.](#descargar)
2. [Crea el usuario y la base de datos principal.](#principal)
3. [Crea un sitio web.](#sitio)
4. [¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto.](#gusto)
5. [Instala y prueba el módulo de foro (Forum) desde la sección Apps.](#foro)
6. [Desinstala el módulo de foro.](#desinstala)
7. [Instala y prueba otro módulo que consideres interesante.](#interesante)
8. [Crea tu propio módulo de Odoo. En este paso, el objetivo es crear una estructura de archivos compatible con Odoo y que aparezca en la lista de Apps de la UI de Odoo.](#UI)

## Introducción. <a name='introduccion'>
Odoo es un paquete de aplicaciones, en principio dirigido a empresas, tanto grandes, pequeñas o medianas empresas, que permite gestionar de forma global todas las necesidades que se tengan en esa empresa, desde compras, ventas contabilidad, facturación, nóminas, gestión de redes sociales, recursos humanos y una infinidad de aspectos que se pueden gestionar desde el mismo software.

# Primera parte
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

# Segunda parte

## ¿Cuáles son las principales características y funcionalidades del ERP de Odoo? <a name='funcionalidades'>
Odoo es un sistema de planificación de recursos empresariales (ERP) de código abierto y modular que ofrece una amplia gama de funcionalidades para gestionar diferentes aspectos de una empresa. Estas son algunas de las principales características y funcionalidades de Odoo:

1. **Módulos integrados:** Odoo cuenta con una amplia variedad de módulos que abarcan áreas clave de una empresa, como ventas, compras, inventario, finanzas, recursos humanos, fabricación, CRM (Customer Relationship Management) y más. Estos módulos están integrados entre sí, lo que permite un flujo de información y datos coherente en toda la organización.

2. **Personalización y flexibilidad:** Odoo se destaca por su capacidad de personalización. Los módulos y funciones pueden adaptarse y configurarse según las necesidades específicas de una empresa. Además, se pueden añadir nuevos módulos desarrollados por terceros o incluso crear módulos personalizados para satisfacer requisitos únicos.

3. **Interfaz intuitiva:** Odoo ofrece una interfaz de usuario intuitiva y fácil de usar. La interfaz es moderna, limpia y está diseñada para facilitar la navegación y la realización de tareas.

4. **Gestión de ventas y CRM:** Odoo proporciona herramientas para administrar el proceso de ventas, desde la generación de oportunidades hasta la gestión de contratos y facturación. También incluye un módulo de CRM para administrar y realizar un seguimiento de las relaciones con los clientes.

5. **Gestión de compras:** Permite administrar todo el ciclo de compras, desde la solicitud de cotizaciones y la selección de proveedores hasta la recepción de productos y la gestión de facturas.

6. **Control de inventario:** Odoo ofrece funcionalidades avanzadas de gestión de inventario, como el seguimiento de movimientos de productos, gestión de ubicaciones, control de lotes y números de serie, gestión de stocks y optimización de inventario.

7. **Gestión financiera:** Incluye un conjunto completo de herramientas para gestionar las finanzas de una empresa, como contabilidad general, cuentas por pagar, cuentas por cobrar, conciliación bancaria, informes financieros y presupuestos.

8. **Gestión de proyectos:** Odoo permite planificar, asignar tareas y hacer un seguimiento del progreso de los proyectos. También facilita la colaboración entre equipos y el seguimiento del tiempo y los gastos.

9. **Recursos humanos:** Proporciona funcionalidades para gestionar aspectos relacionados con los empleados, como el seguimiento de asistencia, gestión de nóminas, contratación, evaluación de desempeño y beneficios.

10. **Comunidad y soporte:** Odoo cuenta con una gran comunidad de usuarios y desarrolladores activos que contribuyen con módulos adicionales, comparten conocimientos y brindan soporte. También hay opciones de soporte profesional y capacitación ofrecidas por Odoo y sus socios.

Estas son solo algunas de las características y funcionalidades clave de Odoo. Como sistema modular, su alcance y capacidades pueden ampliarse aún más con la adición de módulos y personalizaciones específicas para adaptarse a los requisitos empresariales.
  
## ¿Cómo puede el ERP de Odoo ayudar a las empresas a mejorar su eficiencia operativa? <a name='ERP'>
El ERP de Odoo puede ayudar a las empresas a mejorar su eficiencia operativa de varias maneras. A continuación, se presentan algunos aspectos en los que Odoo puede contribuir a este objetivo:

1. **Integración de procesos:** Odoo proporciona un sistema centralizado en el que todos los departamentos y funciones de una empresa pueden integrarse. Esto permite la comunicación fluida y la colaboración entre diferentes equipos y evita la duplicación de datos y tareas. Al eliminar silos de información, se agilizan los procesos y se mejora la eficiencia operativa.

2. **Automatización de tareas:** Odoo permite la automatización de tareas rutinarias y repetitivas. Por ejemplo, la generación automática de facturas, recordatorios de pago, envío de correos electrónicos, actualización de inventario, etc. Esto reduce la carga de trabajo manual y libera tiempo para que los empleados se centren en actividades más estratégicas.

3. **Gestión de inventario optimizada:** Odoo ofrece funcionalidades avanzadas de gestión de inventario, como el seguimiento en tiempo real de los niveles de existencias, la gestión de ubicaciones y la optimización de inventario. Esto permite una planificación más eficiente de las compras, evita la falta de stock o el exceso de inventario, y ayuda a reducir los costos operativos asociados con el inventario.

4. **Mejora de la visibilidad y toma de decisiones:** Odoo proporciona informes y análisis en tiempo real sobre diversas áreas de la empresa, como ventas, compras, finanzas, inventario, entre otros. Esto brinda a los gerentes y tomadores de decisiones una visión clara y actualizada de la situación de la empresa, lo que les permite tomar decisiones informadas y estratégicas para mejorar la eficiencia operativa.

5. **Gestión eficiente de proyectos:** Odoo incluye herramientas de gestión de proyectos que permiten planificar y monitorear proyectos, asignar tareas, colaborar entre equipos y hacer un seguimiento del progreso. Esto facilita la asignación adecuada de recursos, el cumplimiento de plazos y la identificación de cuellos de botella en los proyectos, lo que ayuda a mejorar la eficiencia operativa en la ejecución de proyectos.

6. **Optimización de procesos empresariales:** Con la capacidad de personalización de Odoo, las empresas pueden adaptar el sistema a sus procesos empresariales específicos. Esto permite la estandarización y optimización de los procesos, eliminando pasos innecesarios, simplificando flujos de trabajo y mejorando la eficiencia en general.

En resumen, el ERP de Odoo puede ayudar a mejorar la eficiencia operativa de las empresas al integrar procesos, automatizar tareas, optimizar la gestión del inventario, mejorar la visibilidad de la información, facilitar la gestión de proyectos y permitir la optimización de los procesos empresariales. Al mejorar estos aspectos, las empresas pueden lograr una mayor productividad, reducir costos y mejorar la toma de decisiones.
  
## ¿Qué módulos y aplicaciones adicionales ofrece Odoo para complementar su funcionalidad de ERP? <a name='empresas'>
Además de los módulos principales de ERP, Odoo ofrece una amplia gama de módulos y aplicaciones adicionales que complementan su funcionalidad y permiten adaptarlo a necesidades empresariales específicas. Algunos de los módulos y aplicaciones adicionales más populares de Odoo incluyen:

1. **Odoo CRM:** Un módulo de gestión de relaciones con los clientes que permite realizar un seguimiento de clientes potenciales, oportunidades de venta, actividades de marketing y comunicación con los clientes.

2. **Odoo eCommerce:** Una aplicación para crear y gestionar una tienda en línea integrada con el ERP de Odoo, lo que facilita la gestión de pedidos, inventario y envíos desde una plataforma centralizada.

3. **Odoo Gestión de proyectos:** Un módulo para la planificación, seguimiento y gestión de proyectos, que permite asignar tareas, definir plazos, gestionar recursos y colaborar con equipos.

4. **Odoo Recursos humanos:** Un módulo para gestionar el ciclo de vida de los empleados, incluyendo la gestión de contratos, seguimiento de asistencia, evaluación de desempeño, administración de nóminas y beneficios.

5. **Odoo Marketing automatizado:** Una aplicación para automatizar las actividades de marketing, como el envío de campañas de correo electrónico, la gestión de eventos, la generación de leads y el seguimiento de conversiones.

Estos son solo algunos ejemplos de los módulos y aplicaciones adicionales disponibles en Odoo. La comunidad de Odoo y los socios de Odoo también contribuyen con una amplia gama de módulos de terceros que amplían aún más las capacidades del sistema para adaptarse a diversas necesidades empresariales.

## ¿Cuáles son las ventajas de utilizar el ERP de Odoo en comparación con otros sistemas similares en el mercado? <a name='mercado'>
El ERP de Odoo ofrece varias ventajas en comparación con otros sistemas similares en el mercado. Aquí están algunas de las ventajas clave de utilizar Odoo:

1. **Código abierto y modular:** Odoo es un sistema de código abierto, lo que significa que el software y su código fuente son accesibles y pueden modificarse según las necesidades de la empresa. Además, Odoo utiliza una arquitectura modular, lo que permite agregar o eliminar módulos según los requisitos específicos de cada empresa.

2. **Amplia funcionalidad:** Odoo ofrece una amplia gama de módulos y aplicaciones que cubren prácticamente todas las áreas de una empresa, incluyendo ventas, compras, inventario, finanzas, recursos humanos, marketing, fabricación y más. Esto evita la necesidad de implementar múltiples sistemas separados y permite una gestión integrada de los procesos empresariales.

3. **Flexibilidad y personalización:** Odoo se destaca por su capacidad de personalización. Los módulos y funciones pueden ser adaptados y configurados según las necesidades específicas de una empresa. También se pueden desarrollar módulos personalizados o agregar módulos de terceros para ampliar la funcionalidad.

4. **Interfaz intuitiva y fácil de usar:** Odoo cuenta con una interfaz de usuario intuitiva y fácil de usar. La interfaz es moderna y limpia, lo que facilita la navegación y la realización de tareas. Esto reduce la curva de aprendizaje y mejora la adopción por parte de los usuarios.

5. **Integración y flujo de información:** Odoo ofrece una integración completa entre sus diferentes módulos, lo que permite un flujo de información y datos coherente en toda la organización. Esto evita la duplicación de datos y mejora la colaboración y la toma de decisiones basada en información actualizada y precisa.

En resumen, algunas de las ventajas de utilizar el ERP de Odoo incluyen su naturaleza de código abierto y modular, su amplia funcionalidad, flexibilidad y personalización, su interfaz intuitiva, integración y flujo de información, la comunidad activa y el soporte, y los potenciales ahorros de costos. Estas ventajas hacen de Odoo una opción atractiva para las empresas que buscan un sistema ERP completo y adaptable a sus necesidades.
  
## ¿Cuáles son los requisitos técnicos para implementar el ERP de Odoo en una empresa y qué consideraciones se deben tener en cuenta antes de iniciar la implementación?  <a name='implementacion'>
Los requisitos técnicos para implementar el ERP de Odoo en una empresa pueden variar dependiendo de varios factores, como el tamaño de la empresa, el número de usuarios, la complejidad de los procesos y la carga de trabajo esperada. Sin embargo, aquí hay algunos requisitos técnicos generales y consideraciones a tener en cuenta antes de iniciar la implementación de Odoo:

1. **Servidor y entorno de alojamiento:** Odoo se puede implementar tanto en servidores locales como en la nube. Para una implementación local, se requiere un servidor con suficiente capacidad de procesamiento, memoria y espacio de almacenamiento para alojar la aplicación Odoo y la base de datos. Para una implementación en la nube, se debe seleccionar un proveedor de servicios en la nube confiable y compatible con Odoo.

2. **Base de datos:** Odoo es compatible con diferentes sistemas de gestión de bases de datos, como PostgreSQL, MySQL, Oracle y SQLite. Se debe seleccionar y configurar la base de datos adecuada según las necesidades y los recursos disponibles.

3. **Infraestructura de red:** Se debe asegurar una infraestructura de red confiable y escalable para permitir el acceso y la conectividad de los usuarios al sistema Odoo. Esto incluye la configuración de firewalls, enrutadores, switches y la asignación adecuada de ancho de banda para garantizar un rendimiento óptimo.

4. **Navegadores y dispositivos compatibles:** Odoo es compatible con varios navegadores web, como Chrome, Firefox, Safari y Edge. Se deben asegurar versiones actualizadas de los navegadores y dispositivos compatibles para acceder y utilizar el sistema Odoo de manera eficiente.

5. **Personalización y desarrollo:** Si se requiere personalización o desarrollo adicional para adaptar Odoo a las necesidades específicas de la empresa, se deben tener en cuenta los recursos técnicos necesarios, como programadores con experiencia en Odoo y el conocimiento de los lenguajes de programación utilizados en el desarrollo de módulos en Odoo (Python y JavaScript).

6. **Capacitación y soporte:** Antes de iniciar la implementación de Odoo, se deben considerar los aspectos relacionados con la capacitación de los usuarios finales y el soporte técnico. Esto garantiza una adopción adecuada del sistema y una solución rápida de problemas durante y después de la implementación.

7. **Análisis de procesos empresariales:** Antes de implementar Odoo, es importante realizar un análisis exhaustivo de los procesos empresariales existentes y definir los objetivos y requisitos específicos de la implementación. Esto ayudará a diseñar la configuración y personalización adecuadas de Odoo para cumplir con las necesidades de la empresa.

8. **Planificación y fases de implementación:** La implementación de Odoo debe llevarse a cabo en etapas planificadas. Se debe definir un cronograma adecuado, establecer hitos y asignar recursos de manera efectiva para garantizar una implementación exitosa y minimizar interrupciones en la operación diaria de la empresa.

Estas son consideraciones generales para la implementación de Odoo, pero es importante tener en cuenta que los requisitos técnicos y consideraciones específicas pueden variar según las circunstancias y requisitos de cada empresa. Se recomienda buscar asesoramiento profesional y contar con un equipo de implementación experimentado para garantizar una implementación exitosa.
  
# Tercera parte
  
## Descargar e instalar usando docker o MV el ERP Odoo. <a name='descargar'>  
  
## Crea el usuario y la base de datos principal. <a name='principal'>
  
## Crea un sitio web. <a name='sitio'>
  
## ¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto. <a name='gusto'>
  
## Instala y prueba el módulo de foro (Forum) desde la sección Apps. <a name='foro'>
  
## Desinstala el módulo de foro. <a name='desinstala'>
  
## Instala y prueba otro módulo que consideres interesante. <a name='interesante'>
  
## Crea tu propio módulo de Odoo. En este paso, el objetivo es crear una estructura de archivos compatible con Odoo y que aparezca en la lista de Apps de la UI de Odoo. <a name='UI'>
