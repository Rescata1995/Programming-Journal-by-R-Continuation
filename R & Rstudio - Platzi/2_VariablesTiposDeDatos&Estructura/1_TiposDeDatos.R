install.packages("mtcars")
View(mtcars)

# Uso de funci�n 'str' como herramienta �til para limpieza de datos

str(mtcars)

"
Usamos la funci�n str() como herramienta �til para prop�sitos de limpieza 
de datos. 

Con la funci�n str() podemos comprobar si los datos son consistentes o no; 
es decir, probar que haya una consistencia entre los datos contenidos en 
cada columna con el tipo de dato que la columna dice o presume ser. 

Por ejemplo, hay ocasiones en las que una columna dice ser de tipo 'integer'
cuando realmente es una columna de tipo 'boolean', pues, s�lo contiene 
dos tipos de valores que describen la validez o no validez l�gica de una 
columna en cuesti�n. 

Lo anterior es lo que acontece con la columna 'am' del dataset 'mtcars'.

Usted puede formatear o transformar de manera correcta sus datos de tal 
manera que haya una consistencia entre ellos y el tipo de dato ideal para 
su columna. Ya conoce qu� funci�n emplear para cuando desee modificar 
el tipo de dato de una columna: las funciones tipo 'as. ...'

Tambi�n puede hacer uso de la funci�n class() para saber con exactitud a 
qu� tipo de dato pertenece la columna de un determinado dataset, 
funciona m�s o menos as�, a continuaci�n la sintaxis correcta de esta
funci�n: 'class(dataset_name$column_name)'

Donde 'dataset_name' ser�a el nombre del dataset donde se encuentra la 
columna de su inter�s y 'column_name' ser�a el nombre de la columna 
propiamente.

"

# Transformaci�n del tipo de dato

"
Vamos a corregir el tipo de datos de las columnas 'am' & 'vs', dicen ser
de tipo 'integer' cuando realmente son 'boolean'.

Tenga en cuenta que en R a las 'boolean' se les llama 'logical'. 

Hagamoslo!

"

# Transformaci�n del tipo de dato de la columna 'am'

class(mtcars$am)

mtcars$am <- as.logical(mtcars$am)

class(mtcars$am)


# Transformaci�n del tipo de dato de la columna 'vs'

class(mtcars$vs)

mtcars$vs <- as.logical(mtcars$vs)

class(mtcars$vs)


# str(mtcars)

str(mtcars)
