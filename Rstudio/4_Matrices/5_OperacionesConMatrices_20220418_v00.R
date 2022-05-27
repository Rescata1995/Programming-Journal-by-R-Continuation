#Refresher

colnames(juegos)
juegos["LeBronJames", "2012"]



"
Introducción a Operaciones con Matrices


Importante:

Para operar varias matrices, digamos dos matrices entre 
sí, las matrices deben conservar el mismo tamaño en sus 
dimensiones; de lo contrario, R nos arrojaría un error. 
Las matrices deben tener el mismo número de filas y el 
mismo número de columnas.


Ejercicio 1.

Calcule cuántos tiros anotó, en promedio, cada jugador
por partido en cada temporada; es decir, el promedio
de tiros hechos por cada partido para cada temporada en 
específica. 

"

tiros_anotados
juegos

x_tiros <- round(tiros_anotados/juegos,2) 
x_tiros

"

Ejercicio 2.

Calcule cuántos minutos jugo, en promedio, cada jugador
por partido en cada temporada; es decir, el promedio
de minutos jugados por cada partido para cada temporada en 
específica. 

"

minutos_jugados
juegos

x_minutosJugados <- round(minutos_jugados/juegos,2)
x_minutosJugados
