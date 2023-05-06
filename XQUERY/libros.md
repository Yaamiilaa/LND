### Ejercicio 1

Dado el siguiente documento XML realiza las siguientes consultas con XQuery:

```
<?xml version="1.0" encoding="UTF-8"?>
<bookstore>
  <book category="COOKING">
    <title lang="en">Everyday Italian</title>
    <author>Giada De Laurentiis</author>
    <year>2005</year>
    <price>30.00</price>
  </book>
  <book category="CHILDREN">
    <title lang="en">Harry Potter</title>
    <author>J K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>
  <book category="WEB">
    <title lang="en">XQuery Kick Start</title>
    <author>James McGovern</author>
    <author>Per Bothner</author>
    <author>Kurt Cagle</author>
    <author>James Linn</author>
    <author>Vaidyanathan Nagarajan</author>
    <year>2003</year>
    <price>49.99</price>
  </book>
  <book category="WEB">
    <title lang="en">Learning XML</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
  </book>
</bookstore> 
```
### 1.	Mostrar los títulos de los libros con la etiqueta "titulo".

for $book in bookstore/book/title return $book

### 2.	Mostrar los libros cuyo precio sea menor o igual a 30. Primero incluyendo la condición en la cláusula "where" y luego en la ruta del XPath.

for $book in bookstore/book/price
where $book <= 30
return $book

### 3.	Mostrar sólo el título de los libros cuyo precio sea menor o igual a 30.

for $book in bookstore/book
where $book/price <= 30
return $book/title

### 4.	Mostrar sólo el título sin atributos de los libros cuyo precio sea menor o igual a 30.

for $book in bookstore/book
where $book/price <= 30
return $book/title/text()

### 5.	Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con "lib2005".

for $book in bookstore/book
where $book/year = 2005
return <lib2005>
<titulo>{$book/title/text()}</titulo>
<autor>{$book/author/text()}</autor>
</lib2005

### 6.	Mostrar los años de publicación, primero con "for" y luego con "let" para comprobar la diferencia entre ellos. Etiquetar la salida con "publicacion".

for $book in bookstore/book/year
return <publicacion>{$book/text()}</publicacion>

let $book := bookstore/book/year
return <publicacion>{$book/text()}</publicacion>

### 7.	Mostrar los libros ordenados primero por "category" y luego por "title" en una sola consulta.

for $book in bookstore/book
order by $book/@category
order by $book/title
return  $book 
  
### 8.	Mostrar cuántos libros hay, y etiquetarlo con "total".

let $total := count(for $book in bookstore/book
return $book)
return <total>{$total}</total>

### 9.	Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.

let $total := count (/bookstore/book),
$titles := (
for $book in /bookstore/book/title
return <titles>{$book/text()}</titles>)
return<resultados>
<title>{$titles}</title>
<total>{$total}</total>
</resultados>


### 10.	Mostrar el precio mínimo y máximo de los libros.

let $min := min(bookstore/book/price)
let $max := max(bookstore/book/price)
return <resultados>
<max>{$max}</max>
<min>{$min}</min>
</resultados

### 11.	Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordénalos por precio con IVA.

 let $title := (for $book in bookstore/book/title
return $book)
let $price := (for $book in bookstore/book/price return $book)
let $price_iva := (for $book in bookstore/book/price return $book * 1.21)
return <resultados>
<titulo>{$title}</titulo>
<price>{$price}</price>
<price_with_iva>{$price_iva}</price_with_iva>
</resultados>
  
### 12.	Mostrar la suma total de los precios de los libros con la etiqueta "total".

let $total := /bookstore/book/price
return <total>{sum($total)}</total>

### 13.	Mostrar cada uno de los precios de los libros, y al final una nueva etiqueta con la suma de los precios.

let $total := /bookstore/book/price 
for $price in bookstore/book/price
return 
<resultados>
<price>{$price}</price>
<total>{sum($total)}</total>
</resultados>

### 14.	Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.

for $book in /bookstore/book
return 
<libro>
<title>{$book/title/text()}</title>
<autores>{count($book/author)}</autores>
</libro>

### 15.	Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título.

for $book in /bookstore/book
return 
<libro>
{$book/title/text()} ({count($book/author)})
</libro>

### 16.	Mostrar los libros escritos en años que terminen en "3".

for $book in bookstore/book/year
where ends-with($book, '3')
return $book

### 17.	Mostrar los libros cuya categoría empiece por "C".

for $book in bookstore/book/@category
where starts-with($book, 'C')
return $book

### 18.	Mostrar los libros que tengan una "X" mayúscula o minúscula en el título.

for $book in bookstore/book/title
where contains($book, 'x') or contains($book, 'X')
return $book/text()

### 19.	Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.

for $book in bookstore/book/title/text()
return <books>
<title>{$book}</title>
<length>{string-length($book)}</length>
</books>

### 20.	Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétalos con "año".

for $book in distinct-values(bookstore/book/year)
return <año>{$book}</año>

### 21.	Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor.

for $book in distinct-values(bookstore/book/author)
order by string-length($book)
return <author>{$book}</author>

### 22.	Mostrar los títulos en una tabla de HTML.

for $book in bookstore/book/title/text()
return 
<tr>
<td>{$book}</td>
</tr>
