?matplot

"
Sobre la creaci�n de gr�ficas: Funci�n Matplot()

Esta funci�n est� dise�ada para graficar columnas 
de matrices.

Esta funci�n recibe muchos argumentos o par�metros; 
sin embargo, los de nuestro inter�s son los 
siguientes:

1. x, y: representan los ejes x, y; es decir, las 
columnas y filas de la matriz que pretende ser 
representada por medio de la funci�n 'matplot()'.

con este par�metro se define de qu� 
variable se obtendr�a la informaci�n que queremos 
graficar, por ejemplo, de una variable 'x', 'y', 
etc. 

2. type: con este par�metro se define el tipo de 
gr�fico que queremos visualizar; ya sea, por 
ejemplo, gr�fico de l�nea, de puntos, etc.

3. pch: con este par�metro se define el tipo de 
figura que representar�a a los puntos, valores, de
la variable, atributo o campo en cuestion que est�
siendo evaluado en su gr�fico. Las figuras podr�an 
ser, por ejemplo, cruzes, triangulos, cuadrados, etc.
... Tambi�n le puedes pasar vectores para 
seleccionar varios elementos disponibles 
(y visualizarlos).

4. col: con este par�metro se definen los colores 
que quieras reflejar en tu gr�fico. Para hacer uso
de este par�metro, asignar colores, se asiste de un 
vector de colores para lograr colores en tu gr�fico.

Por lo pronto estaremos trabajando con estos 4
par�metros. Vamos a la pr�ctica.

"

matplot(tiros_anotados)

"
En principio, la anterior l�nea de c�digo estar�a
errada debido a que va a imprimir los datos columna 
por columna; lo cual, no tendr�a sentido (en el
contexto actual) ya que la informaci�n que 
pudieramos extraer por cada variable (en este caso 
por cada jugador) parte del hecho de que los datos 
se organizan, para cada jugador, en t�rminos de 
filas, no columnas. Es decir, nos interesa reflejar 
filas, en vez de columnas, porque con las filas es 
que se puede evaluar la evoluci�n de cada uno de los 
jugadores en el tiempo; sus patrones y tendencias 
formadas para cada uno de ellos.

Ya luego vienen los detalles de visualizaci�n, por 
ejemplo, gr�ficar los datos de cada jugador con un 
color diferente, entre otros aspectos.

Qu� prosigue entonces para que la funci�n pueda 
tomar los datos en t�rminos de filas y no columnas?

Hay que transponer la matriz!

"

"
Importancia de la transposici�n: Funci�n t()

Entonces, como la funci�n 'matplot', por defecto, 
interpreta los datos de la matriz en t�rminos de 
columnas, hay que hacer una transposici�n: tomar 
la matriz y pasar sus columnas a filas y sus filas 
a columnas.

Para transponer una matriz simplemente tienes que 
hacer uso de la funci�n 't()', por ejemeplo, 
vamos a transponer la matriz 'tiros_anotados'...
Ser�a as�: t(tiros_anotados). De hecho, probemos.

"

t(tiros_anotados)

"
Siempre ten presente que la funci�n 'matplot()' 
va a evaluar los datos que extraiga de una matriz 
en t�rminos de columnas; es decir, trate de que
las variables que pretenda evaluar reflejen sus
datos, independientes, en t�rminos de columnas.
De lo contrario, ser� necesario transponer.

Entonces, tenemos que...
"

matplot(t(tiros_anotados))

"
Si se percata ya se empiezan a ver ciertas
tendencias, las tendencias por cada valor 
para su variable evaluada (variable: 'jugadores')

Cada valor, cada tiros anotados por jugador, est� 
siendo representado por un n�mero entero en toda 
la serie de tiempo. 

Es por defecto que la variable o campo (atributo)
evaluado, en este caso el atributo 'jugadores', 
se refleje gr�ficamente en t�rminos de n�meros 
enteros. Digamos, los n�meros enteros son el tipo 
de gr�fico por defecto.

Lo anterior se debe al par�metro 'type'. 'type', por 
defecto, se define con el valor 'p' que traduce 
'points'; estos 'points' hacen reflejar un tipo de 
gr�fico conformado por n�meros enteros con los 
cuales se identifican cada uno de los valores para 
el campo, atributo o variable 'jugadores'.

En la documentaci�n oficial puede ver todos los 
tipos de gr�fico que puede generar el par�metro 
'type', veamos: 

'p' for points, 'l' for lines, 'b' for both points 
and lines, 'c' for empty points joined by lines, 
'o' for overplotted points and lines, 's' and 
'S' for stair steps and 'h' for histogram-like 
vertical lines. Finally, 'n' does not produce any 
points or lines.

Probemos un 'type' = 'b'.

"

matplot(t(tiros_anotados), type="b")

"
Representemos a los valores para el atributo 
'jugadores', es decir, los valores para cada jugador 
en cuesti�n (sus tiros anotados) con figuras.

Anteriormente los puntos correspondientes a los 
tiros anotados por cada jugador se reflejaban, de 
forma visual, con n�meros enteros. 

Cambiemos los enteros por figuras. 

Definamos para lo anterior un 'pch' = 15:18.

"

matplot(t(tiros_anotados), type="b", pch=15:18, col=c(1:4,6))

"
Si se percata tambi�n definimos colores dentro
del gr�fico con el par�metro 'col'.

Recordaci�n: Ante dudas sobre cualquier funci�n,
recuerde, puede consultar en la documentaci�n de
la funci�n en cuesti�n.

Hasta aqu� hemos terminado propiamente con lo que
tiene que ver la funci�n 'matplot()' y la utilidad
que tiene por facilitar la creaci�n de gr�ficos o 
visualizaciones. 

Sin embargo, si evalua muy bien todo, con el gr�fico
no es suficiente. Usted desea tener una referencia 
textual para cada una de las representaciones 
visuales que tiene en su gr�fico; es decir, en este 
caso puntual, poder relacionar cada una de las l�neas 
de su gr�fico con su correspondiente jugador.

Para ello, tenemos una funci�n que asigna 'etiquetas'.
Son etiquetas lo que necesitamos para referenciar las
l�neas del gr�fico con sus correspondientes jugadores.

Hay que etiquetar a la gr�fica!

"

"
Importancia del etiquetado: Funci�n legend()

legend() b�sicamente lo que hace es crear leyendas que,
en su mayor�a, se crean para complementar con informaci�n
alguna visualizaci�n (darle referencia o contexto).

"

matplot(t(tiros_anotados), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores, pch=15:18, col=c(1:4,6), horiz = F)


"
Esta funci�n recibe muchos argumentos o par�metros; 
sin embargo, los de nuestro inter�s son los 
siguientes:

1ro: valor 'bottomleft': posici�n en la que se desea 
ubicar la leyenda.

2do: par�metro 'inset': determina qu� tan lejado se
desea que est� la leyenda de la posici�n recientemente
definida en el 1er par�metro.

3er: par�metro 'legend': Es literalmente lo que queremos
que nuestra leyenda represente. 

4to: par�metro 'pch': tiene que ser equivalente a 
'matplot()'.

5to: par�metro 'col': tiene que ser equivalente a 
'matplot()' tambi�n.

6to: par�metro 'horiz': determina si queremos que nuestra 
leyenda se muestre de forma horizontal (T) o vertical (F).

"

"
Ejercicio 1:

Refleje ahora, visualmente, el promedio de tiros anotados 
por juego para cada jugador:

"

matplot(t(tiros_anotados/juegos), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores, pch=15:18, col=c(1:4,6), horiz = F)

"
Ejercicio 2:

Ahora refleje, visualmente, la presici�n de tiros anotados 
sobre la cantidad de intentos para cada jugador:

"

matplot(t(tiros_anotados/tiros_intentados), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores, pch=15:18, col=c(1:4,6), horiz = F)
