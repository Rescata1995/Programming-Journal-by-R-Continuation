
"
Sobre los tipos de dato 'Factor' & La exploración de datos en general

"

#Practicing layers: 1. Data

Datos <- read.csv(file.choose())
head(Datos)

"
Extra: Tratamiento ideal de archivos con 'headlines' que usan símbolos 
       especiales y que, posteriormente, son importados en R.
       
Hay veces que los campos de un archivo importado en R vienen con nombres
o etiquetas que ocupan, dentro sí, simbologías. Por ej: %, $, o incluso 
paréntesis; a R se le dificulta interpretar este tipo de caracteres, 
por lo cual, los reemplaza con simples puntos (.)

Lo ideal en este tipo de casos es renombrar las columnas con la función
'colnames()'. Probamos esto con el dataframe 'Ratings+Peliculas', el
cual ya fue importado y almacenado en R dentro de la variable 'Datos'.

Tip: Evite el uso de tildes también en el nombramiento de sus campos.


"

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")

"
Echemos un vistazo de nuevo sobre los primeros 5 registros de 'Datos'
para constatar que renombramos con exito nuestras columnas del dataset
'Ratings+Peliculas'.

"

head(Datos)

"
Cambio efectuado con exito. Revisemos ahora la estructura de 'Datos'
para identificar cuáles son nuestros campos con tipo de dato 'factor';
es decir, cuáles son nuestras variables que resultan ser categóricas.

"

str(Datos)


"
1. Importancia de la función 'as.factor' & de todas las 'as. ...'

Cualquier función de tipo 'as. ...', una función propia del proceso 
de 'Data Transformation' o, en general, del 'Data cleaning' tiene la 
facultad de convertir y cambiar el tipo de dato de una columna pasada
que, se cree, no ha sido interpretada correctamente por R con su tipo
de dato original: generando problemas de 'Data inconsistency'.

Lo anterior nos está sucediendo ahora mismo con los campos 'Peliculas' 
& 'Genero', Rstudio los está reconociendo como 'chr' cuando no es así.
Los campos 'Peliculas' & 'Genero' deben ser reconocidos como 'factor'. 

Hay varias versiones de Rstudio que muestran este tipo de dato como 'chr'; 
es decir, de tipo 'character'. Si Rstudio no reconoce el tipo de dato 
'Factor', en consecuencia, no se mostrarían los 'levels' de dichos campos 
al tratar de visualizarlos con la función 'str()' o con la función 
'levels()' directamente. Para solucionar el anterior problema lo que 
se podría hacer es correr directamente la función 'as.factor()' sobre los 
campos tipo 'chr' que desee convertir de la tabla de su interés, en este
caso, de la tabla 'Datos'; y, posteriormente, esa conversión debe ser 
asignada de forma directa sobre los mismos campos de interés por medio de 
un puntero; es decir, en este caso puntual, le asignamos la conversión 
tanto a 'Datos$Peliculas' como a 'Datos$Genero'. Tal que así:

"

Datos$Peliculas <- as.factor(Datos$Peliculas)
Datos$Genero <- as.factor(Datos$Genero)


"
Ahora, tanto 'Peliculas' como 'Genero' conservan el tipo de dato 'factor'.

Extra: Exploración de datos, muy importante para evaluar consistencia.

Comprobemos que 'Peliculas' & 'Genero' ahora sí conservan un tipo de dato
'factor' con la función 'str()' o con la función 'levels()' directamente.

"

str(Datos)

levels(Datos$Peliculas)
levels(Datos$Genero)

"

Recuerde: Los 'levels', haciendo un símil con SQL, sería el equivalente a 
extraer los datos de un campo por medio de una sentencia de tipo 'DISTINCT'.

Adelanto: Es ideal, en R, que los campos que guardan fechas sean tratados 
también como campos de tipo 'Factor'. En muchas ocasiones R, por defecto, 
interpreta a las fechas como valores numéricos, por lo que, probablemente, 
le toque de nuevo hacer uso de la función 'as.factor' para corregir esta
posible inconsistencia y convertir las fechas en un campo de tipo 'factor'.

Más adelante verá que nuestro campo 'Año' está siendo tratado como campo
numérico por la forma en como la función 'summary' hace un resumen del 
mismo; esto no es lo deseado, nos tocará convertir sus datos a datos tipo 
'factor' para poder filtrar representaciones visuales según año de estudio;
es decir, para poder crear facetas según un año de estudio evaluado.

"


"
2. Revisión de la Estructura & tipo de dato de cada campo por medio de la 
función 'summary'

Se pretende visualizar algunas caracteristicas de los tipos de dato sobre 
cada campo del dataframe 'Ratings+Peliculas', almacenado en la variable 'Datos'. 
Tenga en cuenta que la función 'summary' hará un resumen de cada columna tomando 
en cuenta el tipo de dato que conserve la misma; es decir, no es el mismo
tipo de resumen que se ve en una columna con tipo de dato 'numérico' al 
resumen que se ve en una columna con tipo de dato 'factor' o categórico. 

"

summary(Datos)


"
2.1 Campos que almacenan fechas como campos con tipo de dato 'Factor' 
(o categóricos) para poder crear facetas con ellos.

Recuerde, son los campos categóricos los que nos permiten generar
facetas en la visualización de nuestros datos. Entonces, tenemos que
el campo 'Año' es un campo que almacena fechas; es decir, debe ser 
un campo categórico.

Puntualmente, en campos de tipo numérico lo que se ven son cálculos 
agregados; y, de hecho, observe que el campo 'Año' está siendo tratado, 
justamente, como campo de tipo numérico. En efecto, el tipo de dato de 
'Año' es 'Int' (son enteros) y esto no es lo que se busca. Lo que se busca 
es que el campo 'Año' sea tratado como una categoría, un campo 'factor',
para poder distinguir la información de un año con la información de otro
por medio de representaciones visuales separadas; es decir, poder generar 
'facetas' (una de las 7 capas de la gramática de gráficos).

Procedamos a cambiar el tipo de dato de 'Año' a 'Factor'.

"

Datos$Año <- as.factor(Datos$Año)

str(Datos)
