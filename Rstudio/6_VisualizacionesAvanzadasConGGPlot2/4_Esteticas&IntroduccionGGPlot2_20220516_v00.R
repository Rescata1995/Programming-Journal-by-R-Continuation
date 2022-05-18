
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

# Capa de las Estéticas (¿Cuando usar la función 'aes'?)

"
1.2 Sobre la función 'aes()', los parámetros de la capa 
de las estéticas: ejes 'x' e 'y', 'color' & 'size' e 
Intro a las diferencias entre 'Mapping' vs 'Setting'


'aes()' es la función que asiste a la definición de 
los parámetros de las 'estéticas' (Marcas en Tableau), 
de nuestra visualización con 'ggplot', en caso de que estos 
parámetros sean definidos por medio de 'Mapeo de datos' 
(Mapping); es decir, asumiendo la asignación de un campo 
como valor de estos parámetros y no precisamente 
'establecidendo' valores a secas (Setting) para ellos.

Profundicemos. Cuando hablamos de que en la capa de las 
estéticas los parámetros también pueden ser definidos 
por medio de 'Mapeo de datos'; queremos decir de que,
por ejemplo, los parámetros 'size' & 'color' también
pueden ser definidos por medio del uso de campos; es decir, 
se tiene la facultad de poder definir los campos como 
'valores' de dichos parámetros; de hecho, se requiere en
el resumen del proyecto que el campo 'Presupuesto_Millones' 
se distinga visualmente por medio de tamaños (size) y que 
el campo 'Genero' se distinga visualmente por medio de 
colores (color). Para estos dos últimos casos puntuales,
como está haciendo 'Mapping', en la asignación de esos 
parámetros usted debe asistirse de la función 'aes()'
previamente.

Luego, en el caso contrario, si queramos 'establecer' 
los valores de nuestros parámetros de la capa de las 
estéticas, a secas, no es necesario asistirse con la 
función 'aes()'; ni antes ni después.

Ahora un recorderis. Con 'estéticas' nos podemos referir, 
por ejemplo, a los parámetros de los ejes: 'x' e 'y', 
fundamentales en la mayoria de casos para poder facultar 
la creación de una gráfica bidimensional dentro de R. 

Otros parámetros de las 'estéticas', como ya lo dijimos,
son: 'size' & 'color'.

Consejo: Para el parámetro 'size' lo recomendado es que 
sea definido con una variable continua.

Nota: las figuras como tal se abordarán más adelante, 
debido a que hacen parte de la capa de las Geometrías.

Retomemos...

Entonces, como se podría estar imaginando, dentro de la 
función 'aes()' es donde se pueden definir nuestros ejes 
'x' e 'y', los tamaños & los colores (Si vamos a 'Mapear'). 

En el eje 'x', por ejemplo, nos interesa definir el campo 
'Rating_Criticos' & en el eje 'y', por su parte, nos 
interesa definir el campo 'Rating_Audiencia' 
(Así lo requiere el Resumen del proyecto). Adicionalmente, 
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
1.3 Sobre las funciones tipo 'geom_ ...' & sus figuras:
    Introducción a funciones 'geom_point()' & 'geom_line()'
    
Las funciones 'geom_point' & 'geom_line()' básicamente 
tienen la facultad de poder definir un tipo de figura con 
el cual poder visualizar los datos nuestro dataframe; 
con más precisión, los datos de los campos evaluados 
dentro de la función 'ggplot'. 

Puntualmente, las figuras que representa la función 
'geom_point()' son como puntos o circulos rellenos;
mientras que las figuras que representa la función 
'geom_line()' son simplemente líneas.

Hay más tipos de figuras; o, por decirlo de alguna forma, 
hay más tipos de 'geom' para representar nuestros datos... 
Sin embargo, de momento, sólo trabajaremos con estas dos. 
Más adelante abordaremos más tipos de figuras con este 
tipo de función 'geom_ ...'.

Aclaración: Cualquier función de tipo 'geom_ ...' se pasa 
por medio del signo suma (+) por fuera de los paréntesis 
de la función 'ggplot'. Dejemos claro esto por medio de 
un ejemplo con la función 'geom_point()'.

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

