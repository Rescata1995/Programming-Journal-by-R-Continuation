Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", 
                     "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")


"
1. Profundizaci�n sobre las Facetas e intro a funci�n 
'facet_grid()'

Cuando se habla de la Capa de las Facetas, se refiere a 
las diferentes representaciones visuales que puede asumir
un gr�fico luego de ser dividido en varias partes seg�n 
el n�mero de categor�as que �ste contenga; es decir, a 
partir de la 'granularidad de los datos' de un campo, se 
crean representaciones visuales por separado para cada 
uno de los 'levels' o categor�as del campo en cuesti�n.

Generalmente el campo categ�rico del que hablamos se 
encuentra siendo Mapeado tambi�n dentro de su an�lisis, 
pero no es necesario.

La funci�n que nos permite generar las facetas, de la 
capa de las Facetas, es: 'facet_grid()'.

Un ejemplo. Al categorizar o 'granular' los datos por 
n�vel de ingreso, suponiendo que tenemos un campo que
eval�a niveles de ingresos que pueden llegar a ser 
'altos', 'medios' & 'bajos' y los estamos mapeando, 
se crean tres (3) facetas; entonces, por cada n�vel 
de ingreso evaluado, se crea una 'faceta' o una 
representaci�n visual distinguida.

Lo dicho. Con las facetas se crea una representaci�n 
visual, propia, para cada una de las categor�as 
(levels) de un campo al que decida mapear por medio 
de alg�n par�metro de la capa de las est�ticas, tipo: 
'color', 'size', 'fill', etc.

"

"
1.1 Ejemplo sobre las Facetas & pr�ctica de la funci�n 
'facet_grid()' + utilidad de los s�mbolos '~.' & '.~'


Paa nuestro ejemplo actual, el tipo de gr�fico con el
que estaremos trabajando ser� un Histograma, pero
tenga en cuenta que las facetas pueden generarse
sobre cualquier tipo de gr�fico en general; es decir,
sobre cualquier capa de las geometr�as.

Entonces, la idea es generar un histograma diferente
para cada una de las categor�as o 'levels' del campo 
que decida Mapear; puntualmente, estaremos evaluando 
la cantidad de pel�culas producidas para cada uno de 
los n�veles de presupuesto invertidos en ellas; sin 
embargo, nos interesa dividir esta informaci�n por 
genero de pel�cula; es decir, se har� un 'Mapeo de 
Datos' con el campo 'Genero' para saber la cantidad de 
pel�culas producidas, seg�n Genero, para un nivel de 
presupueso dado. Dicho lo anterior, se crear� un 
histograma diferente para cada categor�a de pel�cula 
dentro de este an�lisis.

"

f <- ggplot(data=Datos, aes(x=Presupuesto_Millones))
f + geom_histogram(binwidth=10, aes(fill=Genero),
                   color="Black") + facet_grid(Genero~.)


"
Dentro de la funci�n 'facet_grid()', si se percata, 
se pasa exactamente el mismo campo categ�rico que est� 
siendo mapeado con alguno de sus par�metros de las 
Est�ticas; en nuestro caso puntual, por ejemplo, el 
campo mapeado es 'Genero' & el par�metro que lo mapea 
es 'fill'. 

Adicionalmente, se agregan los s�mbolos claves '~.' 
al lado derecho (o izquierdo) del campo llamado en 
cuesti�n (Al lado izquierdo se ver�a as� '.~'): 
todo esto dentro de los par�ntesis de la funci�n
'facet_grid()', tal como se ve en nuestro c�digo.

Si pasa '~.' al lado derecho de su campo mapeado, se 
dividir� el gr�fico en facetas que se organizar�n en 
filas o renglones; mientras que, si pasa '.~' al lado 
izquierdo de su campo mapeado, se dividir� el gr�fico
en facetas que se organizar�n en columnas (opte por la 
opci�n que le facilite una mejor interpretaci�n de su 
visualizaci�n).

De hecho, usted incluso puede pasarle campos NO mapeados
a su funci�n 'facet_grid()'; y, voy m�s all�, puede 
incluso dividir su gr�fico principal en filas y columnas 
al pasarle dos campos categ�ricos (mapeados o no) a los
dos lados de su s�mbolo clave '~'. 

Por ejemplo, algo tipo: 'facet_grid(Genero~A�o)'...

"

"
1.2 Estudiando el caso 'facet_grid(Campo1~Campo2)' (~)

Cuando hay dos campos contenidos en 'facet_grid()',
esto significa que nuestros datos visualizados ya no 
s�lo ser�n divididos, en representaciones visuales 
separadas, por cada uno de los 'levels' de un campo 
categ�rico; sino, por cada uno de los 'levels' de dos 
campos categ�ricos a la vez; es decir, la granularidad
de los datos se hace mayor: todo esto en funci�n de 
la variable que est� analizando sobre el eje de las X,
es decir, ser�n los datos de la variable analizada 
sobre el eje de las X los que ser�n categorizados 
por los 'levels' de dos campos categ�ricos a la vez.
Tambi�n podr�a analizar una variable sobre el eje de 
las X en comparaci�n con otra variable que estar�a
situada sobre el eje de las Y.

Cada representaci�n visual por separada ser� el 
equivalente a una faceta; como se cruzan columnas y
filas, estas facetas se ver�n como celdas a raiz de
dicha intersecci�n.

Digamos, si se crearon facetas a partir del campo 'A�o' 
y el campo 'Genero', quiere decir que nuestros datos 
estar�n granulados por 'A�o' y 'Genero'; lo que 
significa que se distinguir�, por medio de 
representaciones visuales separadas, cada uno de los 
g�neros de pel�cula para cada uno de los a�os de 
estudio. Dos ejemplos: Usted podr� ver los datos para 
el g�nero de 'terror' en el a�o 2015 o los datos para 
el g�nero de 'comedia' para el a�o 2018, etc. 
Qu� datos? Pues, los datos que est� analizando de la 
variable situada sobre el eje de las X.


Retomando el ej. siguiente: 'facet_grid(Genero~A�o)'...

Qu� sucede en nuestro anterior ejemplo? Sucede que su
visualizaci�n principal dividir� cada uno de los a�os, 
del campo 'A�o', en facetas que se organizar�n en 
t�rminos de filas separadas (para cada a�o); pero, 
adem�s, su visualizaci�n principal dividir� cada uno 
de los generos de pel�culas, del campo Genero, en 
facetas que se organizar�n en t�rminos de columnas 
separadas (para cada Genero).

Como vas a tener que tu visualizaci�n principal se va
a dividir entre filas y columnas, tus facetas se ver�n
visualizadas como Celdas; esto debido a la intersecci�n 
que habr�a entre las filas y columnas en cuesti�n.

"

"
1.3 Ejemplo del caso 'facet_grid(Campo1~Campo2)' (~)

Nos interesa analizar la correlaci�n entre los Ratings
de la Audiencia (eje de las X) & los Ratings de los 
Cr�ticos (eje de las Y) compar�ndolos por a�o y genero;
situando a cada a�o y a cada genero, conjuntamente,
en representaciones visuales separadas (facetas).

Los a�os ser�n estructurados por columnas & los generos
ser�n estructurados por filas. Haga su an�lisis en un 
gr�fico de dispersi�n.

Por �ltimo, queremos ver que haya una distinci�n visual 
del campo 'Genero' por medio de colores y una distinci�n
visual del campo 'Presupuesto_Millones' por medio de 
tama�os.

"
#RES:

d <- ggplot(data=Datos, aes(x=Rating_Audiencia,
                            y=Rating_Criticos,
                            color=Genero,
                            size=Presupuesto_Millones))

d + geom_point() + facet_grid(Genero~A�o)

#Perfect!
  
"
2. Sincronizaci�n de Ejes & par�metro 'scales' de 
la funci�n 'facet_grid()'

Por defecto las facetas vienen con escalas (o ejes) 
sincronizados; es decir, todas las facetas se rigen 
por unas mismas unidades definidas tanto para el eje de 
las X como para el eje de las Y, ... esto es realmente 
lo ideal; sin embargo a veces pasa, por ejemplo, que 
la categor�a con los n�meros m�s bajos dista mucho de 
la categor�a con los n�meros m�s altos; pues, se trata 
de facetas sincronizadas que guardan las mismas medidas 
sobre el eje de las X e Y. Como si fuera poco, las 
facetas elaboradas se apilan entre s� dentro de una 
misma hoja de trabajo y, he aqu� el problema, muchas 
veces no se logra apreciar con claridad los datos 
contenidos en alguna de sus facetas, especialmente los 
datos contenidos dentro de la faceta con los n�meros 
inferiores. 

Para darle soluci�n a esto, muchas veces los analistas 
omiten la sincronizacion de las facetas al definir el 
par�metro 'scales', propio de la funci�n 'facet_grid()',
con un valor de 'free'. Con 'free' cada histograma
tendr�a su propia escala. Veamos esto.

"

f <- ggplot(data=Datos, aes(x=Presupuesto_Millones))
f + geom_histogram(binwidth=10, aes(fill=Genero),
                   color="Black") + facet_grid(Genero~.,
                                               scales="free")


"
IMPORTANTE: Realmente es una mala pr�ctica no tener
sincronizados los ejes de nuestras facetas; lo ideal,
en caso de que requiera ver mejor los datos contenidos
en cada una de sus facetas, es poder tener la facultad
de hacer zoom sobre cada uno de ellas. 

Hacer 'zoom in' o 'zoom out' hace parte de otra capa,
la capa de las Coordenadas. 

Ya tocaremos eso pr�ximamente.

"
