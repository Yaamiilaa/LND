# XQuery

_Actividad XML - XQuery 2._

### Ejercicio 2

Dado el siguiente documento XML realiza las siguientes consultas con XQuery:

```
<?xml version="1.0" encoding="UTF-8"?>
<videojuego>
  <titulo>Valorant</titulo>
  <genero>Juego de disparos en primera persona</genero>
  <plataforma>PC</plataforma>
  <desarrollador>Riot Games</desarrollador>
  <fechaLanzamiento>2 de junio de 2020</fechaLanzamiento>
  <agentes>
    <agente>
      <nombre>Jett</nombre>
      <habilidadPrimaria tipo="Daño" duracion="4">Cuchillo Arrojadizo</habilidadPrimaria>
      <habilidadSecundaria tipo="Curación" duracion="0">Vientos Ligeros</habilidadSecundaria>
      <habilidadUltimate tipo="Daño" duracion="6">Tormenta de Cuchillos</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Brimstone</nombre>
      <habilidadPrimaria tipo="Daño" duracion="6">Granada Incendiaria</habilidadPrimaria>
      <habilidadSecundaria tipo="Curación" duracion="0">Estímulo de Combate</habilidadSecundaria>
      <habilidadUltimate tipo="Daño" duracion="4">Incendiario Orbital</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Viper</nombre>
      <habilidadPrimaria tipo="Daño" duracion="8">Nube Venenosa</habilidadPrimaria>
      <habilidadSecundaria tipo="Daño" duracion="6">Pantalla Tóxica</habilidadSecundaria>
      <habilidadUltimate tipo="Curación" duracion="12">Recolección Táctica</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Phoenix</nombre>
      <habilidadPrimaria tipo="Daño" duracion="4">Bola Curva de Fuego</habilidadPrimaria>
      <habilidadSecundaria tipo="Curación" duracion="0">Escudo Curativo</habilidadSecundaria>
      <habilidadUltimate tipo="Daño" duracion="6">Explosión Cósmica</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Sage</nombre>
      <habilidadPrimaria tipo="Curación" duracion="0">Orbe de Curación</habilidadPrimaria>
      <habilidadSecundaria tipo="Daño" duracion="4">Muro de Hielo</habilidadSecundaria>
      <habilidadUltimate tipo="Curación" duracion="5">Resurrección</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Cypher</nombre>
      <habilidadPrimaria tipo="Daño" duracion="4">Trampa Cibernética</habilidadPrimaria>
      <habilidadSecundaria tipo="Daño" duracion="7">Cámara Espía</habilidadSecundaria>
      <habilidadUltimate tipo="Curación" duracion="0">Ataque de Neurona</habilidadUltimate>
    </agente>
  </agentes>
</videojuego>
```
### 1.	Muestra el título del videojuego.
```
for $game in videojuego/titulo/text()
return $game
```
### 2.	Muestra la plataforma del videojuego.
```
for $game in videojuego/plataforma/text()
return $game
```
### 3.	Muestra el nombre de todos los agentes.
```
for $game in videojuego/agentes/agente/nombre/text()
return $game
```
### 4.	Muestra el nombre y la habilidad ultimate de todos los agentes.
```
for $name in videojuego/agentes/agente/nombre/text()
for $ultimate in videojuego/agentes/agente/habilidadUltimate/text() 
return <result>
<name>{$name}</name>
<ultimate>{$ultimate}</ultimate>
</result>
```
### 5.	Muestra los nombres de los agentes cuya habilidad primaria es "Incendiario".
```
for $game in videojuego/agentes/agente
where $game/habilidadPrimaria = "Incendiario"
return $game/nombre/text()
```
### 6.	Muestra los nombres de los agentes cuya habilidad ultimate es "Fénix".
```
for $game in videojuego/agentes/agente
where $game/habilidadUltimate = "Fénix"
return $game/nombre/text()
```
### 7.	Muestra las habilidades primarias de los agentes cuyo nombre empieza por "J".
```
for $game in videojuego/agentes/agente
where starts-with($game/nombre, 'J')
return <habilidadPrimaria>{$game/habilidadPrimaria/text()} </habilidadPrimaria>
```
### 8.	Muestra los nombres de los agentes cuyas habilidades primarias empiezan por "Bola".
```
for $game in videojuego/agentes/agente
where starts-with($game/habilidadPrimaria, 'Bola')
return <name>{$game/nombre/text()} </name>
```
### 9. Muestra los nombres de todos los agentes en orden alfabético.
```
for $game in videojuego/agentes/agente/nombre
order by $game
return $game
```
### 10. Muestra las habilidades primarias y secundarias de los agentes cuyo nombre contiene la letra "y".
```
for $game in videojuego/agentes/agente
where contains ($game/nombre, 'y')
return <result>
<habilidadPrimaria>{$game/habilidadPrimaria/text()}</habilidadPrimaria>
<habilidadSecundaria>{$game/habilidadSecundaria/text()}</habilidadSecundaria>
</result>
```
### 11. Muestra los nombres de los agentes cuya habilidad ultimate contiene la palabra "cuchillos".
```
for $game in videojuego/agentes/agente 
where contains ($game/habilidadUltimate, 'Cuchillos')
return <name>{$game/nombre/text()}</name>
```
### 12. Muestra las habilidades primarias de los agentes cuyo nombre contiene la letra "o" y la habilidad secundaria contiene la palabra "humo".
```
for $game in videojuego/agentes/agente 
where contains ($game/nombre, 'o') and contains ($game/habilidadSecundaria, 'humo')
return <habilidadPrimaria>{$game/habilidadPrimaria/text()}</habilidadPrimaria>
```
### 13. Muestra los nombres de los agentes que tienen exactamente tres habilidades.
```
for $game in videojuego/agentes/agente where count($game//*[contains(locl-name(), 'habilidad')]) = 3 return $game/nombre/text()
```
### 14. Muestra los nombres de los agentes cuya habilidad secundaria no es "Granada Cegadora".
```
for $game in videojuego/agentes/agente
where $game/habilidadSecundaria != 'Granada Cegadora'
return <name>{$game/nombre/text()}</name>
```
### 15. Muestra las habilidades primarias de los agentes cuyos nombres no contienen la letra "e".
```
for $game in videojuego/agentes/agente
where not (contains($game/nombre, 'e'))
return <habilidadPrimaria>{$game/habilidadPrimaria/text()}</habilidadPrimaria>
```
### 16. Muestra los nombres de los agentes cuyas habilidades primarias contienen la palabra "muro" o la palabra "barrera".
```
for $game in videojuego/agentes/agente
where contains($game/habilidadPrimaria, 'muro') or contains ($game/habilidadPrimaria, 'barrera')
return <name>{$game/nombre/text()}</name>
```
### 17. Muestra las habilidades ultimates de los agentes en orden alfabético inverso.
```
for $game in videojuego/agentes/agente/habilidadUltimate
order by $game descending
return $game/text()
```
### 18. Muestra los nombres de los agentes cuya habilidad ultimate tiene una duración mayor a 8 segundos.
```
for $game in videojuego/agentes/agente
where $game/habilidadUltimate/@duracion > 8
return <name>{$game/nombre/text()}</name>
```
### 19. Muestra el nombre del agente con la habilidad ultimate más corta.
```
let $min := min(for $game in videojuego/agentes/agente/habilidadUltimate/@duracion return $game)
for $game in videojuego/agentes/agente
where $game/habilidadUltimate/@duracion = $min
return <name>{$game/nombre/text()}</name>
```
### 20. Muestra los nombres de los agentes que tienen habilidades primarias y secundarias con la misma duración.
```
let $primaria := (videojuego/agentes/agente/habilidadPrimaria/@duracion)
let $secundaria := (videojuego/agentes/agente/habilidadSecundaria/@duracion)
for $game in videojuego/agentes/agente/nombre
where $primaria = $secundaria
return <name>{$game/text()}</name>
```
### 21. Muestra el nombre de los agentes que tienen habilidades primarias y secundarias que pertenecen al mismo tipo.
```
for $game in //agente
where $game/habilidadPrimaria/@tipo =$game/habilidadSecundaria/@tipo
return $game/nombre
```
### 22. Muestra los nombres de los agentes cuyas habilidades primarias son de tipo "Daño" y sus habilidades secundarias son de tipo "Curación".
```
for $game in videojuego/agentes/agente
where ($game/habilidadSecundaria/@tipo = 'Curación') and ($game/habilidadPrimaria/@tipo = 'Daño') 
return <name>{$game/nombre/text()}</name>
```
