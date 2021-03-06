Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", 
                     "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")

d <- ggplot(data=Datos, aes(x=Rating_Criticos,
                            y=Rating_Audiencia,
                            color=Genero))

d + geom_point(aes(size=Presupuesto_Millones)) + 
  geom_smooth() +
  facet_grid(Genero~A�o)

# Note que s� importa el orden en el que llamas a tus capas.

"
1. Capa de las Coordenadas, Intro a funci�n 'coord_cartesian()'
& par�metros 'ylim()' y 'xlim()'


La funci�n 'coord_cartesian()', incluido sus par�metros 'ylim' 
& 'xlim', son los que nos permiten hacer 'zoom in' & 'zoom out'
a nuestras visualizaciones (incluidas las facetas, a las que se
les hace 'zoom in' o 'zoom out' de forma conjunta y simult�nea)

Pero, m�s all� de hacer 'zoom in' o 'zoom out', lo que realmente
hace esta funci�n es darte la facultad de poder controlar cu�les 
ser�an los l�mites inferiores y superiores visibles para sus ejes; 
es decir, desde qu� punto empezar a ver la visualizaci�n de sus 
datos, desde qu� l�mites de sus ejes ver su gr�fico.


1.1 Par�metro 'xlim()'

El par�metro 'xlim' define desde qu� punto ser�an visibles los 
l�mites sobre el eje de las X, su l�mite inferior y superior.
Ahora, estos l�mites se pasan como vector dentro de la 
funci�n-par�metro 'xlim()', la cual recibe dos valores. 

Por ejemplo, si tenemos 'xlim=c(50,100)', significa que hemos
definido un l�mite inferior de 50 y un l�mite superior de 100;
es decir, s�lo nos interesar�a ver los datos que est�n desde 
el l�mite 50, del eje de las X, hasta el l�mite 100 del mismo.

El c�digo completo ser�a: 'coord_cartesian(xlim=c(50,100)'.

Lo propio con 'ylim()'.


1.1 Par�metro 'ylim()'

El par�metro 'ylim' define desde qu� punto ser�an visibles los 
l�mites sobre el eje de las Y, su l�mite inferior y superior.
Ahora, estos l�mites se pasan como vector dentro de la 
funci�n-par�metro 'ylim()', la cual recibe dos valores. 

Por ejemplo, si tenemos 'ylim=c(0,100)', significa que hemos
definido un l�mite inferior de 0 y un l�mite superior de 100;
es decir, s�lo nos interesar�a ver los datos que est�n desde 
el l�mite 0, del eje de las Y, hasta el l�mite 100 del mismo.
El c�digo completo ser�a: 'coord_cartesian(ylim=c(0,100)'.

El c�digo completo ser�a: 'coord_cartesian(ylim=c(0,100)'.

"


"
2. Pongamos en pr�ctica todo. 

Las facetas que hasta ahora usted tiene visualizadas en su
an�lisis, tienen un l�mite inferior de -50 y un l�mite 
superior de 150 sobre el eje de las Y; lo que nos interesa 
es ver un l�mite inferior de 0 y un l�mite superior de 100.

Proceda.

"

d + geom_point(aes(size=Presupuesto_Millones)) + 
  geom_smooth() +
  facet_grid(Genero~A�o)+
  #RES
  coord_cartesian(ylim=c(0,100))


"
Observe c�mo ahora sus facetas tienen un l�mite inferior
de 0 y un l�mite superior de 100, sobre el eje de las Y.

EXTRA; Posibles Insights: 

Las pel�culas de genero 'Acci�n' marcan una tendencia 
positiva; es decir, hay una correlaci�n positiva entre los 
Ratings de la Audiencia y los Ratings Criticos. Esto hace 
que las pel�culas de Acci�n tengan un mayor riesgo, pues, 
es mayor el retorno (para mal o para bien); por ejemplo, 
si la Audiencia te califica bien, es probable que cuentes 
con la suerte de que los Criticos tambi�n lo hagan 
(o viceversa)... Sin embargo, es probable que tengas la 
misma suerte con los comentarios negativos.

En cambio, las pel�culas de genero 'Comedia' son m�s 
estables, su curva es m�s recta; con lo cual se asume 
menos riesgo en la producci�n de estas pel�culas, pero
ser� menor el retorno, para mal o para bien.

"
