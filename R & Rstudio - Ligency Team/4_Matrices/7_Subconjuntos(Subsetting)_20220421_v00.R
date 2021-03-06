
"
Introducci�n a Subconjuntos (Subsetting)

"

x <- c("a", "b", "c", "d", "e")
x

"
Subconjuntos de vectores 

Vamos a extraer un par de subconjuntos de Vectores
con el vector: 'x'. 

A partir del vector 'x' vamos a extraer dos vectores: 
uno de 2 elementos y otro de 1 elemento.

"

x[c(1,5)]
x[1]


"
Ahora, tambi�n podemos extraer subconjuntos de
Matrices

Vamos a extraer un par de subconjuntos de Matrices
con la matriz: 'juegos'. 

"

juegos


"
Ejercicio 1. Quiero ver solamente las estadisticas
de los 3 primeros jugadores y solamente para las 
temporadas 2010, 2011, 2012, 2013 & 2014.

Para llamar a un subconjunto en R, primero se deben 
llamar las filas que queremos y, posteriormente,
las columnas que deseamos. 

Las filas van desde la 1 a la 3 &
Las columnas van desde la 6 a la 10.

Recuerde, un subconjunto de una matriz tambi�n es 
una matriz.

Veamos.

"

juegos[1:3,6:10]


"
Ejercicio 2. Quiero solamente ver las temporadas 
2008 & 2009 para todos los jugadores.

"
juegos[1:10,4:5] 

"Existe otra forma... "

juegos[,c("2008","2009")]


"
Sin embargo, de las matrices tambi�n se pueden 
extraer subconjuntos como vectores; cuando ya
no estamos frente a un subconjunto de dos 
dimensiones, extraido de una matriz, estamos
hablando de un vector. Es decir, habr�a 
existencia de una fila sin columnas o de una 
columna sin filas. 

M�s adelante entender� que es un par�metro del 
subconjunto de su matriz el que, por defecto, 
cambia la naturaleza de su objeto: convierte la 
matriz en un vector al suprimir una dimensi�n 
(La prueba fehaciente, por lo menos visual, que 
nos devela que se ha suprimido una dimensi�n es 
que se deja de ver el 'rowname' o 'colname' de 
su matriz).

De hecho, vamos a extraer ahora un subconjunto
de la matriz 'juegos' que pasar� hacer un 
vector. Posteriormente, pruebe si est� frente 
un vector con la funci�n 'is.vector()'. Veamos.

Ejercicio 3. Observe todas las temporadas de 
juego para un s�lo jugador: KobeBryant.

"

juegos[1,]

"
Probemos que el subconjunto anterior no es 
una matrix y s� un vector.
"

is.matrix(juegos[1,])
is.vector(juegos[1,])

"
Ahora, para que R reestablezca que estamos 
frente a una matriz y no frente a un vector, 
del subconjunto que extrajo, se debe manipular 
directamente el par�metro del que hicimos 
menci�n antes. Este par�metro se llama: 'drop'.

'Drop', por defecto, es 'T'. 'Drop' elimina 
las dimensiones de un arreglo que solamente 
tiene un nivel. Es decir, convierte la matriz
en un vector al pasar dicho objeto de dos 
dimensiones en un objeto unidimensional.

Es justamente por lo anterior que si no se 
cambia el valor por defecto de 'Drop', 
que es 'T', siempre se eliminar�n las 
dimensiones de un arreglo que solamente 
tiene un nivel, resultando esto en un 'Vector'.

Siempre que su subconjunto, extraido de una 
matriz, sea de nivel 1... por defecto 
ser� considerado como un vector, pues, 
el par�metro: 'drop', por defecto, viene
definido con un valor de 'T'. 

Corramos ahora la �ltima l�nea de c�digo, 
pero definiendo un 'drop' con un valor de 
'F' para conservar nuestras dimensiones y, 
por lo tanto, conservar la naturaleza del 
objeto como un objeto de tipo 'Matriz' 
(De paso podr� ver, de nuevo, su 'rowname'
o 'colname' suprimida previamente).

"
juegos[1,,drop=F]

"

Evalue si el subconjunto en cuesti�n es una 
matriz ahora o no.

"

is.matrix(juegos[1,,drop=F])
is.vector(juegos[1,,drop=F])

(juegos[1,,drop=F])

"
Ahora nuestro subconjunto, que es de nivel 1,
s� conserva la naturaleza de un objeto 'Matriz'.

"

