#Refresher

colnames(juegos)
juegos["LeBronJames", "2012"]



"
Introducci�n a Operaciones con Matrices


Importante:

Para operar varias matrices, digamos dos matrices entre 
s�, las matrices deben conservar el mismo tama�o en sus 
dimensiones; de lo contrario, R nos arrojar�a un error. 
Las matrices deben tener el mismo n�mero de filas y el 
mismo n�mero de columnas.


Ejercicio 1.

Calcule cu�ntos tiros anot�, en promedio, cada jugador
por partido en cada temporada; es decir, el promedio
de tiros hechos por cada partido para cada temporada en 
espec�fica. 

"

tiros_anotados
juegos

x_tiros <- round(tiros_anotados/juegos,2) 
x_tiros

"

Ejercicio 2.

Calcule cu�ntos minutos jugo, en promedio, cada jugador
por partido en cada temporada; es decir, el promedio
de minutos jugados por cada partido para cada temporada en 
espec�fica. 

"

minutos_jugados
juegos

x_minutosJugados <- round(minutos_jugados/juegos,2)
x_minutosJugados
