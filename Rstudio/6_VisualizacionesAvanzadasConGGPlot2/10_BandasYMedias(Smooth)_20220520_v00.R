Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", 
                     "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


"
1.1 Introducción a la función 'geom_smooth()'

'geom_smooth' es una función del tipo 'geom_ ...' que 
sirve como recurso para observar tendencias, y eventuales 
correlaciones, entre sus variables por medio de un tipo 
de gráfico que representa bandas y medías moviles.

Para nuestro caso de estudio, por ejemplo, nos interesa
saber cómo se relacionan los Ratings de los Críticos con
los Ratings de la Audiencia, eje de las X e eje de las Y,
respectivamente: 

Si acaso es posible evidenciar algún patrón o tendencia 
marcada entre los datos de la evaluación de ambas variables 
o, también, qué podría ser lo estadísticamente probable al 
evaluar, en algún punto de su gráfico, la intersección 
entre sus variables estudiadas, etc: de esto se dedican 
las medias moviles especialmente, las bandas o sombras nos 
develan la fiabilidad que hay sobre los patrones o 
tendencias que marcan las medias moviles precisamente.

La tendencia es alcista, pero hacen faltas más variables
dentro del modelo (hay muchas sombras) para que sea más
preciso.


1.2 Cómo interpretar la relación de las bandas con las
medias moviles (en caso que haga uso de ambos recursos)

En la medida que las medias moviles tengan una mayor 
sombra (bandas) a sus lados, disminuye la confianza de 
la visualización para saber puntualmente qué es lo que 
está pasando o, bien, para saber la totalidad de las
variables explicativas que afectan sobre el modelo 
estudiado. Es decir, se hace más probable la existencia 
de variables o factores que afecten al modelo, pero que 
están siendo dejados por fuera del mismo; impidiendo así
la posibilidad de medir el impacto de dichas variables 
sobre el estudio y, en consecuencia, propiciando sesgos.


1.3 Parámetros de 'geom_smooth()'

A. 'fill': Básicamente es la forma en la que la función 
'geom_smooth()' le asigna colores a sus bandas. Haciendo
un símil con Tableau, puede interpretarse como la marca 
'color'. Si se define a 'fill' con un valor de 'NA' se
suprimen las bandas de su visualización.

Ahora, si usted define a 'fill' con un valor de 'NA'
sólo se visualizarían las medias moviles propias de
la función 'geom_smooth()'. Las medias moviles nos 
permiten saber, con una mayor presición visual, cómo 
se relacionan las variables X e Y evaluadas.


1.4 Sobre la camaradería de la función 'geom_smooth()',
de la capa de las Geometrías, con los parámetros de la 
capa de las Estéticas ('Marcas en Tableau'), parámetros
tipo: 'color' & 'size', entre otros.

Si usted decide hacer 'Mapeo de Datos' con un campo o 
variable, con tipo de dato 'factor', por medio de los 
parámetros de la capa de las estéticas; es decir, 'color', 
'size', etc... & también decide hacer uso de la función 
'geom_smooth()', de la capa de las Geometrías, cada uno 
los 'levels', del campo categórico con el cual estaría 
haciendo 'Mapeo de datos', ocuparía una media movil de
manera independiente y se distinguiría visualmente de 
todas las demás (esto es a causa del 'Mapeo de datos').

"

b <- ggplot(data=Datos, aes(x=Rating_Criticos, 
                            y=Rating_Audiencia, color=Genero))

b + geom_point() + geom_smooth(fill=NA)


"
EXTRA. Antesala del Bonus: función 'geom_boxplot()' & 
sus gráficos tipo 'boxplot' 

"

box <- ggplot(data=Datos, aes(x=Genero, 
                              y=Rating_Audiencia, color=Genero))

box + geom_boxplot(size=1.2) + geom_jitter()

box + geom_jitter() + geom_boxplot(size=1.2, 
                                   alpha=0.5)
