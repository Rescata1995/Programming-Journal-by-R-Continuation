Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


# Gestión de Capa Inicial & Capa de las Geometrías

"
Vamos a evaluar diferentes maneras de dar con una
misma visualización, con 'ggplot()', evaluando todas
las capas fundamentales en la representación de un 
mismo Histograma.

"

#1st way

#Capa Inicial
h1 <- ggplot(data=Datos, aes(x=Rating_Audiencia))

#Capa de las Geometrías
h1 + geom_histogram(binwidth=10, fill="White", color="Blue")


#2nd way

h2 <- ggplot(data=Datos)

h2 + geom_histogram(binwidth=10, fill="White", color="Blue", 
                   aes(x=Rating_Audiencia))

h2 + geom_histogram(binwidth=10, fill="White", color="Blue", 
                    aes(x=Rating_Criticos))

"
Ocupe el mejor código para hacer tus visualizaciones
con 'ggplot' según las propias necesidades que tenga
sobre cada proyecto. Por ejemplo, si usted sabe que 
a lo largo de su proyecto solamente necesitará evaluar 
el comportamiento de una misma variable, conviene 
trabajar con '1st way'; es decir, definiendo nuestra
variable de estudio en la capa inicial.

En el caso contrario, si a lo largo de su proyecto es
necesario que observe el comportamiento de varias 
variables de su dataset; entonces, para tener más 
flexibilidad, es conveniente que trabaje con '2nd way';
es decir, definiendo cada una de nuestras variables de 
estudio para cada una de las capas de las geometrías
(sólo será necesario que corra la capa de las Geometrías
que necesite en su momento).

"

#3rd way - Skeleton Plot

h3 <- ggplot()

h3 + geom_histogram(data=Datos, binwidth=10, fill="White", 
                    color="Blue", aes(x=Rating_Audiencia))

#Supongamos que cuente con otro dataset que se llame 'Datos2'
#Observe

h3 + geom_histogram(data=Datos2, binwidth=10, fill="White", 
                    color="Blue", aes(x=Rating_Audiencia))

"
Cuando requiera mucha más flexibilidad que, incluso, 
sea posible que no sólo pretenda estudiar visualmente
a varias variables de un mismo dataset; sino, ir más
allá y estudiar visualmente a varios datasets (no sólo 
a uno) ... conviene trabajar con '3rd way'; pues, usted 
también puede definir para cada uno de sus datasets
de estudio una capa geométrica diferente.

"