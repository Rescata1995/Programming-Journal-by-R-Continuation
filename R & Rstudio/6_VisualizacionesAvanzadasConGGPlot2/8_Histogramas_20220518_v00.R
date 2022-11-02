Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


# Histogramas

"
Ambas formas de representación visual de datos hacen 
parte de la capa de las Geometrías; sin embargo, estos 
dos tipos de gráfico pueden verse influenciados,
directa o indirectamente, por la capa de las Estadísticas
también debido a que agregan (agrupan) datos y, si bien
recuerdas, la agregación de datos hace parte de la capa de
las Estadísticas.

Ya veremos eso.


1. Introducción a la función 'geom_histogram' & sus 
parámetros

'geom_histogram', como podrías imaginarte, es una función
adicional de la capa de las Geometrías; ésta en específico 
nos va a permitir graficar Histogramas. De entrada sepa
que, dentro de un Histograma, sólo se puede estudiar o
evaluar el comportamiento de una variable (no dos).

'geom_histogram' recibe varios parámetros, los vamos a
enlistar y conocer a continuación: 

A. 'binwidth': Define tamaño de nuestros compartimientos;
es decir, el rango (anchura) que va a asumir cada barra 
dentro del histograma: cuánto asume de 'espacio', sobre el 
eje de las x, cada barra de su histograma. Define la 
longitud del rango de valores para cada barra/contenedor.

Entonces, según sea el campo o la columna que esté 
evaluando y representando sobre el eje de las x (o eje y),
ésta afectará sobre cada barra de su histograma al hacer
un conteo total de todos los datos que se sitúen sobre el 
rango (o tamaño) correspondido en cada una de ellas.

El conteo es una función de Agregación en el entendido de 
que, directa o indirectamente, agrega (agrupa) datos
al contabilizarlos entre sí según un criterio o rango
determinado; es por esta razón que los histogramas no sólo
se ven influenciados por la capa de las geometrías, que
es el tipo de gráfico como tal; sino también por la capa 
de las Estadísticas, lo que tiene que ver con la operación 
matemática que se desarrolla al contar todos los datos
situados sobre cada uno de los rangos (barras) del 
histograma.

Por ejemplo, supongamos que le asignamos al eje de las 'x'
el campo 'Presupuesto_Millones' & tenemos que el parámetro
'binwidth', de la función 'geom_histogram', es igual a 30.

Si de entrada sabemos que en el campo 'Presupuesto_Millones'
se guardan datos de tipo numérico (enteros) que revelan
la inversión hecha para la realización de cada una de las 
películas de nuestro dataset; podemos decir que, al definir
con 30 al parámetro 'binwidth', se crearán y se evaluarán 
compartimientos (barras/rangos) de 30 en 30; es decir,
en contexto, nuestra 1ra barra del histograma evaluará las 
películas que costaron entre 1 a 30$, luego nuestra 2da
barra evaluará las películas que costaron entre 31$ a 60$,
luego nuestra 3ra barrá evaluará las películas que costaron
entre 61$ a 90$ y así sucesivamente. Más que evaluar, lo 
que hará 'binwidth=30' es contar la totalidad de peliculas 
que hay por cada barra/rango de nuestro histograma: cuántas 
películas costaron entre 1$ a 30$, cuántas películas costaron 
entre 31$ a 60$, cuántas películas costaron entre 61$ a 90, 
y así...


B. 'fill': Básicamente es la forma en la que la función 
'geom_histogram' le asigna colores a su histograma. Haciendo
un símil con Tableau, puede interpretarse como la marca 
'color'.


C. 'color': Para la función 'geom_histogram', el parámetro
'color' define el color de los bordes de cada barra del
histograma; incluso, establece bordes sobre todas las 
distinciones visuales que se hagan a causa de un 
'Mapeo de Datos': esto para que sus distinciones visuales 
sean más notables, o bien, completamente evidentes.


Pongamos en práctica toda la teoría en el siguiente ejemplo.

Queremos estudiar, sobre el eje de las x, el presupuesto
invertido para todas las películas evaluadas; sin embargo, 
queremos que se cuente la totalidad de las peliculas que 
se grabaron por cada rango de 30$ invertidos.

Tenga en cuenta algo: Queremos distinguir visualmente los 
Generos de películas por medio de colores y que cada 
distinción se note a la perfección al asignarle un borde
de color negro. Observe:

"

h <- ggplot(data=Datos, aes(x=Presupuesto_Millones))

h + geom_histogram(binwidth = 30, aes(fill=Genero), color="black")

"
Como estariamos haciendo una distinción visual sobre cada 
barra/contenedor del total de generos que hay en cada rango,
es preciso mencionar que el histograma reflejará barras
apiladas. Cada barra diferenciará a cada genero de película,
que se encuentre dentro de cada rango, por medio de colores;
pues, así fue determinado al decidir mapear el campo 'Genero'
con la estética 'fill', generando así 'stack bars'. Un color
ocupará más espacio por cada barra al reflejarse un mayor 
número de conteo, o de registros, de la categoría que está 
en representación de dicho color en cuestión.

"
