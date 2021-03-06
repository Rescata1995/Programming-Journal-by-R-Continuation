"

1. Vectores unidimensionales para asignar nombres de
filas y columnas de una matriz

Como lo hab�amos planteado antes, en R podemos poner
un nombre a cada una de las dimensiones de una 
matriz; para ser m�s precisos, podemos darle un 
nombre representativo tanto a cada fila como a cada 
columna de la matriz en cuesti�n.

En pr�ctica, lo que debe hacer es crear un vector
con los valores representativos para cada fila y otro
vector con los valores representativos para cada 
columna.

Dicho eso, la longitud de cada vector, para las filas
y columnas, debe ser correspondiente con la longitud 
de cada dimensi�n de la matriz, filas y columnas, 
respectivamente. Es decir, el vector para las filas 
se corresponde con la longitud de la dimensi�n para 
las filas en la matriz y el vector para las columnas
se corresponde con la longitud de la dimensi�n para
las columnas de la misma matriz en cuesti�n.


2. Funciones 'rownames' & 'colnames'

La funci�n con la que se le asigna a una matriz los 
los valores representativos para sus filas, por medio
de un vector, es: rownames(). La din�mica m�s o menos
es as�:

rownames(matriz) <- vector1 (vector para filas)


La funci�n con la que se le asigna a una matriz los 
los valores representativos para sus columnas, por 
medio de un vector, es: colnames(). La din�mica m�s 
o menos es as�:

colnames(matriz) <- vector2 (vector para columnas) 



3. Acceso a celdas por medio de los nombres asignados
a cada una de las filas y columnas de la matriz

Ahora, por medio de estos nombres asignados para cada
fila y para cada columna, usted tambi�n puede acceder
a los elementos de cada celda (ya no solo ser� 
posible con los n�meros equivalentes a la indexaci�n
o a la ubicaci�n de cada elemento o celda).

Si piensa acceder a un elemento de su matriz, por 
medio de estos nombres asignados, debe hacerlo
citando entre comillas el nombre asignado tanto a 
la fila como a la columna de su inter�s. Por ej.: 

A['Isabella','Efectivo']

Donde 'A' ser�a el nombre de la matriz,

'Isabella' ser�a el nombre de su fila de inter�s y

'Efectivo' ser�a el nombre de su columna de inter�s.

"