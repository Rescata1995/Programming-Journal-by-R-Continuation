"

1. Vectores unidimensionales para asignar nombres de
filas y columnas de una matriz

Como lo habíamos planteado antes, en R podemos poner
un nombre a cada una de las dimensiones de una 
matriz; para ser más precisos, podemos darle un 
nombre representativo tanto a cada fila como a cada 
columna de la matriz en cuestión.

En práctica, lo que debe hacer es crear un vector
con los valores representativos para cada fila y otro
vector con los valores representativos para cada 
columna.

Dicho eso, la longitud de cada vector, para las filas
y columnas, debe ser correspondiente con la longitud 
de cada dimensión de la matriz, filas y columnas, 
respectivamente. Es decir, el vector para las filas 
se corresponde con la longitud de la dimensión para 
las filas en la matriz y el vector para las columnas
se corresponde con la longitud de la dimensión para
las columnas de la misma matriz en cuestión.


2. Funciones 'rownames' & 'colnames'

La función con la que se le asigna a una matriz los 
los valores representativos para sus filas, por medio
de un vector, es: rownames(). La dinámica más o menos
es así:

rownames(matriz) <- vector1 (vector para filas)


La función con la que se le asigna a una matriz los 
los valores representativos para sus columnas, por 
medio de un vector, es: colnames(). La dinámica más 
o menos es así:

colnames(matriz) <- vector2 (vector para columnas) 



3. Acceso a celdas por medio de los nombres asignados
a cada una de las filas y columnas de la matriz

Ahora, por medio de estos nombres asignados para cada
fila y para cada columna, usted también puede acceder
a los elementos de cada celda (ya no solo será 
posible con los números equivalentes a la indexación
o a la ubicación de cada elemento o celda).

Si piensa acceder a un elemento de su matriz, por 
medio de estos nombres asignados, debe hacerlo
citando entre comillas el nombre asignado tanto a 
la fila como a la columna de su interés. Por ej.: 

A['Isabella','Efectivo']

Donde 'A' sería el nombre de la matriz,

'Isabella' sería el nombre de su fila de interés y

'Efectivo' sería el nombre de su columna de interés.

"