
"
Introducción a la función GGPlot, Capas Fundamentales 
& Profundización sobre la Capa de las Estéticas 

"

#Capa de Datos (Importación de datos)

Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


"
1. Introducción a 'ggplot' & sus parámetros


1.1. Sobre la función 'ggplot' y parámetro 'data'

Vamos al grano con GGPlot. 'ggplot' recibe un primer 
parámetro fundamental; se trata del parámetro con el 
que se define con qué dataframe vamos a trabajar, el 
parámetro: 'data'.

"

# Capa de las Estéticas (Sobre la función 'aes')

"
1.2 Sobre la función 'aes': ejes 'x' e 'y', color & size

'aes' es la función que define las 'estéticas' de nuestra
visualización con 'ggplot'; es decir, para este caso, 
las estéticas del dataframe 'Ratings+Peliculas'. Recuerde
que con 'estéticas' nos podemos referir, por ejemplo, a la
definición de los ejes 'x' e 'y': fundamentales en la 
mayoria de casos para poder facultar la creación de una 
gráfica bidimensional dentro de R. 

En la capa de las Estéticas también se fundamenta todo lo 
relacionado con el Mapeo de datos; pues, también se pueden
definir los parámetros 'size' & 'color', de las figuras, por 
medio del uso de campos; es decir, se tiene la facultad de poder 
definir los campos como 'valores' dentro de dichos parámetros; 
de hecho, se requiere que el campo 'Presupuesto_Millones' se
distinga visualmente por medio de tamaños y que el campo
'Genero' se distinga visualmente por medio de colores.

Consejo: Para el parámetro 'size' lo recomendado es que 
sea definido con una variable continua.

Nota: las figuras como tal se abordarán más adelante, 
debido a que hacen parte de la capa de las Geometrías.

Retomemos...

Entonces, como se podría estar imaginando, dentro de la 
función 'aes()' es donde se pueden definir nuestros ejes 
'x' e 'y', los tamaños & los colores. En el eje 'x', por 
ejemplo, nos interesa definir el campo 'Rating_Criticos' & 
en el eje 'y', por su parte, nos interesa definir el campo 
'Rating_Audiencia' (Así se requiere). Adicionalmente, 
vamos a definir el parámetro 'size' con el campo 
'Presupuesto_Millones' y el parámetro 'color' con el campo 
'Genero'. Veamos.

"
ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones))

"
De momento, si ha prestado atención a las anteriores clases,
sabrá que del anterior código de 'ggplot()' solo se podrá 
visualizar un diagrama 'vacio' con sus respectivos ejes;
esto es así porque, bien recuerde, para poder visualizar 
propiamente las figuras representativas a sus datos
se tiene que trabajar directamente con la capa 'geométrica'.
Vamos allá!

"

# Capa de las Geometrías (Sobre la función 'geom_point')

"
1.3 Sobre la función 'geom_point' y definición de figuras

La función 'geom_point' básicamente define el tipo de figura 
con la cual se estarán visualizando los datos de nuestro 
dataframe; más precisamente, los datos de los campos evaluados 
dentro de la función 'ggplot'.

Por defecto, si sólo pasa la función 'geom_point()' sin
definirle un valor, sin definir una figura; 'ggplot' será lo 
suficientemente inteligente como para entender la complejidad 
y particularidad de cada campo asignado y, en consecuencia, 
tratará de adaptar la mejor figura posible para su diagrama.

Aclaración: La función 'geom_point()' se pasa por medio del 
signo suma (+) por fuera de los paréntesis de la función 
'ggplot'. Veamos.

"
ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones)) + geom_point()


"
Key takeaway

De momento el 'insight' que podemos extraer tiene que ver con
que, generalmente, las criticas de la audiencia suelen ser más
positivas que las criticas profesionales. 

Más adelante, estaremos profundizando más sobre este gráfico 
en la medida que avanzemos e incorporemos más recursos dentro 
de nuestra función 'ggplot'.

"

