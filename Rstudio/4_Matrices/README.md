**En esta sección definimos:**

**1.** Presentación inicial del proyecto con el que estaremos trabajando en esta sección, relacionada a 'Matrices',
donde justamente; por medio del análisis del rendimiento de los 10 mejores jugadores de la NBA, desde la temporada 
2005-2015, se pretende ver el uso práctico de las matrices en R y lo fundamental que resultan ser para hacer Análisis de datos y extraer _insights_ de un conjunto de datos en específico.

A las matrices, en R, también se les llama tablas; de cualquier manera, aprenderemos a crear, manipular y trabajar con ellas: su indexación y cómo acceder a sus elementos, los cuales se encuentran en celdas. Como la matriz se compone de celdas debe saber también que la matriz posee dos dimensiones, éstas resultan en un sin número de intersecciones de filas y columnas. 

**2.** Se introducen las tres diferentes funciones para crear matrices en un script de R: 'matrix()', 'rbind()' & 'cbind()' y se deja claro porqué 'matrix()' no es muy usado para esta finalidad. Al igual, se presentan las funciones 'rownames'
y 'colnames' que también crean vectores en función de las matrices, sin embargo, éstos son los que sirven de _etiqueta_ a los valores contenidos propiamente dentro de la matriz. 

**Importante:** En la creación de su matriz, para cualquier caso, lo ideal es que las longitudes de los vectores, con los cuales creará dicha matriz, sean iguales; de no ser así, se expone al riesgo de que en su matriz haya 'reciclado de vectores' y habrá que evaluar muy bien si eso es lo que realmente desea o no.
