Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")


# Uso optimizado de la Capa de las Geometr�as 

"
Retomemos la �ltima funci�n de 'ggplot' visualizada:

"

ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones)) + geom_point()


"
1. Asignaci�n de 'ggplot' a un Objeto.

Ahora, asignemos nuestro anterior c�digo de 'ggplot' a un 
Objeto; en otras palabras, a una variable... Pero, atenci�n, 
sin asignar a�n una capa de las Geometr�as; es decir, 
sin asignar todav�a alg�n tipo de funci�n 'Geom_ ...'. 

Observe.

"

Objeto1 <- ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                                  color=Genero, size=Presupuesto_Millones))

"
2. Concepto de 'Graficar con Capas' (Geom�tricas):
   Visualizaci�n de capas geom�tricas sobre un Objeto.

Si ejecuta simplemente a 'Objeto1', como bien se espera,
no podr�a visualizar ninguna figura que est� representando
los datos de su an�lisis con 'ggplot'; esto es porque no 
hemos asignado todav�a figura alguna mediante la funci�n de 
tipo 'geom_ ...'. 

"
Objeto1

"
De ahora en adelante usted notar� que puede llamar cuantas
veces desee a 'Objeto1', para representar su visualizaci�n,
pero asistiendose de diferentes figuras que representen a 
sus datos contenidos en los campos que manipula dentro de 
'ggplot'. 

Tal que as�, observe:

"
#Figuras: puntos o c�rculos rellenos
Objeto1 + geom_point()


#Figuras: l�neas
Objeto1 + geom_line()

"
A esta versatilidad se le llama: 'Graficar con Capas': 
tener la facultad de poner por encima de un mismo objeto,
que est� conteniendo a una misma funci�n 'ggplot', varias 
capas de geometr�as de forma independiente; es decir, poder 
tener la oportunidad de representar nuestra visualizaci�n 
por medio de diferentes figuras geometricas cada vez que 
desee.


2.1 Asignaci�n de capas geom�tricas m�ltiples sobre un 
    Objeto

De hecho, usted puede incluso hacer uso de m�ltiples capas 
geom�tricas de manera simult�nea. Observe.

"
Objeto1 + geom_point() + geom_line()



"
3. Superposici�n de capas Geom�tricas en un Objeto

En caso de que tenga el inter�s de hacer uso de m�ltiples 
capas geom�tricas, de manera simult�nea, sobre una misma
ejecuci�n de su Objeto; por ejemplo, 'Objeto1', es preciso 
que sepa que el orden s� importa a la hora de llamar a sus 
capas geom�tricas; porque, seg�n el orden en el que se 
llamen, usted podr� controlar qu� capa se superpondr� sobre 
otra.

La capa geom�trica que se llame de �ltimo ser� la capa que 
se superpondr� sobre las dem�s.

Entonces, por ejemplo, si quisieramos que nuestra capa 
geom�trica 'geom_point()' se superponga sobre la capa
'geom_line()' para poder visualizar todos nuestros puntos 
sobre las l�neas; tendr�amos entonces que llamar de �ltimo
a la capa geom�trica 'geom_point()'. Llame primero a su 
capa geom�trica 'geom_line()'. Observe.

"
Objeto1 + geom_line() + geom_point()


"
De momento hemos podido agregar dos capas geom�tricas sobre 
'Objeto1': 'geom_point()' & 'geom_point()'. Sin embargo,
hay variadades de capas adicionales. Mantente atento!

"

