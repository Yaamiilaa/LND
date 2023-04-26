# Ejercicio 1 de XQUERY

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bailes xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <baile id="1">
        <nombre>Tango </nombre>
        <precio cuota="mensual" moneda="euro">27</precio>
        <plazas>20</plazas>
        <comienzo>1/01/2012</comienzo>
        <fin>1/12/2012</fin>
        <profesor>Roberto Garcia</profesor>
        <sala>1</sala>
    </baile>

    <baile id="2">
        <nombre>Cha-cha-cha </nombre>
        <precio cuota="trimestral" moneda="euro">80</precio>
        <plazas>18</plazas>
        <comienzo>1/07/2012</comienzo>
        <fin>1/10/2012</fin>
        <profesor>Miriam Gutiérreza</profesor>
        <sala>1</sala>
    </baile>

    <baile id="3">
        <nombre>Rock </nombre>
        <precio cuota="mensual" moneda="euro">30</precio>
        <plazas>15</plazas>
        <comienzo>1/01/2012</comienzo>
        <fin>1/12/2012</fin>
        <profesor>Laura Mendiola</profesor>
        <sala>1</sala>
    </baile>

    <baile id="4">
        <nombre>Merengue </nombre>
        <precio cuota="trimestral" moneda="dolares">75</precio>
        <plazas>12</plazas>
        <comienzo>1/01/2012</comienzo>
        <fin>1/12/2012</fin>
        <profesor>Jesús Lozano</profesor>
        <sala>2</sala>
    </baile>

    <baile id="5">
        <nombre>Salsa </nombre>
        <precio cuota="mensual" moneda="dolares">32</precio>
        <plazas>10</plazas>
        <comienzo>1/01/2012</comienzo>
        <fin>1/12/2012</fin>
        <profesor>Jesús Lozano</profesor>
        <sala>2</sala>
    </baile>

    <baile id="6">
        <nombre>Pasodoble </nombre>
        <precio cuota="anual" moneda="euro">3200</precio>
        <plazas>8</plazas>
        <comienzo>1/01/2012</comienzo>
        <fin>1/12/2012</fin>
        <profesor>Miriam Gutierrez</profesor>
        <sala>2</sala>
    </baile>

</bailes>
```

1. Muestra el nombre de todos los bailes.

for $baile in bailes/baile
return $baile/nombre

/* Otra forma de hacer el ejercicio 1 */

for $baile in bailes/baile/nombre/text()
return $baile

2. Muestra el nombre y precio de todos los bailes.

for $baile in bailes/baile
let $precio := $baile/precio
return
<baile>
    <nombre>{$baile/nombre/text()}</nombre>
    <precio>{$baile/precio/text()}</precio>
</baile>

/* Otra forma de hacer el ejercicio 2 */

for $baile in bailes/baile
return 
<baile>
    <precio> {$baile/precio/text()}</precio>
    <nombre>{$baile/nombre/text()}</nombre>
</baile>

3. Muestra el nombre y precio de todos los bailes donde su precio es mayor que 40.

for $baile in bailes/baile
let $precio := $baile/precio
where $baile/precio > 40
return
<baile>
    <nombre>{$baile/nombre/text()}</nombre>
    <precio>{$baile/precio/text()}</precio>
</baile>


/* Otra forma de hacer el ejercicio 3 */

for $bailes/baile in bailes/baile
where $baile/precio > 40
return $baile/nombre/text()

4. Mostrar los bailes ordenados por nombre.

for $baile in bailes/baile/nombre/text() order by $baile
return $baile

5. Mostrar los nombres de los bailes que contienen una a.

for $baile in bailes/baile/nombre/text() where contains($baile, 'a')
return $baile

6. Mostrar el nombre de los bailes donde el apellido del profesor sea Lozano.

for $baile in bailes/baile where ends-with($baile/profesor/text(), 'Lozano')
return $baile/nombre/text()

7. Mostrar todos los bailes, excepto el 3 y 5.

for $baile in bailes/baile
where $baile/@id != 3 and 
$baile/@id != 5
return $baile/nombre/text()

8. Mostrar profesores que den clases de bailes por una cuota mensual.

for $baile in bailes/baile
where $baile/precio/@cuota = 'mensual'
return $baile/nombre/text()

9. Mostrar el nombre de los bailes de la sala 1, que se pague con euros y el precio sea menor a 35.

for $baile in bailes/baile
where $baile/sala = 1 and 
$baile/precio/@moneda = 'euro' and $baile/precio < 35
return $baile/nombre/text()
