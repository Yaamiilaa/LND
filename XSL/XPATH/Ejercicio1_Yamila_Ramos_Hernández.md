# Ejercicio 1
Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta
deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
  <nombre>IES Puerto de la Cruz – Telesforo Bravo</nombre>
  <web>
  https://www3.gobiernodecanarias.org/medusa/edublog/iespuertodelacruzte
  lesforobravo/</web>
  <ciclos>
    <ciclo id="ASIR">
      <nombre>Administración de Sistemas Informáticos en Red</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2009" />
      </ciclo>
    <ciclo id="DAM">
      <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
      <grado>Superior</grado>
      <decretoTitulo año="2010" />
    </ciclo>
    <ciclo id="SMR">
      <nombre>Sistemas Microinformáticos y Redes</nombre>
      <grado>Medio</grado>
      <decretoTitulo año="2008" />
    </ciclo>
  </cicos>
</ies>
```

* Nombre del Instituto:

ies/nombre

* Página web del Instituto:

ies/web/text()

* Nombre de los Ciclos Formativos:

ies/ciclos/ciclo/nombre/text()

* Siglas por las que se conocen los Ciclos Formativos:

ies/ciclos/ciclo/@id

* Años en los que se publicaron los decretos de título de los Ciclos Formativos:

ies/ciclos/ciclo/decretoTitulo/@año

* Ciclos Formativos de Grado Medio (se trata de obtener el elemento <ciclo> completo):
  
ies/ciclos/ciclo[grado='Medio']
  
* Nombre de los Ciclos Formativos de Grado Superior:
  
ies/ciclos/ciclo[grado='Superior']/nombre
  
* Nombre de los Ciclos Formativos anteriores a 2010:
  
ies/ciclos/ciclo/decretoTitulo[año<2010] | ies/ciclos/ciclo/nombre
                                          
* Nombre de los Ciclos Formativos de 2008 o 2010:
                                          
ies/ciclos/ciclo/decretoTitulo[año=2008 and año=2010] | ies/ciclos/ciclo/nombre
