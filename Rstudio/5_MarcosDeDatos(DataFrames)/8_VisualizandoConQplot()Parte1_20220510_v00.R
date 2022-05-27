
"
Dataframe: 'dataset1'

"

dataset1 <- read.csv(file.choose())
dataset1

"
Si se quiere hacer distinciones visuales, por medio de 
un campo o columna, sin hacer uso de alguno de los ejes; 
es decir, sin hacer uso de los parámetros 'x' e 'y', 
podría asistirse de los otros parámetros de 'qplot' como 
'size' o 'color'. Haciendo un simil con Tableau, es como
cuando le pasa una columna a un tipo de 'marca' para 
distinguir visualmente su representación gráfica por medio 
de las categorías o valores del campo en cuestión.

Veamos el siguiente ejemplo que pretende probar la 
relación negativa que hay entre la tasa de natalidad Vs
la penetración de internet & los niveles de ingresos.

"

qplot(data=dataset1, y=Tasa.Natalidad, x=Penetracion.Internet, size=I(5), color=Grupo.Ingresos)


"
Observe cómo se diferencian las categorías del campo 
'Grupo.Ingresos' por medio de una distinción visual basada 
en colores; es decir, a cada nivel de ingresos se le asigna 
un color diferente para evaluar visualmente el comportamiento 
del campo 'Grupo.Ingresos' y su relación con los demás campos
evaluados en el tipo de gráfico trazado con 'qplot'.

Importante: Cuando los parámetros 'size' o 'color' tienen
como valor la definición de un campo, o una columna, no 
es necesario que se asistan con la función 'I()'.

Recordar que la correlación de variables no significa
necesariamente causalidad.

"
