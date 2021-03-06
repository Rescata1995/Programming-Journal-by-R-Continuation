
"
Dataframe: 'dataset1'

"

dataset1 <- read.csv(file.choose())
dataset1

"
Si se quiere hacer distinciones visuales, por medio de 
un campo o columna, sin hacer uso de alguno de los ejes; 
es decir, sin hacer uso de los par�metros 'x' e 'y', 
podr�a asistirse de los otros par�metros de 'qplot' como 
'size' o 'color'. Haciendo un simil con Tableau, es como
cuando le pasa una columna a un tipo de 'marca' para 
distinguir visualmente su representaci�n gr�fica por medio 
de las categor�as o valores del campo en cuesti�n.

Veamos el siguiente ejemplo que pretende probar la 
relaci�n negativa que hay entre la tasa de natalidad Vs
la penetraci�n de internet & los niveles de ingresos.

"

qplot(data=dataset1, y=Tasa.Natalidad, x=Penetracion.Internet, size=I(5), color=Grupo.Ingresos)


"
Observe c�mo se diferencian las categor�as del campo 
'Grupo.Ingresos' por medio de una distinci�n visual basada 
en colores; es decir, a cada nivel de ingresos se le asigna 
un color diferente para evaluar visualmente el comportamiento 
del campo 'Grupo.Ingresos' y su relaci�n con los dem�s campos
evaluados en el tipo de gr�fico trazado con 'qplot'.

Importante: Cuando los par�metros 'size' o 'color' tienen
como valor la definici�n de un campo, o una columna, no 
es necesario que se asistan con la funci�n 'I()'.

Recordar que la correlaci�n de variables no significa
necesariamente causalidad.

"
