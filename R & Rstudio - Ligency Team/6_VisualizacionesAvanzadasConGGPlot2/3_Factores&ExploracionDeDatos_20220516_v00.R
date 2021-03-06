
"
Sobre los tipos de dato 'Factor' & La exploraci�n de datos en general

"

#Practicing layers: 1. Data

Datos <- read.csv(file.choose())
head(Datos)

"
Extra: Tratamiento ideal de archivos con 'headlines' que usan s�mbolos 
       especiales y que, posteriormente, son importados en R.
       
Hay veces que los campos de un archivo importado en R vienen con nombres
o etiquetas que ocupan, dentro s�, simbolog�as. Por ej: %, $, o incluso 
par�ntesis; a R se le dificulta interpretar este tipo de caracteres, 
por lo cual, los reemplaza con simples puntos (.)

Lo ideal en este tipo de casos es renombrar las columnas con la funci�n
'colnames()'. Probamos esto con el dataframe 'Ratings+Peliculas', el
cual ya fue importado y almacenado en R dentro de la variable 'Datos'.

Tip: Evite el uso de tildes tambi�n en el nombramiento de sus campos.


"

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")

"
Echemos un vistazo de nuevo sobre los primeros 5 registros de 'Datos'
para constatar que renombramos con exito nuestras columnas del dataset
'Ratings+Peliculas'.

"

head(Datos)

"
Cambio efectuado con exito. Revisemos ahora la estructura de 'Datos'
para identificar cu�les son nuestros campos con tipo de dato 'factor';
es decir, cu�les son nuestras variables que resultan ser categ�ricas.

"

str(Datos)


"
1. Importancia de la funci�n 'as.factor' & de todas las 'as. ...'

Cualquier funci�n de tipo 'as. ...', una funci�n propia del proceso 
de 'Data Transformation' o, en general, del 'Data cleaning' tiene la 
facultad de convertir y cambiar el tipo de dato de una columna pasada
que, se cree, no ha sido interpretada correctamente por R con su tipo
de dato original: generando problemas de 'Data inconsistency'.

Lo anterior nos est� sucediendo ahora mismo con los campos 'Peliculas' 
& 'Genero', Rstudio los est� reconociendo como 'chr' cuando no es as�.
Los campos 'Peliculas' & 'Genero' deben ser reconocidos como 'factor'. 

Hay varias versiones de Rstudio que muestran este tipo de dato como 'chr'; 
es decir, de tipo 'character'. Si Rstudio no reconoce el tipo de dato 
'Factor', en consecuencia, no se mostrar�an los 'levels' de dichos campos 
al tratar de visualizarlos con la funci�n 'str()' o con la funci�n 
'levels()' directamente. Para solucionar el anterior problema lo que 
se podr�a hacer es correr directamente la funci�n 'as.factor()' sobre los 
campos tipo 'chr' que desee convertir de la tabla de su inter�s, en este
caso, de la tabla 'Datos'; y, posteriormente, esa conversi�n debe ser 
asignada de forma directa sobre los mismos campos de inter�s por medio de 
un puntero; es decir, en este caso puntual, le asignamos la conversi�n 
tanto a 'Datos$Peliculas' como a 'Datos$Genero'. Tal que as�:

"

Datos$Peliculas <- as.factor(Datos$Peliculas)
Datos$Genero <- as.factor(Datos$Genero)


"
Ahora, tanto 'Peliculas' como 'Genero' conservan el tipo de dato 'factor'.

Extra: Exploraci�n de datos, muy importante para evaluar consistencia.

Comprobemos que 'Peliculas' & 'Genero' ahora s� conservan un tipo de dato
'factor' con la funci�n 'str()' o con la funci�n 'levels()' directamente.

"

str(Datos)

levels(Datos$Peliculas)
levels(Datos$Genero)

"

Recuerde: Los 'levels', haciendo un s�mil con SQL, ser�a el equivalente a 
extraer los datos de un campo por medio de una sentencia de tipo 'DISTINCT'.

Adelanto: Es ideal, en R, que los campos que guardan fechas sean tratados 
tambi�n como campos de tipo 'Factor'. En muchas ocasiones R, por defecto, 
interpreta a las fechas como valores num�ricos, por lo que, probablemente, 
le toque de nuevo hacer uso de la funci�n 'as.factor' para corregir esta
posible inconsistencia y convertir las fechas en un campo de tipo 'factor'.

M�s adelante ver� que nuestro campo 'A�o' est� siendo tratado como campo
num�rico por la forma en como la funci�n 'summary' hace un resumen del 
mismo; esto no es lo deseado, nos tocar� convertir sus datos a datos tipo 
'factor' para poder filtrar representaciones visuales seg�n a�o de estudio;
es decir, para poder crear facetas seg�n un a�o de estudio evaluado.

"


"
2. Revisi�n de la Estructura & tipo de dato de cada campo por medio de la 
funci�n 'summary'

Se pretende visualizar algunas caracteristicas de los tipos de dato sobre 
cada campo del dataframe 'Ratings+Peliculas', almacenado en la variable 'Datos'. 
Tenga en cuenta que la funci�n 'summary' har� en resumen de cada columna tomando 
en cuenta el tipo de dato que conserve la misma; es decir, no es el mismo
tipo de resumen que se ve en una columna con tipo de dato 'num�rico' al 
resumen que se ve en una columna con tipo de dato 'factor' o categ�rico. 

"

summary(Datos)


"
2.1 Campos que almacenan fechas como campos con tipo de dato 'Factor' 
(o categ�ricos) para poder crear facetas con ellos.

Recuerde, son los campos categ�ricos los que nos permiten generar
facetas en la visualizaci�n de nuestros datos. Entonces, tenemos que
el campo 'A�o' es un campo que almacena fechas; es decir, debe ser 
un campo categ�rico.

Puntualmente, en campos de tipo num�rico lo que se ven son c�lculos 
agregados; y, de hecho, observe que el campo 'A�o' est� siendo tratado, 
justamente, como campo de tipo num�rico. En efecto, el tipo de dato de 
'A�o' es 'Int' (son enteros) y esto no es lo que se busca. Lo que se busca 
es que el campo 'A�o' sea tratado como una categor�a, un campo 'factor',
para poder distinguir la informaci�n de un a�o con la informaci�n de otro
por medio de representaciones visuales separadas; es decir, poder generar 
'facetas' (una de las 7 capas de la gram�tica de gr�ficos).

Procedamos a cambiar el tipo de dato de 'A�o' a 'Factor'.

"

Datos$A�o <- as.factor(Datos$A�o)

str(Datos)
