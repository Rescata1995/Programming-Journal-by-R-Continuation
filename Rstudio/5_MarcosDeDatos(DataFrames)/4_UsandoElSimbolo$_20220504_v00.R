

# Usando el símbolo del $

Data <- read.csv(file.choose())
Data

head(Data)

"
1. Formas de acceder a una celda de un Dataframe de forma convencional

Las formas de acceder a una celda, en Marcos de datos, son muy similares 
a las matrices; con una pequeña diferencia: como aquí dejan de existir 
los 'rownames', sólo existen 'colnames' (por decirlo de alguna manera), 
los valores de la primera columna no son más que eso: valores, datos crudos; 
ya no son las etiquetas que hacen referencia al conjunto de datos que hay
al interior de una matriz, no, sino que simplemente han pasado a ser los 
valores o datos para una columna más entre otras, para un campo más; en este
caso, para el 1er campo o columna de su marco de datos (uno más entre otros).

Dicho lo anterior, usted no puede acceder por medio del nombre de un dato
a otro dato de su marco de datos, no tendría sentido. Con las matrices 
era distinto porque, en la primera columna, realmente no habían datos crudos;
sino, etiquetas que definían datos al interior de la matriz (eran nombres,
etiquetas reales, referencias de los datos; no eran datos como ahora pasan 
a ser en un marco de datos).

Ahora, si te fijas bien de cerca, las filas realmente se enlistan por números 
y no se reconocen con nombres o etiquetas. 

Digamos que los marcos de datos estructuran sus tablas bajo la misma lógica
que lo hace Excel o SQL: Las filas están enumeradas y las columnas sí pueden
recibir nombres; además que cada columna puede poseer su propio tipo de dato.

Entonces, supongamos que queremos acceder al dato que está entre la columna 
3 y la fila 4, ese dato sería '12.877'. Las diferentes formas de acceder al
dato en cuestión son:

"
Data[4,3]
Data[4, "Tasa.Natalidad"]

"
Sin embargo, usted no podría hacer esto:

"
Data["Albania", 3]
Data["Albania", "Tasa.Natalidad"]

"
Porque 'Albania' realmente no es una etiqueta representativa de la fila 4;
sino, un valor más, común y corriente, de la columna 1; es decir, del campo
'Nombre.País', el cual sí es una etiqueta.

"

"
2. Formas de acceder a todos los elementos de una columna, para un Dataframe, 
   por medio de $

Sí, en efecto con el símbolo $ podemos acceder a todos los elementos de 
un campo asistiéndonos de un vector; es decir, se crea un vector en el que
se ubican todos los datos o valores para un determinado campo o columna 
pasada. 

Por ejemplo, supongamos que queremos acceder a todos los elementos del campo
'Tasa.Natalidad', del dataframe 'Data', por medio de un vector, sería así:

"

Data$Tasa.Natalidad

#Run 

# O las formas convencionales...

Data[,3]
Data[,"Tasa.Natalidad"]


"
2.1 Ahora sí, formas de acceder a la celda de una columna, para un Dataframe,
    por medio de $

Primeramente debe llamar al campo de su interés y, posteriormente, al 
elemento al que desearía acceder de dicho campo o columna en cuestión. 

Por ejemplo, queremos acceder al elemento num 4, lo mismo que decir fila 4, 
del campo o columna 'Tasa.Natalidad'.

La anterior consulta, en otras palabras, sería lo mismo que decir: 'que 
queremos acceder al dato que está entre la columna 3 (Tasa.Natalidad) y 
la fila 4... '; de hecho, esto fue nuestra 1ra consulta resuelta.

Entonces, para ambos casos, el output sería equivalente a '12.877'. Veamos.

"

Data$Tasa.Natalidad[4]

# O las formas convencionales...

Data[4,3]
Data[4,"Tasa.Natalidad"]
