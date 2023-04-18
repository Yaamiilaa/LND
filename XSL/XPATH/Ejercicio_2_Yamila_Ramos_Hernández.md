# Ejercicio 2
Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta 
deseada (mostrada en los cuadros).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <modulos>
    <modulo id="0228">
      <nombre>Aplicaciones web</nombre>
      <curso>2</curso>
      <horasSemanales>4</horasSemanales>
      <ciclo>SMR</ciclo>
    </modulo>
    <modulo id="0372">
      <nombre>Gestión de bases de datos</nombre>
      <curso>1</curso>
      <horasSemanales>5</horasSemanales>
      <ciclo>ASIR</ciclo>
    </modulo>
    <modulo id="0373">
      <nombre>Lenguajes de marcas y sistemas de gestión de 
      información</nombre>
      <curso>1</curso>
      <horasSemanales>3</horasSemanales>
      <ciclo>ASIR</ciclo>
      <ciclo>DAM</ciclo>
    </modulo>
  <modulo id="0376">
    <nombre>Implantación de aplicaciones web</nombre>
    <curso>2</curso>
    <horasSemanales>5</horasSemanales>
    <ciclo>ASIR</ciclo>
   </modulo>
 </modulos>
</ies>
```

* Nombre de los módulos que se imparten en el Instituto:

ies/modulos/modulo/nombre

* Nombre de los módulos del ciclo ASIR:

ies/modulos/modulo[ciclo='ASIR']/nombre

* Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo:

ies/modulos/modulo[curso=2]/nombre

* Nombre de los módulos de menos de 5 horas semanales:

ies/modulos/modulo[horasSemanales<5]/nombre

* Nombre de los módulos que se imparten en l primer curso de ASIR:

ies/modulos/modulo[curso=1 and ciclo='ASIR']/nombre

* Horas semanales de los módulos de más de 3 horas semanales:

ies/modulos/modulo[horasSemanales>3]/horasSemanales
