"
Dataframe: 'dataset1'

"

dataset1 <- read.csv(file.choose())
dataset1

"
1. qplot: instalación y activación de paquete 'ggplot2'.

Primero que nada aclarar que la funcion qplot() tiene su 
propio paquete; es decir, para hacer uso de la función 
qplot(), se debe activar su paquete propiamente.

Vayase a 'packages' y active el paquete 'ggplot2' para
poder hacer uso de la función 'qplot()'.

Ahora, en el caso extremo, es posible que usted ni 
siquiera tenga el paquete instalado en su maquina; por 
lo cual, debe instalarlo. Tiene que correr el siguiente
código:

"
#install.packages("ggplot2")

"
Ahora, si ya lo tiene instalado, pero desea activarlo
mediante código, sería así:

"
#library(ggplot2)

library(ggplot2)

"
Instalado y activado el paquete 'ggplot2', podemos 
solicitar ayuda sobre la función 'qplot'.

Veamos.

"

?qplot


"
2. Introducción a 'qplot' y parámetro fundamental 'data'.

qplot, o 'quick plot', traduce gráfico rápido. Si te
fijas bien, son muchos los parámetros los que esta 
función puede recibir. 

Ahora, algo puntual: 'qplot' sólo trabaja con dataframes.
De hecho, caso aparte, la función 'ggplot' que más 
adelante abordaremos también trabaja solamente con 
dataframes.

Continuando con 'qplot', 'qplot' recibe un primer 
parámetro fundamental; se trata del parámetro con el 
que se define con qué dataframe vamos a trabajar, el 
parámetro: 'data'.

En el parámetro 'data' se pasa el nombre de su dataframe;
entonces, los parámetros consecuentes que se definan 
dentro de 'qplot' van a actuar en función del dataframe 
pasado; es decir, el dataframe pasado con el parámetro 
fundamental 'data'.

"


"
3. Parámetros 'x', 'y', 'size=I()' & 'color=I()' para la 
función 'qplot'.

Tanto al parámetro 'x' como al parámetro 'y' se les pasa, 
por separado, los campos que pretende evaluar del 
dataframe señalado; en este caso, 'dataset1'.

'x' e 'y' se encargan de evaluar el comportamiento de
los campos que les asignen por medio de gráficos, siendo
que 'x' representa el eje horizontal e 'y' representa el
eje vertical.

Con sólo definir los parámetros 'x' e 'y' a su dataframe,
por default, 'qplot' será lo suficientemente inteligente 
como para entender la complejidad y particularidad de cada 
campo asignado y, en consecuencia, tratará de adaptar el 
mejor gráfico posible para evaluarlos visualmente.

El parámetro 'color=I()', como su nombre lo dice, define 
el color para su gráfico representativo. Los valores
que admite este parámetro son de tipo 'string' y los 
colores se definen en idioma anglosajón.

El parámetro 'size=I()', por su parte, define el tamaño o 
los tamaños que consideraría su gráfico para representar
visualmente los datos contenidos en los campos pasados
por medio de los parámetros 'x' e 'y'. Los valores
que admite este parámetro son de tipo 'integer': en la 
medida que el número es mayor, mayor es el tamaño de sus
figuras. 

Veamos un ejemplo definiendo los tres parámetros.

"

qplot(data=dataset1, x=Grupo.Ingresos, y=Tasa.Natalidad, color=I("black"), size=I(5))


"
3.1 EXTRA: parámetro 'geom' de 'qplot'.

El parámetro 'geom' define el tipo de gráfico con el que 
deseas visualizar, y evaluar, los datos de tus campos 
pasados en 'x' e 'y'. 

Prueba el valor 'boxplot' para definir el parámetro 'geom'.

"