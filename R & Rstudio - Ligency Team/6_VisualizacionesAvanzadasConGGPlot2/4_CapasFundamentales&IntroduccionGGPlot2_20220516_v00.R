
"
Introducci�n a la funci�n GGPlot, Capas Fundamentales 
& Profundizaci�n sobre la Capa de las Est�ticas 

"

#Capa de Datos (Importaci�n de datos)

Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")


"
1. Introducci�n a 'ggplot' & sus par�metros


1.1. Sobre la funci�n 'ggplot' y par�metro 'data'

Vamos al grano con GGPlot. 'ggplot' recibe un primer 
par�metro fundamental; se trata del par�metro con el 
que se define con qu� dataframe vamos a trabajar, el 
par�metro: 'data'.

"

# Capa de las Est�ticas (�Cuando usar la funci�n 'aes'?)

"
1.2 Sobre la funci�n 'aes()', los par�metros de la capa 
de las est�ticas: ejes 'x' e 'y', 'color' & 'size' e 
Intro a las diferencias entre 'Mapping' vs 'Setting'


'aes()' es la funci�n que asiste a la definici�n de 
los par�metros de las 'est�ticas' (Marcas en Tableau), 
de nuestra visualizaci�n con 'ggplot', en caso de que estos 
par�metros sean definidos por medio de 'Mapeo de datos' 
(Mapping); es decir, asumiendo la asignaci�n de un campo 
como valor sobre estos par�metros y no precisamente 
'establecidendo' valores a secas (Setting) para ellos.

Profundicemos. Cuando hablamos de que en la capa de las 
est�ticas los par�metros tambi�n pueden ser definidos 
por medio de 'Mapeo de datos'; queremos decir de que,
por ejemplo, los par�metros 'size' & 'color' tambi�n
pueden ser definidos por medio del uso de campos; es decir, 
se tiene la facultad de poder definir los campos como 
'valores' de dichos par�metros; de hecho, se requiere en
el resumen del proyecto que el campo 'Presupuesto_Millones' 
se distinga visualmente por medio de tama�os (size) y que 
el campo 'Genero' se distinga visualmente por medio de 
colores (color): esto se hace con 'Mapeo de datos'. Dicho
lo anterior, como est� haciendo 'Mapping' en estos dos 
�ltimos casos puntuales, usted debe previamente asistirse 
de la funci�n 'aes()' para la asignaci�n de esos par�metros.

Luego, en el caso contrario, si queramos 'establecer' 
los valores de nuestros par�metros de la capa de las 
est�ticas a secas, con valores concretos, no es necesario 
asistirse con la funci�n 'aes()'; ni antes ni despu�s.

Ahora un recorderis. Con 'est�ticas' nos podemos referir, 
por ejemplo, a los par�metros de los ejes: 'x' e 'y', 
fundamentales en la mayoria de casos para poder facultar 
la creaci�n de una gr�fica bidimensional dentro de R. 

Otros par�metros de las 'est�ticas', como ya lo dijimos,
son: 'size' & 'color'.

Consejo: Para el par�metro 'size' lo recomendado es que 
sea definido con una variable continua.

Nota: las figuras como tal se abordar�n m�s adelante, 
debido a que hacen parte de la capa de las Geometr�as.

Retomemos...

Entonces, como se podr�a estar imaginando, dentro de la 
funci�n 'aes()' es donde se pueden definir nuestros ejes 
'x' e 'y', los tama�os & colores si requerimos 'Mapear'. 

En el eje 'x', por ejemplo, nos interesa definir el campo 
'Rating_Criticos' & en el eje 'y', por su parte, nos 
interesa definir el campo 'Rating_Audiencia' 
(As� lo requiere el Resumen del proyecto). Adicionalmente, 
vamos a definir el par�metro 'size' con el campo 
'Presupuesto_Millones' y el par�metro 'color' con el campo 
'Genero'. Veamos.

"
ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones))

"
Aclaraci�n importante:

De momento, si ha prestado atenci�n a las anteriores clases,
sabr� que del anterior c�digo de 'ggplot()' solo se podr� 
visualizar un diagrama 'vacio' con sus respectivos ejes;
esto es as� porque, bien recuerde, para poder visualizar 
propiamente las figuras representativas a sus datos
se tiene que trabajar directamente con la capa 'geom�trica'.
Vamos all�!

"

# Capa de las Geometr�as (Sobre la funci�n 'geom_point')

"
1.3 Sobre las funciones tipo 'geom_ ...' & sus figuras:
    Introducci�n a funciones 'geom_point()' & 'geom_line()'
    
Las funciones 'geom_point' & 'geom_line()' b�sicamente 
tienen la facultad de poder definir un tipo de figura con 
el cual poder visualizar los datos nuestro dataframe; 
con m�s precisi�n, los datos de los campos evaluados 
dentro de la funci�n 'ggplot'. 

Puntualmente, las figuras que representa la funci�n 
'geom_point()' son como puntos o circulos rellenos;
mientras que las figuras que representa la funci�n 
'geom_line()' son simplemente l�neas.

Hay m�s tipos de figuras; o, por decirlo de alguna forma, 
hay m�s tipos de 'geom' para representar nuestros datos... 
Sin embargo, de momento, s�lo trabajaremos con estas dos. 
M�s adelante abordaremos m�s tipos de figuras con este 
tipo de funci�n 'geom_ ...'.

Aclaraci�n: Cualquier funci�n de tipo 'geom_ ...' se pasa 
por medio del signo suma (+) por fuera de los par�ntesis 
de la funci�n 'ggplot'. Dejemos claro esto por medio de 
un ejemplo con la funci�n 'geom_point()'.

"
ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones)) + geom_point()


"
Key takeaway

De momento el 'insight' que podemos extraer tiene que ver con
que, generalmente, las criticas de la audiencia suelen ser m�s
positivas que las criticas profesionales. 

M�s adelante, estaremos profundizando m�s sobre este gr�fico 
en la medida que avanzemos e incorporemos m�s recursos dentro 
de nuestra funci�n 'ggplot'.

"

