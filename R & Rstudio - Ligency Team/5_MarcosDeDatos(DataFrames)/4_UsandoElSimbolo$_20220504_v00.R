

# Usando el s�mbolo del $

Data <- read.csv(file.choose())
Data

head(Data)

"
1. Formas de acceder a una celda de un Dataframe de forma convencional

Las formas de acceder a una celda, en Marcos de datos, son muy similares 
a las matrices; con una peque�a diferencia: como aqu� dejan de existir 
los 'rownames', s�lo existen 'colnames' (por decirlo de alguna manera), 
los valores de la primera columna no son m�s que eso: valores, datos crudos; 
ya no son las etiquetas que hacen referencia al conjunto de datos que hay
al interior de una matriz, no, sino que simplemente han pasado a ser los 
valores o datos para una columna m�s entre otras, para un campo m�s; en este
caso, para el 1er campo o columna de su marco de datos (uno m�s entre otros).

Dicho lo anterior, usted no puede acceder por medio del nombre de un dato
a otro dato de su marco de datos, no tendr�a sentido. Con las matrices 
era distinto porque, en la primera columna, realmente no hab�an datos crudos;
sino, etiquetas que defin�an datos al interior de la matriz (eran nombres,
etiquetas reales, referencias de los datos; no eran datos como ahora pasan 
a ser en un marco de datos).

Ahora, si te fijas bien de cerca, las filas realmente se enlistan por n�meros 
y no se reconocen con nombres o etiquetas. 

Digamos que los marcos de datos estructuran sus tablas bajo la misma l�gica
que lo hace Excel o SQL: Las filas est�n enumeradas y las columnas s� pueden
recibir nombres; adem�s que cada columna puede poseer su propio tipo de dato.

Entonces, supongamos que queremos acceder al dato que est� entre la columna 
3 y la fila 4, ese dato ser�a '12.877'. Las diferentes formas de acceder al
dato en cuesti�n son:

"
Data[4,3]
Data[4, "Tasa.Natalidad"]

"
Sin embargo, usted no podr�a hacer esto:

"
Data["Albania", 3]
Data["Albania", "Tasa.Natalidad"]

"
Porque 'Albania' realmente no es una etiqueta representativa de la fila 4;
sino, un valor m�s, com�n y corriente, de la columna 1; es decir, del campo
'Nombre.Pa�s', el cual s� es una etiqueta.

"

"
2. Formas de acceder a todos los elementos de una columna, para un Dataframe, 
   por medio de $

S�, en efecto con el s�mbolo $ podemos acceder a todos los elementos de 
un campo por medio de un objeto de tipo 'vector'; es decir, se crea un vector 
en el que se ubican todos los datos o valores para un determinado campo o 
columna pasada. 

Por ejemplo, supongamos que queremos acceder a todos los elementos del campo
'Tasa.Natalidad', del dataframe 'Data', por medio de un vector, ser�a as�:

"

Data$Tasa.Natalidad

#Run 

# O las formas convencionales...

Data[,3]
Data[,"Tasa.Natalidad"]


"
2.1 Ahora s�, formas de acceder a la celda de una columna, para un Dataframe,
    por medio de $

Primeramente debe llamar al campo de su inter�s y, posteriormente, al 
elemento al que desear�a acceder de dicho campo o columna en cuesti�n. 

Por ejemplo, queremos acceder al elemento num 4, lo mismo que decir fila 4, 
del campo o columna 'Tasa.Natalidad'.

La anterior consulta, en otras palabras, ser�a lo mismo que decir: 'que 
queremos acceder al dato que est� entre la columna 3 (Tasa.Natalidad) y 
la fila 4... '; de hecho, esto fue nuestra 1ra consulta resuelta.

Entonces, para ambos casos, el output ser�a equivalente a '12.877'. Veamos.

"

Data$Tasa.Natalidad[4]

# O las formas convencionales...

Data[4,3]
Data[4,"Tasa.Natalidad"]
