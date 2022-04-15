
"
En R se usan 3 funciones diferentes para crear una 
matriz en tu script. 

1. función 'Matrix()'

Las que en la mayoria de veces estará usando:

2. función 'rbind()'
3. función 'cbind()'

"

"
1. función 'Matrix()'

La función 'Matrix' es fundamentalmente importante 
cuando se pretende crear una matriz que guarde datos
o valores generados por nosotros mismos en un vector
y cuando conocemos, de forma anticipada, 
la dimensión de la matriz que se pretende crear en 
términos de la cantidad de filas y 
columnas que necesitaremos.

En realidad la función 'Matrix' no se estára usando
mucho porque la mayoria de nuestros análisis se 
harán sobre tablas (matrices) importadas o con 
datos recolectados de tablas ya existentes 
(que no fueron diseñadas por nosotros mismos o que 
fueron previamente diseñadas desde otra fuente 
de datos)

Para cualquiera que sea el caso, la mayoria de 
veces estaremos hablando de tablas ya conformadas, 
diseñadas o no previamente por nosotros, 
no de un vector inicial que luego pretende ser 
convertido o pasado a una matriz... Es realmente 
por esto último que no es común usar la función 
'matrix' para crear matrices, pues, no es común 
pasar o convertir un vector a una matriz
(no es comun recolectar información de un vector); 
si no, tomar una tabla de otra fuente de 
datos y crearla como matriz dentro de R... porque
la información, de hecho, se presenta en tablas 
la mayoria de veces, no en vectores!

Lo que hace 'Matrix' es tomar un vector y 
lo convierte en una matriz; entonces, la dimensión
del vector debe ser multiplo de las dimensiones
de la matriz que plantea crear con 'Matrix'.


Ejemplo de creación de vector con función 'Matriz'.

Supongamos que tenemos un vector que va desde la 
letra 'A' hasta la letra 'O'. Si trataremos de 
crear una matriz, con la función 'Matrix'; cada uno 
de los valores del vector, que van desde la 'A' 
hasta la 'O', ocuparían las posiciones de las 
celdas (de la matriz) en forma de serpiente y de 
forma ordenada (colocandose el 1er elemento del 
vector, valor 'A', en la celda [1,1] de la matriz).

Este ejemplo será retratado en una imagen.

"


"
2. función 'rbind()'

'rbind' sí toma en consideración el hecho de que la 
mayoría de la información que pretende ser 
importada en R, para luego crear matrices con ella, 
ya viene estructurada en tablas; por lo que de un 
vector no va a nacer toda una matriz, no; sino que, 
cada vector creado representaría una FILA para la 
matriz que pretende crear.

Entonces, supongamos que queremos importar los 
datos de una tabla ya diseñada, previamente, desde 
otra fuente de datos. 

En el caso de 'rbind', habría que crear vector por 
vector, en R, considerando que cada uno de esos 
vectores serán tomados como FILAS de la matriz que 
posteriormente creará con la función 'rbind' y que 
representaría, a su vez, los mismos datos de la 
tabla inicial que fue tomada en cuenta.

Para 'rbind', la 1ra FILA de la matriz que creará
será el 1er vector pasado como parámetro dentro de 
su función, ... y así sucesivamente.

Tip: Luego de asignar sus vectores como FILAS, en 
su matriz creada con la función 'rbind', lo ideal 
es eliminar con la función 'rm' cada uno de los 
vectores creados que conformaron las FILAS de la 
matriz ya elaborada con 'rbind'.

La representación de la función 'rbind()' será 
retratada en una imagen.

"


"
3. función 'cbind()'

'cbind' también toma en consideración el hecho de 
que la mayoría de la información que pretende ser 
importada en R, para luego crear matrices con ella, 
ya viene estructurada en tablas; por lo que de un 
vector no va a nacer toda una matriz, no; sino que, 
cada vector creado representaría una COLUMNA para 
la matriz que pretende crear.

Entonces, supongamos que queremos importar los 
datos de una tabla ya diseñada, previamente, desde 
otra fuente de datos. 

En el caso de 'cbind', habría que crear vector por 
vector, en R, considerando que cada uno de esos 
vectores serán tomados como COLUMNAS de la matriz 
que posteriormente creará con la función 'cbind' y 
que representaría, a su vez, los mismos datos de 
la tabla inicial que fue tomada en cuenta.

Para 'cbind', la 1ra COLUMNA de la matriz que creará
será el 1er vector pasado como parámetro dentro de 
su función, ... y así sucesivamente.

Tip: Luego de asignar sus vectores como COLUMNAS, 
en su matriz creada con la función 'cbind', lo 
ideal es eliminar con la función 'rm' cada uno de 
los vectores creados que conformaron las COLUMNAS 
de la matriz ya elaborada con 'cbind'.

La representación de la función 'cbind()' será 
retratada en una imagen.

"

"
También hay vectores para definir los valores para 
el 'header row' & el 'header column'. Son los 
vectores de referencia con los cuales se identifican
los valores contenidos propiamente en la matriz ya
conformada. O sea, es recomendable que usted defina
un vector de valores para su fila superior y un 
vector de valores para su primera columna, con los
cuales se permite identificar al contenido propio
que hay dentro de la matriz.

Ahora, luego de que haya creado estos dos vectores, 
donde sus longitudes deben ser correspondientes con 
las dimensiones de la matriz, usted debe pasarle el
nombre de estos vectores a las funciones: 'rownames'
y 'colnames', de tal manera que los valores de estos
vectores se identifiquen como los valores de la fila
y columna superior, respectivamente.

Probaremos esto en un ejercicio.

"


"
En la creación de su matriz, para cualquier caso, 
lo ideal es que las dimensiones de los vectores con 
los cuales creará dicha matriz sean iguales; de no
ser así, se expone al riesgo de que en su matriz
haya 'reciclado de vectores' y habría que evaluar
muy bien si eso es lo que realmente desea o no.

"


"
Creemos par de matrices...
"

#Matrix() 

A <- 1:20

Matriz1 <- matrix(A, 4, 5)
Matriz1

"
Si se da cuenta, a partir de la longitud del vector
'A', hemos determinado las dimensiones de la Matriz
'Matriz1'. Tanto las 4 FILAS como las 5 COLUMNAS
de la 'matriz1' son múltiplos de la dimensión del
vector 'A': 20. (De hecho lo ideal es que al 
multiplicar las dimensiones de su matriz el 
resultado sea igual a la longitud del vector)

Entonces, según el ejercicio, la función 'matrix'
recibe tres parámetros: 1. El vector que pretende
convertir en matriz, 2. el número de filas para esa
matriz resultante y 3. el número de columnas para 
la misma matriz en cuestión.

Recuerde, la asignación de los valores del vector, 
en la matriz resultante de él, se da de forma 
ordenada y se asigna como el movimiento de una 
serpiente que parte desde la esquina superior 
izquierda hasta la esquina inferior derecha.

Pequeño ejercicio: Accedamos al número 10 de la 
matriz 'Matriz1'. Corra el siguiente código:

"

Matriz1[2,3]


#rbind() 

patrimonio <- c("Bancos", "Efectivo", "Deudas")

"
Los valores del vector 'patrimonio' definirán los 
valores del 'header row' de la matriz 'Matriz2';
es decir, los valores que irían en la 1ra fila...
Aunque realmente estos valores definirían el primer
valor para cada columna.

"


integrantes <- c("Isabella", "Gustavo", "Juancho","Roberto")

"
Los valores del vector 'integrantes' definirán los
valores del 'first column' de la matriz 'Matriz2';
es decir, los valores que irían en la 1ra columna...
Aunque realmente estos valores definirían el primer
valor para cada fila.

"

v1 <- c(5100,8400,-1500)
v2 <- c(7800,2450,-3950)
v3 <- c(2850,5300,-500)
v4 <- c(9120,7550,-800)

Matriz2 <- rbind(v1,v2,v3,v4)
Matriz2

rm(v1,v2,v3,v4)

rownames(Matriz2) <- integrantes
colnames(Matriz2) <- patrimonio

Matriz2


