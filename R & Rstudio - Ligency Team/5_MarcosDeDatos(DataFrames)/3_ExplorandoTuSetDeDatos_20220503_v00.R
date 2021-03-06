"
Sobre c�mo saber explorar tus datasets importados

1. Imprimir el dataset importado.


2. Usar funciones para explorar tus datos:


- 2.1 Funciones: 'nrow()' & 'ncol()'

La funci�n 'nrow()' nos muestra el n�mero de filas que tiene 
nuestro dataset. Adicionalmente, sirve tambi�n para comprobar
que tu dataset s� fue importado de forma correcta en R y que 
no se ha quedado por fuera ninguna fila de la importaci�n.

El n�mero resultante es comparable con el n�mero que esperabas;
es decir, con el n�mero correspondiente al �ltimo registro
observado al imprimir el dataset.

'ncol()' revela el n�mero de columnas del dataset en cuesti�n.


- 2.2 Funci�n 'head()' & 'tail()'

La funci�n 'head()' nos muestra los primeros 6 registros
de nuestro dataset. Esta funci�n se hace muy �til, 
especialmente, cuando tenemos un dataset muy grande; 
pues, con ella adquieres una idea r�pida del tipo de dato 
contenido dentro de cada una de las columnas o campos de 
tu dataset.

'tail()', al contrario, nos revela los 6 �ltimos registros
del dataset en cuesti�n (muestra tambi�n los 'colnames').
'tail' tambi�n se vuelve �til para saber en qu� orden
se encuentran estructurados nuestros datos y bajo qu� 
criterio, o qu� campo o campos toma en cuenta, para hacer 
dicha ordenaci�n.


Par�metros para 'head()' & 'tail()'

Tanto 'head()' como 'tail()' pueden recibir par�metros;
por ejemplo, podemos definir la cantidad de filas que 
queremos ver a partir de las funciones 'head()' & 'tail()'.

Si quisieramos ver las 12 primeras filas de un dataset,
por ejemplo del dataset 'data', ser�a as�: 

head(data, n=12)

Ahora, si quisieramos ver las 15 �ltimas filas de un 
dataset, por ejemplo del dataset 'data', ser�a as�:

tail(data, n=15)


- 2.3 Funci�n 'str' & 'levels'

Nos permite conocer toda la estructura de nuestro dataset; 
es decir, conocer la naturaleza de cada una de nuestras
columnas y sus caracter�sticas al detalle. Por ejemplo,
con 'str' se puede conocer el tipo de dato que guarda cada 
una de las columnas y la cantidad de valores o datos, 
no duplicados, de cada una de ellas (llamados 'levels').

Como si fuera poco, podemos incluso saber los nombres 
explicitos de esos valores o datos, no duplicados, 
que pertenecen a cada una de las columnas en cuesti�n;
esto, al hacer uso de la funci�n 'levels' propiamente.

Supongamos que queremos conocer los 'levels' de la columna
'Grupo.Ingresos', del dataframe 'Data', ser�a as�:

"

levels(Data$Grupo.Ingresos)

# Se presentan los datos en un vector, confieso.


"
Las columnas o campos tambi�n se conocen como 'variables'.

Lo m�s importante de esta funci�n es que sirve de gu�a de 
referencia para saber, m�s adelante, a qu� grupo o campo
pertenencen potenciales datos que pretenda insertar.


Tipo de dato 'factor' o categ�rico.

De hecho, ver� que en el dataset 'Data' hay un 'tipo de
dato' nuevo para nosotros: 'Factor'. Cuando hablamos de
'Factor' nos referimos a las variables que son de tipo
'categ�rico'; es decir, cada valor para dicha variable o
columna define a un sub-conjunto que proviene de un conjunto: 
se refiere a formas textuales de clasificar algo que deriva 
de un todo, son clasificaciones o divisiones (categor�as).

Por ejemplo, la variable o campo 'Grupo.Ingresos', de nuestro
dataset 'Data', representa un todo: se trata de un conjunto.
Sin embargo, los 'Grupo.Ingresos' se dividen, se categorizan 
o se clasifican en: 'Ingreso bajo', 'Ingreso medio bajo', 
'Ingreso medio alto' e 'Ingreso alto'; cada uno de estos valores 
son subconjuntos de 'Grupo.Ingresos'; por lo cual, estamos 
frente a una variable de tipo 'factor' o categ�rica.

Entonces, tenemos que 'Grupo.Ingresos' es de tipo 'Factor' y
que posee 4 'levels'; pues, la cantidad de sus valores o datos
contenidos, no duplicados, es de cuatro (4).


- 2.4 Funci�n 'summary'

La funci�n 'summary' b�sicamente te da un desglose de cada
columna seg�n el tipo de dato que �stas guarden: te extrae
ciertos 'insights' de los datos que propiamente se guardan
en cada una de sus columnas. Pru�belo.

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



