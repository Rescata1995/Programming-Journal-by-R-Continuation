"
Sobre cómo saber explorar tus datasets importados

1. Imprimir el dataset importado.


2. Usar funciones para explorar tus datos:


- 2.1 Funciones: 'nrow()' & 'ncol()'

La función 'nrow()' nos muestra el número de filas que tiene 
nuestro dataset. Adicionalmente, sirve también para comprobar
que tu dataset sí fue importado de forma correcta en R y que 
no se ha quedado por fuera ninguna fila de la importación.

El número resultante es comparable con el número que esperabas;
es decir, con el número correspondiente al último registro
observado al imprimir el dataset.

'ncol()' revela el número de columnas del dataset en cuestión.


- 2.2 Función 'head()' & 'tail()'

La función 'head()' nos muestra los primeros 6 registros
de nuestro dataset. Esta función se hace muy útil, 
especialmente, cuando tenemos un dataset muy grande; 
pues, con ella adquieres una idea rápida del tipo de dato 
contenido dentro de cada una de las columnas o campos de 
tu dataset.

'tail()', al contrario, nos revela los 6 últimos registros
del dataset en cuestión (muestra también los 'colnames').
'tail' también se vuelve útil para saber en qué orden
se encuentran estructurados nuestros datos y bajo qué 
criterio, o qué campo o campos toma en cuenta, para hacer 
dicha ordenación.


Parámetros para 'head()' & 'tail()'

Tanto 'head()' como 'tail()' pueden recibir parámetros;
por ejemplo, podemos definir la cantidad de filas que 
queremos ver a partir de las funciones 'head()' & 'tail()'.

Si quisieramos ver las 12 primeras filas de un dataset,
por ejemplo del dataset 'data', sería así: 

head(data, n=12)

Ahora, si quisieramos ver las 15 últimas filas de un 
dataset, por ejemplo del dataset 'data', sería así:

tail(data, n=15)


- 2.3 Función 'str'

Nos permite conocer toda la estructura de nuestro dataset; 
es decir, conocer la naturaleza de cada una de nuestras
columnas y sus características al detalle. Por ejemplo,
con 'str' se puede conocer el tipo de dato que guarda cada 
una de las columnas y la cantidad de valores o datos, 
no duplicados, de cada una de ellas (llamados 'levels').

Las columnas o campos también se conocen como 'variables'.

Lo más importante de esta función es que sirve de guía de 
referencia para saber, más adelante, a qué grupo o campo
pertenencen potenciales datos que pretenda insertar.


Tipo de dato 'factor' o categórico.

De hecho, verá que en el dataset 'Data' hay un 'tipo de
dato' nuevo para nosotros: 'Factor'. Cuando hablamos de
'Factor' nos referimos a las variables que son de tipo
'categórico'; es decir, cada valor para dicha variable o
columna define a un sub-conjunto que proviene de un conjunto: 
se refiere a formas textuales de clasificar algo que deriva 
de un todo, son clasificaciones o divisiones (categorías).

Por ejemplo, la variable o campo 'Grupo.Ingresos', de nuestro
dataset 'Data', representa un todo: se trata de un conjunto.
Sin embargo, los 'Grupo.Ingresos' se dividen, se categorizan 
o se clasifican en: 'Ingreso bajo', 'Ingreso medio bajo', 
'Ingreso medio alto' e 'Ingreso alto'; cada uno de estos valores 
son subconjuntos de 'Grupo.Ingresos'; por lo cual, estamos 
frente a una variable de tipo 'factor' o categórica.

Entonces, tenemos que 'Grupo.Ingresos' es de tipo 'Factor' y
que posee 4 'levels'; pues, la cantidad de sus valores o datos
contenidos, no duplicados, es de cuatro (4).


- 2.4 Función 'summary'

La función 'summary' básicamente te da un desglose de cada
columna según el tipo de dato que éstas guarden: te extrae
ciertos 'insights' de los datos que propiamente se guardan
en cada una de sus columnas. Pruébelo.

"

Data <- read.csv(file.choose())
Data

nrow(Data)
ncol(Data)

head(Data)
tail(Data)

head(Data, n=12)
tail(Data, n=15)

str(Data)

summary(Data)



