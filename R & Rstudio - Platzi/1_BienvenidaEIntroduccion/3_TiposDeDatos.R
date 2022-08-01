install.packages("mtcars")
View(mtcars)

# Uso de función 'str' como herramienta útil para limpieza de datos

str(mtcars)

"
Usamos la función str() como herramienta útil para propósitos de limpieza 
de datos. 

Con la función str() podemos comprobar si los datos son consistentes o no; 
es decir, probar que haya una consistencia entre los datos contenidos en 
cada columna con el tipo de dato que la columna dice o presume ser. 

Por ejemplo, hay ocasiones en las que una columna dice ser de tipo 'integer'
cuando realmente es una columna de tipo 'boolean', pues, sólo contiene 
dos tipos de valores que describen la validez o no validez lógica de una 
columna en cuestión. 

Lo anterior es lo que acontece con la columna 'am' del dataset 'mtcars'.

Usted puede formatear o transformar de manera correcta sus datos de tal 
manera que haya una consistencia entre ellos y el tipo de dato ideal para 
su columna. Ya conoce qué función emplear para cuando desee modificar 
el tipo de dato de una columna: las funciones tipo 'as. ...'

También puede hacer uso de la función class() para saber con exactitud a 
qué tipo de dato pertenece la columna de un determinado dataset, 
funciona más o menos así, a continuación la sintaxis correcta de esta
función: 'class(dataset_name$column_name)'

Donde 'dataset_name' sería el nombre del dataset donde se encuentra la 
columna de su interés y 'column_name' sería el nombre de la columna 
propiamente.

"

# Transformación del tipo de dato

"
Vamos a corregir el tipo de datos de las columnas 'am' & 'vs', dicen ser
de tipo 'integer' cuando realmente son 'boolean'.

Tenga en cuenta que en R a las 'boolean' se les llama 'logical'. 

Hagamoslo!

"

# Transformación del tipo de dato de la columna 'am'

class(mtcars$am)

mtcars$am <- as.logical(mtcars$am)

class(mtcars$am)


# Transformación del tipo de dato de la columna 'vs'

class(mtcars$vs)

mtcars$vs <- as.logical(mtcars$vs)

class(mtcars$vs)


# str(mtcars)

str(mtcars)
