
"
Visualizando Subconjuntos con Matplot()

"

"
Ejercicio de repaso. 

Refleje, visualmente, los minutos jugados por 
temporada para cada jugador.

"

matplot(t(minutos_jugados), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores, pch=15:18, col=c(1:4,6), horiz = F)

"
Ejercicio con Subconjuntos.

Ejercicio 1.

Refleje, visualmente, los minutos jugados por 
temporada para los tres primeros jugadores.

"

subconjunto_1 <- minutos_jugados[1:3,]
subconjunto_1

matplot(t(subconjunto_1), type="b", pch=15:18, col=c(1:4,6))

"Jugadores del 1 al 3, recuerde. Entonces, jugadores[1:3]"

legend("bottomleft", inset=0.01, legend=jugadores[1:3], pch=15:18, col=c(1:4,6), horiz = F)

"

Ejercicio 2.

Refleje, visualmente, los minutos jugados por 
temporada para KobeBryant.

"

subconjunto_2 <- minutos_jugados[1,,drop=F]
subconjunto_2
is.matrix(subconjunto_2)

matplot(t(subconjunto_2), type="b", pch=15:18, col=c(1:4,6))

"Jugadore KobeBryant, recuerde. Entonces, jugadores[1]"

legend("bottomleft", inset=0.01, legend=jugadores[1], pch=15:18, col=c(1:4,6), horiz = F)

"
Si se percató, fue necesario conservar la naturaleza
del objeto 'subconjunto_2' como objeto de tipo 'Matriz'
(al hacer uso del parámetro 'drop' y definirlo con 'F'); 
pues, todo subconjunto de una matriz que pretenda ser 
visualizado, incluso si se trata de un subconjunto de 
nivel 1, debe conservar su naturaleza como Matriz.

"
