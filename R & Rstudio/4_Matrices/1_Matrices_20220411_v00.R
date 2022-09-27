
"
Actualmente es normal que toda la información se 
almacene por medio de tablas, llamadas en R matrices. 
De aquí que R sea considerado un lenguaje fundamental 
para el análisis de datos, pues, R es un lenguaje 
diseñado para el manejo de vectores y matrices.

Dicho eso, como vas a estar trabajando con tablas, 
vas a necesitar saber cómo las matrices están 
estructuradas en R y cómo trabajar con ellas.

Si bien se recuerda de los vectores, éstos solamente
tienen una sola dimensión (se estructuran solamente
por filas). En cambio, las matrices se componen de dos 
dimensiones, pues, la estructura de una matriz se 
resuelve a partir de filas y columnas (no sólo filas).

Dicho lo anterior, debe haber una manera también de 
identificar las posiciones de las columnas; más que 
columnas, como la intersección de filas y columnas
conforman 'celdas', entonces la idea es identificar 
la posición de cada celda para cada matriz
(siendo más precisos)... 

Por lo anterior es que se requiere otro set de 
indexación, es decir, otra forma de enumerar las 
posiciones (porque ahora entran en juego no sólo 
las filas, sino también las columas).

Dicho lo anterior, como estamos ante dos dimensiones, 
por consiguiente, a cada celda se le identifica con 
dos números: el número identificativo de su columna
y el número identificativo de su fila... estos dos
números corresponderían al número de la posición de 
la celda en cuestión.

En qué orden se estructuran las posiciones de una 
matriz?

Pues bien, si quisieramos acceder a la celda de una 
matriz, primero se debe pasar la posición de la fila
y posteriormente, separado por una coma, la posición
de la columna, tal que así: 
"

A[3,4]

"
Si se percata, antes de pasar las posiciones por 
medio de corchetes [], se llama primero que todo
a la matriz de su interés... donde se ubica la celda
o el elemento al que desea acceder. A la matriz en 
nuestro anterior ejemplo se le llamó con el nombre 
de: 'A'.

Explicado lo anterior, si se quisiera obtener todos
los elementos de una fila o columna (una de dos), 
puede hacerlo de la siguiente forma... Observe el 
siguiente ejemplo.

Supongamos que solamente queremos todos los elementos
de la fila número 5 de una matriz que se llama: 'B'. 
Esto sería así: 
"

B[5,]

"
Ahora, supongamos que solamente quiero todos los 
elementos de la columna número 2 de una matriz que 
se llama 'C'. Esto sería así:
"

C[,2]

"
De momento, esta es la introducción necesaria para
abordar de lleno el tema de las matrices en R.

Es preciso decir que las matrices, al igual que los
vectores, sólo pueden interpretar un tipo de dato;
es decir, todos valores que hayan en una matriz deben
de ser de un mismo tipo de dato.

Por ejemplo, no puedes combinar números con 
carácteres... si lo intentas, la matriz 
interpretará todos tus números como valores 
de tipo 'carácter' (como sucede también con vectores).

"