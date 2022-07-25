?matplot

"
Sobre la creación de gráficas: Función Matplot()

Esta función está diseñada para graficar columnas 
de matrices.

Esta función recibe muchos argumentos o parámetros; 
sin embargo, los de nuestro interés son los 
siguientes:

1. x, y: representan los ejes x, y; es decir, las 
columnas y filas de la matriz que pretende ser 
representada por medio de la función 'matplot()'.

con este parámetro se define de qué 
variable se obtendría la información que queremos 
graficar, por ejemplo, de una variable 'x', 'y', 
etc. 

2. type: con este parámetro se define el tipo de 
gráfico que queremos visualizar; ya sea, por 
ejemplo, gráfico de línea, de puntos, etc.

3. pch: con este parámetro se define el tipo de 
figura que representaría a los puntos, valores, de
la variable, atributo o campo en cuestion que está
siendo evaluado en su gráfico. Las figuras podrían 
ser, por ejemplo, cruzes, triangulos, cuadrados, etc.
... También le puedes pasar vectores para 
seleccionar varios elementos disponibles 
(y visualizarlos).

4. col: con este parámetro se definen los colores 
que quieras reflejar en tu gráfico. Para hacer uso
de este parámetro, asignar colores, se asiste de un 
vector de colores para lograr colores en tu gráfico.

Por lo pronto estaremos trabajando con estos 4
parámetros. Vamos a la práctica.

"

matplot(tiros_anotados)

"
En principio, la anterior línea de código estaría
errada debido a que va a imprimir los datos columna 
por columna; lo cual, no tendría sentido (en el
contexto actual) ya que la información que 
pudieramos extraer por cada variable (en este caso 
por cada jugador) parte del hecho de que los datos 
se organizan, para cada jugador, en términos de 
filas, no columnas. Es decir, nos interesa reflejar 
filas, en vez de columnas, porque con las filas es 
que se puede evaluar la evolución de cada uno de los 
jugadores en el tiempo; sus patrones y tendencias 
formadas para cada uno de ellos.

Ya luego vienen los detalles de visualización, por 
ejemplo, gráficar los datos de cada jugador con un 
color diferente, entre otros aspectos.

Qué prosigue entonces para que la función pueda 
tomar los datos en términos de filas y no columnas?

Hay que transponer la matriz!

"

"
Importancia de la transposición: Función t()

Entonces, como la función 'matplot', por defecto, 
interpreta los datos de la matriz en términos de 
columnas, hay que hacer una transposición: tomar 
la matriz y pasar sus columnas a filas y sus filas 
a columnas.

Para transponer una matriz simplemente tienes que 
hacer uso de la función 't()', por ejemeplo, 
vamos a transponer la matriz 'tiros_anotados'...
Sería así: t(tiros_anotados). De hecho, probemos.

"

t(tiros_anotados)

"
Siempre ten presente que la función 'matplot()' 
va a evaluar los datos que extraiga de una matriz 
en términos de columnas; es decir, trate de que
las variables que pretenda evaluar reflejen sus
datos, independientes, en términos de columnas.
De lo contrario, será necesario transponer.

Entonces, tenemos que...
"

matplot(t(tiros_anotados))

"
Si se percata ya se empiezan a ver ciertas
tendencias, las tendencias por cada valor 
para su variable evaluada (variable: 'jugadores')

Cada valor, cada tiros anotados por jugador, está 
siendo representado por un número entero en toda 
la serie de tiempo. 

Es por defecto que la variable o campo (atributo)
evaluado, en este caso el atributo 'jugadores', 
se refleje gráficamente en términos de números 
enteros. Digamos, los números enteros son el tipo 
de gráfico por defecto.

Lo anterior se debe al parámetro 'type'. 'type', por 
defecto, se define con el valor 'p' que traduce 
'points'; estos 'points' hacen reflejar un tipo de 
gráfico conformado por números enteros con los 
cuales se identifican cada uno de los valores para 
el campo, atributo o variable 'jugadores'.

En la documentación oficial puede ver todos los 
tipos de gráfico que puede generar el parámetro 
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
en cuestión (sus tiros anotados) con figuras.

Anteriormente los puntos correspondientes a los 
tiros anotados por cada jugador se reflejaban, de 
forma visual, con números enteros. 

Cambiemos los enteros por figuras. 

Definamos para lo anterior un 'pch' = 15:18.

"

matplot(t(tiros_anotados), type="b", pch=15:18, col=c(1:4,6))

"
Si se percata también definimos colores dentro
del gráfico con el parámetro 'col'.

Recordación: Ante dudas sobre cualquier función,
recuerde, puede consultar en la documentación de
la función en cuestión.

Hasta aquí hemos terminado propiamente con lo que
tiene que ver la función 'matplot()' y la utilidad
que tiene por facilitar la creación de gráficos o 
visualizaciones. 

Sin embargo, si evalua muy bien todo, con el gráfico
no es suficiente. Usted desea tener una referencia 
textual para cada una de las representaciones 
visuales que tiene en su gráfico; es decir, en este 
caso puntual, poder relacionar cada una de las líneas 
de su gráfico con su correspondiente jugador.

Para ello, tenemos una función que asigna 'etiquetas'.
Son etiquetas lo que necesitamos para referenciar las
líneas del gráfico con sus correspondientes jugadores.

Hay que etiquetar a la gráfica!

"

"
Importancia del etiquetado: Función legend()

legend() básicamente lo que hace es crear leyendas que,
en su mayoría, se crean para complementar con información
alguna visualización (darle referencia o contexto).

"

matplot(t(tiros_anotados), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores, pch=15:18, col=c(1:4,6), horiz = F)


"
Esta función recibe muchos argumentos o parámetros; 
sin embargo, los de nuestro interés son los 
siguientes:

1ro: valor 'bottomleft': posición en la que se desea 
ubicar la leyenda.

2do: parámetro 'inset': determina qué tan lejado se
desea que esté la leyenda de la posición recientemente
definida en el 1er parámetro.

3er: parámetro 'legend': Es literalmente lo que queremos
que nuestra leyenda represente. 

4to: parámetro 'pch': tiene que ser equivalente a 
'matplot()'.

5to: parámetro 'col': tiene que ser equivalente a 
'matplot()' también.

6to: parámetro 'horiz': determina si queremos que nuestra 
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

Ahora refleje, visualmente, la presición de tiros anotados 
sobre la cantidad de intentos para cada jugador:

"

matplot(t(tiros_anotados/tiros_intentados), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=jugadores, pch=15:18, col=c(1:4,6), horiz = F)
