"
Introducción a Subconjuntos (Subsetting)

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
Ahora, también podemos extraer subconjuntos de
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

Recuerde, un subconjunto de una matriz también es 
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
Sin embargo, de las matrices también se pueden 
extraer subconjuntos como vectores; cuando ya
no estamos frente a un subconjunto de dos 
dimensiones, extraido de una matriz, estamos
hablando de un vector. Es decir, habría 
existencia de una fila sin columnas o de una 
columna sin filas.

De hecho, vamos a extraer ahora un subconjunto
de la matriz 'juegos' que sea un vector.
Posteriormente, pruebe si está frente un
vector con la función 'is.vector()'. Veamos.

Ejercicio 3. Observe todas las temporadas de 
juego para un sólo jugador: KobeBryant.

"

juegos[1,]

"
Probemos que el subconjunto anterior no es 
una matrix y sí un vector.
"

is.matrix(juegos[1,])
is.vector(juegos[1,])

"
Ahora, para que R reconozca que estamos frente
a una matriz y no frente a un vector, debe 
asistirse de un parámetro que se llama: 'drop'

'Drop', por defecto, es true. 'Drop' elimina 
las dimensiones de un arreglo que solamente 
tiene un nivel. 

Es justamente por lo anterior que si no se 
cambia el valor por defecto de 'Drop', 
que es 'T', siempre se eliminarán las 
dimensiones de un arreglo que solamente 
tiene un nivel, resultando esto 'vectores'.

Siempre que su subconjunto, extraido de una 
matriz, sea de nivel 1... por defecto 
será considerado como un vector, pues, 
el parámetro: 'drop', por defecto, viene
definidoc con un valor de 'T'. 

Corramos ahora la última línea de código, 
pero definiendo un 'drop' con un valor 'F'.

Evalue si el subconjunto en cuestión es una 
matriz ahora o no.

"

is.matrix(juegos[1,,drop=F])
is.vector(juegos[1,,drop=F])

(juegos[1,,drop=F])

"
Si se percata, 'drop=F' también le asignaría 
una etiqueta a su subconjunto unidimensional
(vectores) en caso no haya.

"
