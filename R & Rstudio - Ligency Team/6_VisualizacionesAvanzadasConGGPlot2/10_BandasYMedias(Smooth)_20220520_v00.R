Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", 
                     "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")


"
1.1 Introducci�n a la funci�n 'geom_smooth()'

'geom_smooth' es una funci�n del tipo 'geom_ ...' que 
sirve como recurso para observar tendencias, y eventuales 
correlaciones, entre sus variables por medio de un tipo 
de gr�fico que representa bandas y med�as moviles.

Para nuestro caso de estudio, por ejemplo, nos interesa
saber c�mo se relacionan los Ratings de los Cr�ticos con
los Ratings de la Audiencia, eje de las X e eje de las Y,
respectivamente: 

Si acaso es posible evidenciar alg�n patr�n o tendencia 
marcada entre los datos de la evaluaci�n de ambas variables 
o, tambi�n, qu� podr�a ser lo estad�sticamente probable al 
evaluar, en alg�n punto de su gr�fico, la intersecci�n 
entre sus variables estudiadas, etc: de esto se dedican 
las medias moviles especialmente, las bandas o sombras nos 
develan la fiabilidad que hay sobre los patrones o 
tendencias que marcan las medias moviles precisamente.

La tendencia es alcista, pero hacen faltas m�s variables
dentro del modelo (hay muchas sombras) para que sea m�s
preciso.


1.2 C�mo interpretar la relaci�n de las bandas con las
medias moviles (en caso que haga uso de ambos recursos)

En la medida que las medias moviles tengan una mayor 
sombra (bandas) a sus lados, disminuye la confianza de 
la visualizaci�n para saber puntualmente qu� es lo que 
est� pasando o, bien, para saber la totalidad de las
variables explicativas que afectan sobre el modelo 
estudiado. Es decir, se hace m�s probable la existencia 
de variables o factores que afecten al modelo, pero que 
est�n siendo dejados por fuera del mismo; impidiendo as�
la posibilidad de medir el impacto de dichas variables 
sobre el estudio y, en consecuencia, propiciando sesgos.


1.3 Par�metros de 'geom_smooth()'

A. 'fill': B�sicamente es la forma en la que la funci�n 
'geom_smooth()' le asigna colores a sus bandas. Haciendo
un s�mil con Tableau, puede interpretarse como la marca 
'color'. Si se define a 'fill' con un valor de 'NA' se
suprimen las bandas de su visualizaci�n.

Ahora, si usted define a 'fill' con un valor de 'NA'
s�lo se visualizar�an las medias moviles propias de
la funci�n 'geom_smooth()'. Las medias moviles nos 
permiten saber, con una mayor presici�n visual, c�mo 
se relacionan las variables X e Y evaluadas.


1.4 Sobre la camarader�a de la funci�n 'geom_smooth()',
de la capa de las Geometr�as, con los par�metros de la 
capa de las Est�ticas ('Marcas en Tableau'), par�metros
tipo: 'color' & 'size', entre otros.

Si usted decide hacer 'Mapeo de Datos' con un campo o 
variable, con tipo de dato 'factor', por medio de los 
par�metros de la capa de las est�ticas; es decir, 'color', 
'size', etc... & tambi�n decide hacer uso de la funci�n 
'geom_smooth()', de la capa de las Geometr�as, cada uno 
los 'levels', del campo categ�rico con el cual estar�a 
haciendo 'Mapeo de datos', ocupar�a una media movil de
manera independiente y se distinguir�a visualmente de 
todas las dem�s (esto es a causa del 'Mapeo de datos').

"

b <- ggplot(data=Datos, aes(x=Rating_Criticos, 
                            y=Rating_Audiencia, color=Genero))

b + geom_point() + geom_smooth(fill=NA)


"
EXTRA. Antesala del Bonus: funci�n 'geom_boxplot()' & 
sus gr�ficos tipo 'boxplot' 

"

box <- ggplot(data=Datos, aes(x=Genero, 
                              y=Rating_Audiencia, color=Genero))

box + geom_boxplot(size=1.2) + geom_jitter()

box + geom_jitter() + geom_boxplot(size=1.2, 
                                   alpha=0.5)
