
"
Operaciones b�sicas con Dataframes

"
Data <- read.csv(file.choose())
Data

"
Intentaremos ver si, al igual que las Matrices, podemos trabajar
con subconjuntos en un Dataframe (subsetting).

Visualicemos, por ejemplo, las filas que van desde la 3 hasta la 9  
del dataframe 'Data' incluyendo todas sus columnas:

"
Data[3:9,]

"
Si te percatas, se hace de la misma forma a la de una matriz.
"

"
Hagamos una selecci�n personalizada de filas en el dataframe 'Data': 
Veamos solamente sus filas 4 & 100 incluyendo todas sus columnas.

"
Data[c(4,100),]

"
Si te percatas, la selecci�n personalizada de filas en un Dataframe,
se hace tambi�n de la misma forma a la de una matriz.

"

"
1. La estructura de un Dataframe, si extrae cualquier subconjunto 
   de filas, siempre se conserva... siempre

Si te fijas, con cada ejemplo, el n�mero de filas se ha mantenido,
lo cual traduce que se est� respetando la estructura del dataframe;
es decir, los resultados se arrojan hacen parte simplemente de una
consulta de datos, mas no se est�n alterando: se preservan.

La intenci�n de decir que la estructura de un Dataframe se preserva
se debe a que, incluso si hacemos la consulta de un subconjunto 
donde solo se extrae una �nica fila, la estructura propiamente 
del Dataframe nunca se pierde; contrario al caso de las matrices,
donde si regresabamos una fila de ella, creando un subconjunto de
una fila, la matriz se convert�a o pasaba a ser un vector.

Probemos esto.

"

is.data.frame(Data[1,])
#True

"
Es verdad que si solamente extraemos una fila del dataframe Data
se conserva la estructura y naturaleza del mismo; es decir, Data
continua siendo una dataframe. 

(No es necesario hacer uso de ning�n par�metro que haga las pases 
de 'drop' para conservar la naturaleza y estructura de un dataframe, 
por ejemplo; es decir, para que no se convierta en un vector).

"


"
2. La estructura de un dataframe s� se ve afectada si se extraen 
   los datos de una �NICA columna; es decir, el dataframe deja de ser.

Si por ejemplo, en un subconjunto, s�lo extraemos los datos de 
una columna (ignorando a las filas), tenemos que el dataframe 
pasar�a a convertirse en un vector. Probemos esto al llamar todos
los datos de la columna 3 del dataframe 'Data'.

"

is.vector(Data[,3])
#True

"
Es verdad que si solamente extraemos una columna del dataframe 
'Data' NO se conserva la estructura y naturaleza del mismo; 
entonces, el dataframe 'Data' pasa a ser un vector. Ahora,
esto es v�lido solamente si se extrae una �nica columna; si
extrae varias, la estructura del dataframe se conserva.

"


"
2.1 Uso del par�metro 'drop' para conservar, s� o s�, la estructura
    de un dataframe.

En la evaluaci�n del caso anterior, s� se hace necesario el uso 
del par�metro 'drop' para conservar la naturaleza y la estructura 
del dataframe (si es eso lo que se desea); es decir, si no queremos 
que 'Data[,3]' pase a ser un vector. 

Para lo anterior, definimos un 'drop' igual a 'F' dentro del 
subconjunto 'Data[,3]' (o cualquiera de nuestro inter�s).

Comprobemos que 'Data[, 3, drop=F]' efectivamente s� converva 
la naturaleza del objeto como un objeto de tipo 'dataframe' al ser
definido, como ya observo, su subconjunto con un par�metro 'drop' 
equivalente a 'F'.

"
Data[, 3, drop=F]
#Ahora s� tiene cara de Dataframe

is.data.frame(Data[, 3, drop=F])
#True


"
3. C�mo agregar una nueva columna en un dataframe existente + 
   operaciones matem�ticas en un Dataframe mediante el uso de $.
   
Empecemos con las operaciones. Vamos a multiplicar, por ejemplo, 
la columna 'Tasa.Natalidad' con la columna 'Penetracion.Internet'
que se encuentran en el dataframe 'Data'; entonces, el producto de 
esta operaci�n ser� asignado a una nueva variable que se llamar� 
'Product'. Veamos.

"

Product <- Data$Tasa.Natalidad * Data$Penetracion.Internet
Product 

"
Note que, como la multiplicaci�n es entre 2 columnas independientes 
provenientes de un Dataframe, el producto de la multiplicaci�n 
resulta ser otra columna completamente independiente; es decir, un 
vector por defecto. 

Recuerde que una columna por s� sola, de un dataframe, se convierte 
en un vector por defecto.

Ahora, para crear una nueva columna dentro del dataframe 'Data' debe:

A. Llamar el nombre del dataframe; en este caso, 'Data' (Data)
B. Asignar el s�mbolo de $ al dataframe llamado en cuesti�n (Data$)
C. Pasar un nombre completamente nuevo; lo que ser�a equivalente al
   nombre de la nueva columna en cuesti�n (Data$Nuevo_Columna)
   
Ahora, lo ideal ser�a entonces asignarle a esta nueva columna sus
valores; de lo contrario, no se crea columna nueva alguna. Definamos 
los valores de la columna 'Nuevo_Columna' con el nuevo vector 'Product'. 
   
Veamos.

"

Data$Nuevo_Columna <- Product

"
Vamos a imprimir el dataframe 'Data' para que note que, efectivamente,
hemos agregado la columna 'Nuevo_Columna' al dataframe 'Data'.

"

Data


"
4. Sobre 'Reciclado de vectores' en Dataframes.

IMPORTANTE: El 'reciclado de vectores' tambi�n se da en los dataframes,
especialmente se ve en las columnas nuevas que pretenda incorporar y que 
NO tengan con exactitud la misma longitud de las columnas ya existentes.

Ahora, lo dicho en su momento con las matrices, la longitud del 
dataframe, de las columnas actuales del dataframe, debe ser un m�ltiplo 
entero de la longitud real que se forma con los valores asignados para su 
nueva columna; longitud real, es decir, antes de iniciar el proceso de 
'reciclado' en el vector. (al menos esto debe cumplirse, de lo contrario, 
R marcar�a un error),

Por ejemplo, si tenemos que la longitud de nuestro dataframe 'Data' es
de 165; es decir, 165 registros... Para que una columna nueva, que se 
intenta incorporar por nosotros, pueda vincularse (y sin tener la 
longitud exacta del dataframe); la longitud del dataframe debe ser un 
m�ltiplo entero de la longitud real de nuestra nueva columna (esto, 
lo dicho, antes de iniciar el proceso de 'reciclado' en el vector);
por ejemplo, podr�a ser una columna de longitud real (inicial) de 5, 
10, 15, 20, 25 o 30, y as� sucesivamente, etc...

"


"
5. C�mo eliminar columnas existentes en un Dataframe.

Se ense�ar� con un ejemplo tomando como dataframe a 'Data' y como
columna para eliminar a 'Nuevo_Columna'. Preste atenci�n al c�digo:

"

Data$Nuevo_Columna <- NULL
#Listo!

"
Imprima de nuevo su dataframe, ya no ver� la columna 'Nuevo_Columna'

"

Data
