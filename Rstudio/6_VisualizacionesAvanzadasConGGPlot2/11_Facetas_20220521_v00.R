Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", 
                     "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


"
1. Profundización sobre las Facetas e intro a función 
'facet_grid()'

Cuando se habla de la Capa de las Facetas, se refiere a 
las diferentes representaciones visuales que puede asumir
un gráfico luego de ser dividido en varias partes según 
el número de categorías que éste contenga; es decir, a 
partir de la 'granularidad de los datos' de un campo, se 
crean representaciones visuales por separado para cada 
uno de los 'levels' o categorías del campo en cuestión.

Generalmente el campo categórico del que hablamos se 
encuentra siendo Mapeado también dentro de su análisis, 
pero no es necesario.

La función que nos permite generar las facetas, de la 
capa de las Facetas, es: 'facet_grid()'.

Un ejemplo. Al categorizar o 'granular' los datos por 
nível de ingreso, suponiendo que tenemos un campo que
evalúa niveles de ingresos que pueden llegar a ser 
'altos', 'medios' & 'bajos' y los estamos mapeando, 
se crean tres (3) facetas; entonces, por cada nível 
de ingreso evaluado, se crea una 'faceta' o una 
representación visual distinguida.

Lo dicho. Con las facetas se crea una representación 
visual, propia, para cada una de las categorías 
(levels) de un campo al que decida mapear por medio 
de algún parámetro de la capa de las estéticas, tipo: 
'color', 'size', 'fill', etc.

"

"
1.1 Ejemplo sobre las Facetas & práctica de la función 
'facet_grid()' + utilidad de los símbolos '~.' & '.~'


Paa nuestro ejemplo actual, el tipo de gráfico con el
que estaremos trabajando será un Histograma, pero
tenga en cuenta que las facetas pueden generarse
sobre cualquier tipo de gráfico en general; es decir,
sobre cualquier capa de las geometrías.

Entonces, la idea es generar un histograma diferente
para cada una de las categorías o 'levels' del campo 
que decida Mapear; puntualmente, estaremos evaluando 
la cantidad de películas producidas para cada uno de 
los níveles de presupuesto invertidos en ellas; sin 
embargo, nos interesa dividir esta información por 
genero de película; es decir, se hará un 'Mapeo de 
Datos' con el campo 'Genero' para saber la cantidad de 
películas producidas, según Genero, para un nivel de 
presupueso dado. Dicho lo anterior, se creará un 
histograma diferente para cada categoría de película 
dentro de este análisis.

"

f <- ggplot(data=Datos, aes(x=Presupuesto_Millones))
f + geom_histogram(binwidth=10, aes(fill=Genero),
                   color="Black") + facet_grid(Genero~.)


"
Dentro de la función 'facet_grid()', si se percata, 
se pasa exactamente el mismo campo categórico que está 
siendo mapeado con alguno de sus parámetros de las 
Estéticas; en nuestro caso puntual, por ejemplo, el 
campo mapeado es 'Genero' & el parámetro que lo mapea 
es 'fill'. 

Adicionalmente, se agregan los símbolos claves '~.' 
al lado derecho (o izquierdo) del campo llamado en 
cuestión (Al lado izquierdo se vería así '.~'): 
todo esto dentro de los paréntesis de la función
'facet_grid()', tal como se ve en nuestro código.

Si pasa '~.' al lado derecho de su campo mapeado, se 
dividirá el gráfico en facetas que se organizarán en 
filas o renglones; mientras que, si pasa '.~' al lado 
izquierdo de su campo mapeado, se dividirá el gráfico
en facetas que se organizarán en columnas (opte por la 
opción que le facilite una mejor interpretación de su 
visualización).

De hecho, usted incluso puede pasarle campos NO mapeados
a su función 'facet_grid()'; y, voy más allá, puede 
incluso dividir su gráfico principal en filas y columnas 
al pasarle dos campos categóricos (mapeados o no) a los
dos lados de su símbolo clave '~'. 

Por ejemplo, algo tipo: 'facet_grid(Genero~Año)'...

"

"
1.2 Estudiando el caso 'facet_grid(Campo1~Campo2)' (~)

Cuando hay dos campos contenidos en 'facet_grid()',
esto significa que nuestros datos visualizados ya no 
sólo serán divididos, en representaciones visuales 
separadas, por cada uno de los 'levels' de un campo 
categórico; sino, por cada uno de los 'levels' de dos 
campos categóricos a la vez; es decir, la granularidad
de los datos se hace mayor: todo esto en función de 
la variable que esté analizando sobre el eje de las X,
es decir, serán los datos de la variable analizada 
sobre el eje de las X los que serán categorizados 
por los 'levels' de dos campos categóricos a la vez.
También podría analizar una variable sobre el eje de 
las X en comparación con otra variable que estaría
situada sobre el eje de las Y.

Cada representación visual por separada será el 
equivalente a una faceta; como se cruzan columnas y
filas, estas facetas se verán como celdas a raiz de
dicha intersección.

Digamos, si se crearon facetas a partir del campo 'Año' 
y el campo 'Genero', quiere decir que nuestros datos 
estarán granulados por 'Año' y 'Genero'; lo que 
significa que se distinguirá, por medio de 
representaciones visuales separadas, cada uno de los 
géneros de película para cada uno de los años de 
estudio. Dos ejemplos: Usted podrá ver los datos para 
el género de 'terror' en el año 2015 o los datos para 
el género de 'comedia' para el año 2018, etc. 
Qué datos? Pues, los datos que esté analizando de la 
variable situada sobre el eje de las X.


Retomando el ej. siguiente: 'facet_grid(Genero~Año)'...

Qué sucede en nuestro anterior ejemplo? Sucede que su
visualización principal dividirá cada uno de los años, 
del campo 'Año', en facetas que se organizarán en 
términos de filas separadas (para cada año); pero, 
además, su visualización principal dividirá cada uno 
de los generos de películas, del campo Genero, en 
facetas que se organizarán en términos de columnas 
separadas (para cada Genero).

Como vas a tener que tu visualización principal se va
a dividir entre filas y columnas, tus facetas se verán
visualizadas como Celdas; esto debido a la intersección 
que habría entre las filas y columnas en cuestión.

"

"
1.3 Ejemplo del caso 'facet_grid(Campo1~Campo2)' (~)

Nos interesa analizar la correlación entre los Ratings
de la Audiencia (eje de las X) & los Ratings de los 
Críticos (eje de las Y) comparándolos por año y genero;
situando a cada año y a cada genero, conjuntamente,
en representaciones visuales separadas (facetas).

Los años serán estructurados por columnas & los generos
serán estructurados por filas. Haga su análisis en un 
gráfico de dispersión.

Por último, queremos ver que haya una distinción visual 
del campo 'Genero' por medio de colores y una distinción
visual del campo 'Presupuesto_Millones' por medio de 
tamaños.

"
#RES:

d <- ggplot(data=Datos, aes(x=Rating_Audiencia,
                            y=Rating_Criticos,
                            color=Genero,
                            size=Presupuesto_Millones))

d + geom_point() + facet_grid(Genero~Año)

#Perfect!
  
"
2. Sincronización de Ejes & parámetro 'scales' de 
la función 'facet_grid()'

Por defecto las facetas vienen con escalas (o ejes) 
sincronizados; es decir, todas las facetas se rigen 
por unas mismas unidades definidas tanto para el eje de 
las X como para el eje de las Y, ... esto es realmente 
lo ideal; sin embargo a veces pasa, por ejemplo, que 
la categoría con los números más bajos dista mucho de 
la categoría con los números más altos; pues, se trata 
de facetas sincronizadas que guardan las mismas medidas 
sobre el eje de las X e Y. Como si fuera poco, las 
facetas elaboradas se apilan entre sí dentro de una 
misma hoja de trabajo y, he aquí el problema, muchas 
veces no se logra apreciar con claridad los datos 
contenidos en alguna de sus facetas, especialmente los 
datos contenidos dentro de la faceta con los números 
inferiores. 

Para darle solución a esto, muchas veces los analistas 
omiten la sincronizacion de las facetas al definir el 
parámetro 'scales', propio de la función 'facet_grid()',
con un valor de 'free'. Con 'free' cada histograma
tendría su propia escala. Veamos esto.

"

f <- ggplot(data=Datos, aes(x=Presupuesto_Millones))
f + geom_histogram(binwidth=10, aes(fill=Genero),
                   color="Black") + facet_grid(Genero~.,
                                               scales="free")


"
IMPORTANTE: Realmente es una mala práctica no tener
sincronizados los ejes de nuestras facetas; lo ideal,
en caso de que requiera ver mejor los datos contenidos
en cada una de sus facetas, es poder tener la facultad
de hacer zoom sobre cada uno de ellas. 

Hacer 'zoom in' o 'zoom out' hace parte de otra capa,
la capa de las Coordenadas. 

Ya tocaremos eso próximamente.

"
