Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")


# Histogramas

"
Ambas formas de representaci�n visual de datos hacen 
parte de la capa de las Geometr�as; sin embargo, estos 
dos tipos de gr�fico pueden verse influenciados,
directa o indirectamente, por la capa de las Estad�sticas
tambi�n debido a que agregan (agrupan) datos y, si bien
recuerdas, la agregaci�n de datos hace parte de la capa de
las Estad�sticas.

Ya veremos eso.


1. Introducci�n a la funci�n 'geom_histogram' & sus 
par�metros

'geom_histogram', como podr�as imaginarte, es una funci�n
adicional de la capa de las Geometr�as; �sta en espec�fico 
nos va a permitir graficar Histogramas. De entrada sepa
que, dentro de un Histograma, s�lo se puede estudiar o
evaluar el comportamiento de una variable (no dos).

'geom_histogram' recibe varios par�metros, los vamos a
enlistar y conocer a continuaci�n: 

A. 'binwidth': Define tama�o de nuestros compartimientos;
es decir, el rango (anchura) que va a asumir cada barra 
dentro del histograma: cu�nto asume de espacio, sobre el 
eje de las x, cada barra de su histograma. 

Entonces, seg�n sea el campo o la columna que est� 
evaluando y representando sobre el eje de las x (o eje y),
�sta afectar� sobre cada barra de su histograma al hacer
un conteo total de todos los datos que se sit�en sobre el 
rango (o tama�o) correspondido en cada una de ellas.

El conteo es una funci�n de Agregaci�n en el entendido de 
que, directa o indirectamente, agrega (agrupa) datos
al contabilizarlos entre s� seg�n un criterio o rango
determinado; es por esta raz�n que los histogramas no s�lo
se ven influenciados por la capa de las geometr�as, que
es el tipo de gr�fico como tal; sino tambi�n por la capa 
de las Estad�sticas, lo que tiene que ver con la operaci�n 
matem�tica que se desarrolla al contar todos los datos
situados sobre cada uno de los rangos (barras) del 
histograma.

Por ejemplo, supongamos que le asignamos al eje de las 'x'
el campo 'Presupuesto_Millones' & tenemos que el par�metro
'binwidth', de la funci�n 'geom_histogram', es igual a 30.

Si de entrada sabemos que en el campo 'Presupuesto_Millones'
se guardan datos de tipo num�rico (enteros) que revelan
la inversi�n hecha para la realizaci�n de cada una de las 
pel�culas de nuestro dataset; podemos decir que, al definir
con 30 al par�metro 'binwidth', se crear�n y se evaluar�n 
compartimientos (barras/rangos) de 30 en 30; es decir,
en contexto, nuestra 1ra barra del histograma evaluar� las 
pel�culas que costaron entre 1 a 30$, luego nuestra 2da
barra evaluar� las pel�culas que costaron entre 31$ a 60$,
luego nuestra 3ra barr� evaluar� las pel�culas que costaron
entre 61$ a 90$ y as� sucesivamente. M�s que evaluar, lo 
que har� 'binwidth=30' es contar la totalidad de peliculas 
que hay por cada barra/rango de nuestro histograma: cu�ntas 
pel�culas costaron entre 1$ a 30$, cu�ntas pel�culas costaron 
entre 31$ a 60$, cu�ntas pel�culas costaron entre 61$ a 90, 
y as�...


B. 'fill': B�sicamente es la forma en la que la funci�n 
'geom_histogram' le asigna colores a su histograma. Haciendo
un s�mil con Tableau, puede interpretarse como la marca 
'color'.


C. 'color': Para la funci�n 'geom_histogram', el par�metro
'color' define el color de los bordes de cada barra del
histograma; incluso, establece bordes sobre todas las 
distinciones visuales que se hagan a causa de un 
'Mapeo de Datos': esto para que sus distinciones visuales 
sean m�s notables, o bien, completamente evidentes.


Pongamos en pr�ctica toda la teor�a en el siguiente ejemplo.

Queremos estudiar, sobre el eje de las x, el presupuesto
invertido para todas las pel�culas evaluadas; sin embargo, 
queremos que se cuente la totalidad de las peliculas que 
se grabaron por cada rango de 30$ invertidos.

Tenga en cuenta algo: Queremos distinguir visualmente los 
Generos de pel�culas por medio de colores y que cada 
distinci�n se note a la perfecci�n al asignarle un borde
de color negro. Observe:

"

h <- ggplot(data=Datos, aes(x=Presupuesto_Millones))

h + geom_histogram(binwidth = 30, aes(fill=Genero), color="black")
