"
Trataremos de responder a la pregunta de porqu� los 
corchetes rectangulares no son tan importantes en R 
y cu�l es el principio fundamental que gu�a a este 
lenguaje de programaci�n.

Como R es un lenguaje basado en vectores, siempre 
intenta facilitarnos el manejo de los mismos y las
operaciones aritm�ticas entre ellos no son una 
excepci�n. 

Por ejemplo, en otros lenguajes de programaci�n 
para operar aritm�ticamente dos vectores entre s� 
debiera hacer uso de ciclos y variables de tipo 
contador, convencionalmente nombradas 'i'.

En R lo anterior no acontece, simplemente opera los 
dos vectores como si se tratara de dos n�meros 
enteros; inclusive puede compararlos, 
relacionalmente, con la misma facilidad (si un 
vector A es mayor o menor que un vector B, 
por ejemplo). En verdad lo facilita todo 
y lo veremos con ejemplos. 

Ahora, esto es as� de sencillo en vectores donde 
la longitud de los mismos es igual; es decir, al 
operar o comparar dos vectores que tiene la misma 
cantidad de elementos (idealmente debe ser as�). 

Qu� acontece entre dos vectores que pretenden ser 
operados o comparados, pero que no mantienen una 
misma longitud? Aqu� sucede algo que se llama: 
'Reciclado de vectores'.

"

"
Reciclado de Vectores

A. Cuando el vector largo es m�ltiplo del corto

Supongamos que queremos un operar un vector A (de 
longitud 5) con un vector B (de longitud 10), lo 
que acontecer� es que R har� algo conocido como: 
'Reciclado de vectores' para poder operarlos.

R 'reciclar�' el vector m�s corto para operarlo 
con el m�s largo; pero, idealmente, el vector m�s 
largo tiene que ser un m�ltiplo del vector m�s 
corto (esta �ltima condici�n es necesaria para 
poder operar ambos vectores entre s�, en vectores 
de longitudes diferentes, por medio del 
'reciclado').

Por ejemplo, si tenemos que queremos operar un 
vector A (de longitud 5) con un vector B (de 
longitud 10), ser�a perfecto debido a que 10 es 
m�ltiplo de 5; es decir, 10 contiene n veces a 5, 
puntualmente 10 contiene 2 veces a 5. 

Ahora es aqu�, con esta condici�n cumplida, donde 
el proceso de 'reciclado' correr� en nuestro 
c�digo.

El proceso de 'reciclado' consiste en replicar n 
veces todos los elementos del vector menor hasta 
que el vector menor tenga la misma longitud del 
vector mayor. 

Es por lo anterior que es preciso que el vector 
mayor sea m�ltiplo del vector menor, pues, se 
quiere que todos los elementos del vector menor 
sean replicados hasta que la longitud del vector 
menor sea equivalente a la longitud del vector 
mayor.

------------------------------------------------

B. Cuando el vector largo NO es m�ltiplo del corto

Ahora, si el vector m�s largo no es m�ltiplo del 
vector m�s corto, la operaci�n igual tendr� exito;
pero, ADVERTENCIA, a R no le gustar� eso. 

Lo que suceder� es que el vector m�s corto 
reciclar� y replicar� la totalidad de sus 
elementos, de forma conjunta, hasta donde pueda; 
y, necesariamente, en la �ltima r�plica de 
elementos del vector m�s corto, para igualar la 
longitud del vector m�s largo, algunos elementos 
quedar�n por fuera (los �ltimos).

"

"
Vectores y Funciones

Al igual puedes usar vectores dentro de funciones.
Y tambi�n los vectores pueden ser generados a 
partir de una funci�n; por ejemplo, ya hemos visto
alguna de esas funciones: 'replicate' & 'sequence'.

"

"
Tip: 

Los vectores se operar�n entre s�, elemento por 
elemento, seg�n su posici�n o indexaci�n.

"
