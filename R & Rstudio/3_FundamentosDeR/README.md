**En esta sección definimos:**

**1.** Qué es un Vector en R, también conocidos en otros lenguajes de programación como **'Array'** 
e introducción al vector tipo 'Character' en R.

**2.** Se pone en práctica los vectores de tipo **'integer', 'double' & 'character'**. Adicionalmente,
se introducen dos tipos de funciones que sirven para crear vectores también: **'replicate'** & **'sequence'** 
(los 'sequence' de dos parámetros son de tipo 'integer' y los 'sequence' de tres parámetros son de tipo 'double'). 
Finalmente se recuerda que todos los valores contenidos dentro de una función se separan por comas. 

**3.** Se pretende practicar las distintas formas de acceder a elementos individuales dentro de un vector,
lo cual se logra por medio del uso de corchetes. Al igual, hay formas de usar los corchetes que nos permiten tener
un acceso múltiple a los elementos, es decir, poder acceder a varios elementos de manera simultánea y bajo una 
misma línea de código. Finalmente se recuerda que la *indexación*, dentro de un vector, comienza desde el número 1. 

**4.** Se da una introducción teórica a las operaciones con vectores y cómo se operan los vectores que no poseen
una misma longitud por medio del proceso de **'Reciclado de Vectores'**, sean múltiplos o no.

**5.** Se pretende evidenciar, por medio de un ejercicio, porqué resulta ser mucho más eficiente hacer operaciones 
dentro de R con un estilo propio a R y no con un estilo de programación de tipo más convencional; puntualmente se 
compara la rapidez de hacer operaciones aritméticas con vectores entre un método de resolución propio de R y un método de resolución convencional. R, a la hora de operar vectores, además de que maneja un código mucho más limpio, su ejecución es mucho más rápida. Nota: El valor nulo en R se declara como 'NA'.

**6.** Se recuerdan todas las funciones dadas hasta ahora y la utilidad de **'?()'** en una función. Si delante de una función 
se antepone el signo '?' y la cerramos con '()', y corremos código, R nos dará una ayuda o nos explicará de forma detallada cuál es la función de 
la _función_ de su interés; dejando claro una descripción, un uso y posibles argumentos. Especialmente evaluamos varios 
parámetros de la función **'rnorm'** (n, mean & sd), de la función **'seq'** (length.out, along.with) y de la función **'rep'** (each, times). 
Puede alternar el orden de los parámetros, de una función, si los especifica con su respectivo valor. 

**7.** Se da una introducción a los Paquetes en R, qué son y cuál es su relación con las *librerías* en R. Desde RStudio usted podrá visualizar todos sus paquetes instalados, cuáles están activados y cuáles desactivados. Los paquetes instalados los puede visualizar corriendo la función *'installed.packages()'*. Si los paquetes no vienen originalmente con Rstudio, lo normal es que los obtenga desde el repositorio de la **CRAN** (The Comprehensive R Archive Network); pero, incluso, usted puede hacer uso de paquetes bajados desde una fuente independiente o particular: generalmente son archivos tipo '.tar'.

Adicionalmente, se muestra la importancia del uso de las sub-pestañas **'Updates' e 'Install'** de la pestaña **'Packages'**. En este curso, especialmente, estaremos trabajando y nos centraremos en el paquete 'ggplot2'. 

Por último, en caso necesite asistencia con documentación o ayuda sobre una función en cuestión, puede hacer uso de las funciones **'help()' o '?()'**.

**8.** Realización de un ejercicio práctico en R que pretende evaluar toda la temática abordada en esta sección 3: 'Fundamentos de R'. El ejercicio se llama: 'Análisis de Estados Financieros'. Adicionalmente, se ponen en práctica nuevas funciones: **'round()', 'mean()', 'max()', 'min()' y el uso de saltos de línea en R con 'writeLines("\n")'**. Para más detalles, visite el código.
