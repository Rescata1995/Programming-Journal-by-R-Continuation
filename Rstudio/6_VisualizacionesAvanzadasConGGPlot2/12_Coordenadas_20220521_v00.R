Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", 
                     "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")

d <- ggplot(data=Datos, aes(x=Rating_Criticos,
                            y=Rating_Audiencia,
                            color=Genero))

d + geom_point(aes(size=Presupuesto_Millones)) + 
  geom_smooth() +
  facet_grid(Genero~Año)

# Note que sí importa el orden en el que llamas a tus capas.

"
1. Capa de las Coordenadas, Intro a función 'coord_cartesian()'
& parámetros 'ylim()' y 'xlim()'


La función 'coord_cartesian()', incluido sus parámetros 'ylim' 
& 'xlim', son los que nos permiten hacer 'zoom in' & 'zoom out'
a nuestras visualizaciones (incluidas las facetas, a las que se
les hace 'zoom in' o 'zoom out' de forma conjunta y simultánea)

Pero, más allá de hacer 'zoom in' o 'zoom out', lo que realmente
hace esta función es darte la facultad de poder controlar cuáles 
serían los límites inferiores y superiores visibles para sus ejes; 
es decir, desde qué punto empezar a ver la visualización de sus 
datos, desde qué límites de sus ejes ver su gráfico.


1.1 Parámetro 'xlim()'

El parámetro 'xlim' define desde qué punto serían visibles los 
límites sobre el eje de las X, su límite inferior y superior.
Ahora, estos límites se pasan como vector dentro de la 
función-parámetro 'xlim()', la cual recibe dos valores. 

Por ejemplo, si tenemos 'xlim=c(50,100)', significa que hemos
definido un límite inferior de 50 y un límite superior de 100;
es decir, sólo nos interesaría ver los datos que están desde 
el límite 50, del eje de las X, hasta el límite 100 del mismo.

El código completo sería: 'coord_cartesian(xlim=c(50,100)'.

Lo propio con 'ylim()'.


1.1 Parámetro 'ylim()'

El parámetro 'ylim' define desde qué punto serían visibles los 
límites sobre el eje de las Y, su límite inferior y superior.
Ahora, estos límites se pasan como vector dentro de la 
función-parámetro 'ylim()', la cual recibe dos valores. 

Por ejemplo, si tenemos 'ylim=c(0,100)', significa que hemos
definido un límite inferior de 0 y un límite superior de 100;
es decir, sólo nos interesaría ver los datos que están desde 
el límite 0, del eje de las Y, hasta el límite 100 del mismo.
El código completo sería: 'coord_cartesian(ylim=c(0,100)'.

El código completo sería: 'coord_cartesian(ylim=c(0,100)'.

"


"
2. Pongamos en práctica todo. 

Las facetas que hasta ahora usted tiene visualizadas en su
análisis, tienen un límite inferior de -50 y un límite 
superior de 150 sobre el eje de las Y; lo que nos interesa 
es ver un límite inferior de 0 y un límite superior de 100.

Proceda.

"

d + geom_point(aes(size=Presupuesto_Millones)) + 
  geom_smooth() +
  facet_grid(Genero~Año)+
  #RES
  coord_cartesian(ylim=c(0,100))


"
Observe cómo ahora sus facetas tienen un límite inferior
de 0 y un límite superior de 100, sobre el eje de las Y.

EXTRA; Posibles Insights: 

Las películas de genero 'Acción' marcan una tendencia 
positiva; es decir, hay una correlación positiva entre los 
Ratings de la Audiencia y los Ratings Criticos. Esto hace 
que las películas de Acción tengan un mayor riesgo, pues, 
es mayor el retorno (para mal o para bien); por ejemplo, 
si la Audiencia te califica bien, es probable que cuentes 
con la suerte de que los Criticos también lo hagan 
(o viceversa)... Sin embargo, es probable que tengas la 
misma suerte con los comentarios negativos.

En cambio, las películas de genero 'Comedia' son más 
estables, su curva es más recta; con lo cual se asume 
menos riesgo en la producción de estas películas, pero
será menor el retorno, para mal o para bien.

"
