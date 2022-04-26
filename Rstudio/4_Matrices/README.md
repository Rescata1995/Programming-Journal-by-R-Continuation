**En esta sección definimos:**

**1.** Se hace la presentación inicial del proyecto con el que estaremos trabajando en esta sección, el cual se relaciona con la generación, manipulación y análisis de _Matrices_. En concreto, estaremos trabajando con el _dataset_ 'Sección 4 - Set de Datos - Basketball.R'. La idea es la siguiente: por medio del análisis del rendimiento de los 10 mejores jugadores de la NBA, desde la temporada 2005-2015, se pretende ver el uso práctico de las matrices en R y lo fundamental que resultan ser para hacer Análisis de datos y extraer _insights_ de un conjunto de datos estructurado en específico. **Tenga algo en cuenta:** En la mayoria de las clases de esta sección debe tener incorporado el _dataset_ en cuestión, es decir, ejecutado dentro de cada uno de sus _scripts_.

A las matrices en R también se les llama _tablas_; de cualquier manera, aprenderemos a crear, manipular y trabajar con ellas: su indexación y cómo acceder a sus elementos, los cuales se encuentran en celdas. Como la matriz se compone de celdas debe saber también que la matriz posee dos dimensiones, éstas resultan en un sin número de intersecciones de filas y columnas. 

**2.** Se introducen las tres diferentes funciones para crear matrices en un script de R: 'matrix()', 'rbind()' & 'cbind()' y se deja claro porqué 'matrix()' no es muy usado para esta finalidad. Al igual, se presentan las funciones 'rownames'
y 'colnames' que se encargan de asignarle _nombres_ a las filas y las columnas, respectivamente, de una matriz pasada. 

**Importante:** En la creación de su matriz, para cualquier caso, lo ideal es que las longitudes de los vectores, con los cuales creará dicha matriz, sean iguales; de no ser así, se expone al riesgo de que en su matriz haya 'reciclado de vectores' y habrá que evaluar muy bien si eso es lo que realmente desea o no.

**3.** Se profundiza sobre las funciones 'rownames' & 'colnames', estas funciones se valen de vectores unidimensionales para asignar nombres a cada una de las filas y columnas de una matriz. Es preciso decir que, por medio de estos nombres asignados para cada fila y para cada columna, usted también puede acceder a los elementos de cada celda (ya no solo será posible con los números equivalentes a la indexación o a la ubicación de cada elemento o celda).

**4.** Se introduce la función 'names', con la cual se puede crear, verificar y eliminar _nombres_ a los elementos de un vector. Adicionalmente, se practican con ejercicios las funciones de 'rbind()' & 'cbind()', que sirven para crear matrices; como también se práctica la asignación de nombres a las filas y columnas de las matrices con las funciones 'rownames' & 'colnames'. Estos nombres asignados a matrices, por medio de las funciones 'rownames' & 'colnames', también se pueden verificar y eliminar.

**5.** Se introducen, ya en la práctica, las operaciones con matrices mediante dos ejercicios. **Importante**: Para operar 
varias matrices, digamos dos matrices entre sí, las matrices deben conservar el mismo tamaño en sus dimensiones; de lo contrario, R nos arrojaría un error. 

**6.** Se introducen nuevas funciones: sobre la creación de gráficas con la función 'Matplot()', sobre la capacidad de realizar una transposición en una tabla con la función 't()', sobre la importancia de crear etiquetas por medio de leyendas para dar contextos sobre visualizaciones con la función 'legend()' y varios ejercicios interesantes. 

**7.** Se introduce el concepto de _subconjunto_ para lo que concierne a _matrices_, por ejemplo, cómo acceder a uno y cómo conservar la naturaleza de un subconjunto como 'Matriz', especialmente en los casos donde el subconjunto extraido es de un nivel; de aquí parte el uso práctico y la importancia del parámetro 'drop', el cual puede asumir dos valores: 'T' o 'F'.

**8.** Se practica en un par de ejercicios la visualización de _subconjuntos_ de matrices con la función 'Matplot()', teniendo en cuenta también que para visualizar un subconjunto de nivel 1 (extraído de una Matriz) se debe hacer uso del parámetro 'drop' con un valor de 'F'. 

**9.** Se introducen las **_funciones_**: qué es, cómo se declara y a qué se debe su importancia, especialmente trataremos de poner en práctica este concepto mediante el uso de la función 'Matplot()' en varios ejercicios; adicionalmente, se introduce el concepto de _parámetros_ en una función y cuál es la razón de ser de un valor 'default' definido dentro de un parámetro.
