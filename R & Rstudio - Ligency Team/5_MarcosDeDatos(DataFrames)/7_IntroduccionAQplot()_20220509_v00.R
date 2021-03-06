"
Dataframe: 'dataset1'

"

dataset1 <- read.csv(file.choose())
dataset1

"
1. qplot: instalaci�n y activaci�n del paquete 'ggplot2'.

Primero que nada aclarar que la funcion qplot() tiene su 
propio paquete; es decir, para hacer uso de la funci�n 
qplot(), se debe activar su paquete propiamente.

Vayase a 'packages' y active el paquete 'ggplot2' para
poder hacer uso de la funci�n 'qplot()'.

Ahora, en el caso extremo, es posible que usted ni 
siquiera tenga el paquete instalado en su maquina; por 
lo cual, debe instalarlo. Tiene que correr el siguiente
c�digo:

"
#install.packages("ggplot2")

"
Ahora, si ya lo tiene instalado, pero desea activarlo
mediante c�digo, ser�a as�:

"
#library(ggplot2)

library(ggplot2)

"
Instalado y activado el paquete 'ggplot2', podemos 
solicitar ayuda sobre la funci�n 'qplot'.

Veamos.

"

?qplot


"
2. Introducci�n a 'qplot' y par�metro fundamental 'data'.

qplot, o 'quick plot', traduce gr�fico r�pido. Si te
fijas bien, son muchos los par�metros los que esta 
funci�n puede recibir. 

Ahora, algo puntual: 'qplot' s�lo trabaja con dataframes.
De hecho, caso aparte, la funci�n 'ggplot' que m�s 
adelante abordaremos tambi�n trabaja solamente con 
dataframes.

Continuando con 'qplot', 'qplot' recibe un primer 
par�metro fundamental; se trata del par�metro con el 
que se define con qu� dataframe vamos a trabajar, el 
par�metro: 'data'.

En el par�metro 'data' se pasa el nombre de su dataframe;
entonces, los par�metros consecuentes que se definan 
dentro de 'qplot' van a actuar en funci�n del dataframe 
pasado; es decir, el dataframe pasado con el par�metro 
fundamental 'data'.

"


"
3. Par�metros 'x', 'y', 'size=I()' & 'color=I()' para la 
funci�n 'qplot'.

Tanto al par�metro 'x' como al par�metro 'y' se les pasa, 
por separado, los campos que pretende evaluar del 
dataframe se�alado; en este caso, 'dataset1'.

'x' e 'y' se encargan de evaluar el comportamiento de
los campos que les asignen por medio de gr�ficos, siendo
que 'x' representa el eje horizontal e 'y' representa el
eje vertical.

Con s�lo definir los par�metros 'x' e 'y' a su dataframe,
por default, 'qplot' ser� lo suficientemente inteligente 
como para entender la complejidad y particularidad de cada 
campo asignado y, en consecuencia, tratar� de adaptar el 
mejor gr�fico posible para evaluarlos visualmente.

El par�metro 'color=I()', como su nombre lo dice, define 
el color para su gr�fico representativo. Los valores
que admite este par�metro son de tipo 'string' y los 
colores se definen en idioma anglosaj�n.

El par�metro 'size=I()', por su parte, define el tama�o o 
los tama�os que considerar�a su gr�fico para representar
visualmente los datos contenidos en los campos pasados
por medio de los par�metros 'x' e 'y'. Los valores
que admite este par�metro son de tipo 'integer': en la 
medida que el n�mero es mayor, mayor es el tama�o de sus
figuras. 

Veamos un ejemplo definiendo los tres par�metros.

"

qplot(data=dataset1, x=Grupo.Ingresos, y=Tasa.Natalidad, color=I("black"), size=I(5))


"
3.1 EXTRA: par�metro 'geom' de 'qplot'.

El par�metro 'geom' define el tipo de gr�fico con el que 
deseas visualizar, y evaluar, los datos de tus campos 
pasados en 'x' e 'y'. 

Prueba el valor 'boxplot' para definir el par�metro 'geom'.

"