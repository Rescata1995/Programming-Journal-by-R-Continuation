subconjunto_2 <- minutos_jugados[1,,drop=F]
subconjunto_2

matplot(t(subconjunto_2), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores[1], pch=15:18, col=c(1:4,6), horiz = F)

"
Si se percata, en todas las anteriores clases, hemos
estado copiando una y otra vez un par de l�neas de
c�digo relacionadas a ejecutar la funci�n 'matplot'
para una tarea en espec�fica. 

Es medio engorroso pensar que, toda vez que queramos
ejecutar lo mismo, debamos escribir de nuevo todas
estas l�neas de c�digo.

Entonces, para evitarnos esa engorrosa tarea, 
podr�amos encapsular todas estas l�neas de c�digo
dentro de una nueva 'funci�n'; de tal manera que, 
toda vez que queramos ejecutar 'matplot' para 
crear nuestra gr�fica, solo baste con llamar a la 
funci�n que hemos creado y que ha encapsulado todas
las l�neas de c�digo que ejecutan nuestro 'matplot' 
propiamente.

"


"
En efecto, definamos qu� es una funci�n.

Una funci�n es un bloque de c�digo que se ejecuta
cada vez que lo llamamos, este bloque pretende 
realizar una tarea o acci�n en espec�fica que es
pasada por nosotros.

Idealmente a las funciones se les pasa un nombre 
que haga referencia, propiamente, a la tarea que 
ejecuta; de hecho, con el nombre en s� es que se 
identifica el objeto de la funci�n propiamente. 

El nombre se asigna a la funci�n por medio de un 
puntero, tal como le asignamos un valor a una 
variable declarada.

"

"
C�mo se declara una funci�n?

Para declarar una funci�n en R se hace por medio 
de la palabra reservada 'function'. Probemos.

"

mi_1raFuncion <- function(){
  
  subconjunto_2 <- minutos_jugados[2:3,,drop=F]
  matplot(t(subconjunto_2), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=jugadores[2:3], pch=15:18, col=c(1:4,6), horiz = F)

}

"
Si corremos el anterior c�digo se crea nuestra
primera funci�n (lo podr� ver en el Global).

Ejecutemos!

"

mi_1raFuncion()

"
Importancia de los par�metros en una funci�n

Para agilizar m�s el proceso de hacer uso de 
funciones, podemos asistirnos de par�metros.

Los par�metros se pasan dentro de los par�ntesis.
Por ejemplo, vamos a introducir el par�metro 
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

Ejecutemos la misma funci�n ahora con par�metros

"

mi_1raFuncion(juegos,)

"
Cuando se va a llamar a una funci�n con 
par�metros, para que ya sea ejecutada, ah� el 
par�metro ya debe asumir su valor directamente.

Ahora, este valor, que es un valor pasado por 
nosotros mismos (o por otro), es variable; con 
lo cual, se busca agilizar m�s la ejecuci�n de 
la funci�n en caso que necesite, constantemente,
cambiar los valores de sus par�metros y probar 
diferentes escenarios.

En nuestro caso puntual, el par�metro 'filas' 
no fue definido cuando se llam� la funci�n 
para que �sta sea ejecutada; entonces 'filas', 
para este caso puntual, asume un valor por 
default que fue pasado inicialmente; sin embargo, 
el par�metro 'matrix_sel' s� fue definido 
con la matriz 'juegos' al momento en que se 
llam� la funci�n para que sea ejecutada.



Valor 'default' en un par�metro

Ahora, si en caso dado no le pasamos ning�n valor
a un par�metro podemos dejar uno asignado por 
'default'; de hecho, eso hicimos con el par�metro
'filas' (tal como lo explicamos previamente). 

'filas' tiene un valor por defecto de '1:10', 
quiere decir que si no le asignamos ning�n valor 
al par�metro 'filas', al ser llamada la funci�n 
'mi_1raFuncion' para que se ejecute, 'filas' 
asumir� el valor definido por 'default': 1:10.

"
