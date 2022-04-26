subconjunto_2 <- minutos_jugados[1,,drop=F]
subconjunto_2

matplot(t(subconjunto_2), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores[1], pch=15:18, col=c(1:4,6), horiz = F)

"
Si se percata, en todas las anteriores clases, hemos
estado copiando una y otra vez un par de líneas de
código relacionadas a ejecutar la función 'matplot'
para una tarea en específica. 

Es medio engorroso pensar que, toda vez que queramos
ejecutar lo mismo, debamos escribir de nuevo todas
estas líneas de código.

Entonces, para evitarnos esa engorrosa tarea, 
podríamos encapsular todas estas líneas de código
dentro de una nueva 'función'; de tal manera que, 
toda vez que queramos ejecutar 'matplot' para 
crear nuestra gráfica, solo baste con llamar a la 
función que hemos creado y que ha encapsulado todas
las líneas de código que ejecutan nuestro 'matplot' 
propiamente.

"


"
En efecto, definamos qué es una función.

Una función es un bloque de código que se ejecuta
cada vez que lo llamamos, este bloque pretende 
realizar una tarea o acción en específica que es
pasada por nosotros.

Idealmente a las funciones se les pasa un nombre 
que haga referencia, propiamente, a la tarea que 
ejecuta; de hecho, con el nombre en sí es que se 
identifica el objeto de la función propiamente. 

El nombre se asigna a la función por medio de un 
puntero, tal como le asignamos un valor a una 
variable declarada.

"

"
Cómo se declara una función?

Para declarar una función en R se hace por medio 
de la palabra reservada 'function'. Probemos.

"

mi_1raFuncion <- function(){
  
  subconjunto_2 <- minutos_jugados[2:3,,drop=F]
  matplot(t(subconjunto_2), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=jugadores[2:3], pch=15:18, col=c(1:4,6), horiz = F)

}

"
Si corremos el anterior código se crea nuestra
primera función (lo podrá ver en el Global).

Ejecutemos!

"

mi_1raFuncion()

"
Importancia de los parámetros en una función

Para agilizar más el proceso de hacer uso de 
funciones, podemos asistirnos de parámetros.

Los parámetros se pasan dentro de los paréntesis.
Por ejemplo, vamos a introducir el parámetro 
'matrix_sel'y 'filas'.

Veamos.

"

mi_1raFuncion <- function(matrix_sel, filas=1:10)
  {
  subconjunto_2 <- matrix_sel[filas,,drop=F]
  matplot(t(subconjunto_2), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=jugadores[filas], pch=15:18, col=c(1:4,6), horiz = F)
}

"

Ejecutemos la misma función ahora con parámetros

"

mi_1raFuncion(juegos,)

"
Cuando se va a llamar a una función con 
parámetros, para que ya sea ejecutada, ahí el 
parámetro ya debe asumir su valor directamente.

Ahora, este valor, que es un valor pasado por 
nosotros mismos (o por otro), es variable; con 
lo cual, se agiliza más la ejecución de la 
función en caso que necesite, constantemente, 
cambiar los valores de sus parámetros y probar 
diferentes escenarios.

En nuestro caso puntual, el parámetro 'filas' 
no está siendo definido al llamar la función 
para que se ejecute; entonces, 'filas' asume 
valor por default y el parámetro 'matrix_sel' 
está siendo definido con la matriz 'juegos'.



Valor 'default' en un parámetro

Ahora, si en caso dado no le pasamos ningún valor
a un parámetro podemos dejar uno asignado por 
'default'; de hecho, eso hicimos con el parámetro
'filas'. 

'filas' tiene un valor por defecto de '1:10', 
quiere decir que si no le asignamos ningún valor 
al parámetro 'filas', al ser llamada la función 
'mi_1raFuncion' para que se ejecute, 'filas' 
asumirá el valor definido por 'default', 1:10.

"
