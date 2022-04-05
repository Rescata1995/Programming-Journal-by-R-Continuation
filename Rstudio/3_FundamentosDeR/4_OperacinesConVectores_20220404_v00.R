"
Trataremos de responder a la pregunta de porqué los 
corchetes rectangulares no son tan importantes en R 
y cuál es el principio fundamental que guía a este 
lenguaje de programación.

Como R es un lenguaje basado en vectores, siempre 
intenta facilitarnos el manejo de los mismos y las
operaciones aritméticas entre ellos no son una 
excepción. 

Por ejemplo, en otros lenguajes de programación 
para operar aritméticamente dos vectores entre sí 
debiera hacer uso de ciclos y variables de tipo 
contador, convencionalmente nombradas 'i'.

En R lo anterior no acontece, simplemente opera los 
dos vectores como si se tratara de dos números 
enteros; inclusive puede compararlos, 
relacionalmente, con la misma facilidad (si un 
vector A es mayor o menor que un vector B, 
por ejemplo). En verdad lo facilita todo 
y lo veremos con ejemplos. 

Ahora, esto es así de sencillo en vectores donde 
la longitud de los mismos es igual; es decir, al 
operar o comparar dos vectores que tiene la misma 
cantidad de elementos (idealmente debe ser así). 

Qué acontece entre dos vectores que pretenden ser 
operados o comparados, pero que no mantienen una 
misma longitud? Aquí sucede algo que se llama: 
'Reciclado de vectores'.

"

"
Reciclado de Vectores

A. Cuando el vector largo es múltiplo del corto

Supongamos que queremos un operar un vector A (de 
longitud 5) con un vector B (de longitud 10), lo 
que acontecerá es que R hará algo conocido como: 
'Reciclado de vectores' para poder operarlos.

R 'reciclará' el vector más corto para operarlo 
con el más largo; pero, idealmente, el vector más 
largo tiene que ser un múltiplo del vector más 
corto (esta última condición es necesaria para 
poder operar ambos vectores entre sí, en vectores 
de longitudes diferentes, por medio del 
'reciclado').

Por ejemplo, si tenemos que queremos operar un 
vector A (de longitud 5) con un vector B (de 
longitud 10), sería perfecto debido a que 10 es 
múltiplo de 5; es decir, 10 contiene n veces a 5, 
puntualmente 10 contiene 2 veces a 5. 

Ahora es aquí, con esta condición cumplida, donde 
el proceso de 'reciclado' correrá en nuestro 
código.

El proceso de 'reciclado' consiste en replicar n 
veces todos los elementos del vector menor hasta 
que el vector menor tenga la misma longitud del 
vector mayor. 

Es por lo anterior que es preciso que el vector 
mayor sea múltiplo del vector menor, pues, se 
quiere que todos los elementos del vector menor 
sean replicados hasta que la longitud del vector 
menor sea equivalente a la longitud del vector 
mayor.

------------------------------------------------

B. Cuando el vector largo NO es múltiplo del corto

Ahora, si el vector más largo no es múltiplo del 
vector más corto, la operación igual tendrá exito;
pero, ADVERTENCIA, a R no le gustará eso. 

Lo que sucederá es que el vector más corto 
reciclará y replicará la totalidad de sus 
elementos, de forma conjunta, hasta donde pueda; 
y, necesariamente, en la última réplica de 
elementos del vector más corto, para igualar la 
longitud del vector más largo, algunos elementos 
quedarán por fuera (los últimos).

"

"
Vectores y Funciones

Al igual puedes usar vectores dentro de funciones.
Y también los vectores pueden ser generados a 
partir de una función; por ejemplo, ya hemos visto
alguna de esas funciones: 'replicate' & 'sequence'.

"

"
Tip: 

Los vectores se operarán entre sí, elemento por 
elemento, según su posición o indexación.

"
