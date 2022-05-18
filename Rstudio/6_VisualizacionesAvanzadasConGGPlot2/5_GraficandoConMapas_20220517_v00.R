Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


# Uso optimizado de la Capa de las Geometrías 

"
Retomemenos la última función de 'ggplot' visualizada:

"

ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones)) + geom_point()


"
1. Asignación de 'ggplot' a un Objeto.

Ahora, asignemos nuestro anterior código de 'ggplot' a un 
Objeto; en otras palabras, a una variable... Pero, atención, 
sin asignar aún una capa de las Geometrías; es decir, 
sin asignar todavía algún tipo de función 'Geom_ ...'. 

Observe.

"

Objeto1 <- ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                                  color=Genero, size=Presupuesto_Millones))

"
2. Concepto de 'Graficar con Capas' (Geométricas):
   Visualización de capas geométricas sobre un Objeto.

Si ejecuta simplemente a 'Objeto1', como bien se espera,
no podría visualizar ninguna figura que esté representando
los datos de su análisis con 'ggplot'; esto es porque no 
hemos asignado todavía figura alguna mediante la función de 
tipo 'geom_ ...'. 

"
Objeto1

"
De ahora en adelante usted notará que puede llamar cuantas
veces desee a 'Objeto1', para representar su visualización,
pero asistiendose de diferentes figuras que representen a 
sus datos contenidos en los campos que manipula dentro de 
'ggplot'. 

Tal que así, observe:

"
#Figuras: puntos o círculos rellenos
Objeto1 + geom_point()


#Figuras: líneas
Objeto1 + geom_line()

"
A esta versatilidad se le llama: 'Graficar con Capas': 
tener la facultad de poner por encima de un mismo objeto,
que está conteniendo a una misma función 'ggplot', varias 
capas de geometrías de forma independiente; es decir, poder 
tener la oportunidad de representar nuestra visualización 
por medio de diferentes figuras geometricas cada vez que 
desee.


2.1 Asignación de capas geométricas múltiples sobre un 
    Objeto

De hecho, usted puede incluso hacer uso de múltiples capas 
geométricas de manera simultánea. Observe.

"
Objeto1 + geom_point() + geom_line()



"
3. Superposición de capas Geométricas en un Objeto

En caso de que tenga el interés de hacer uso de múltiples 
capas geométricas, de manera simultánea, sobre una misma
ejecución de su Objeto; por ejemplo, 'Objeto1', es preciso 
que sepa que el orden sí importa a la hora de llamar a sus 
capas geométricas; porque, según el orden en el que se 
llamen, usted podrá controlar qué capa se superpondrá sobre 
otra.

La capa geométrica que se llame de último será la capa que 
se superpondrá sobre las demás.

Entonces, por ejemplo, si quisieramos que nuestra capa 
geométrica 'geom_point()' se superponga sobre la capa
'geom_line()' para poder visualizar todos nuestros puntos 
sobre las líneas; tendríamos entonces que llamar de último
a la capa geométrica 'geom_point()'. Llame primero a su 
capa geométrica 'geom_line()'. Observe.

"
Objeto1 + geom_line() + geom_point()


"
De momento hemos podido agregar dos capas geométricas sobre 
'Objeto1': 'geom_point()' & 'geom_point()'. Sin embargo,
hay variadades de capas adicionales. Mantente atento!

"

