
"
Este cap�tulo pretende ver las distintas formas de
acceder a elementos individuales dentro de un vector,
lo cual se logra por medio del uso de corchetes. 

Supongamos tenemos el siguiente vector: 'w'.


"
w <- c("a", "b", "c", "d", "e")

"
Como t� recuerdas, la indexaci�n comienza desde el 
n�mero 1; es decir, el 1er elemento de un vector
est� ubicado en la posici�n n�mero 1. 
El 2do elemento en la posici�n n�mero 2... 
Con la enumaraci�n de estas posiciones es que 
podemos acceder, individualmente, a cada uno de los 
elementos de un vector y eso se logra por medio del 
uso de corchetes.

Intentemos acceder al 1er elemento de 'w', es decir,
acceder al elemento a 'a', tal que as�:

"

w[1] 
# run this code to see the first element from 'w'

w[2]
w[3]
w[4]
w[5]

"
Hemos accedido individualmente a todos los elementos
del vector 'w'.

"


"
Multiple acceso de elementos en un vector

A. Acceder a todos los elementos de un vector menos 
a 1

Ahora, existe una manera eficiente en R de acceder
a todos los elementos de un vector, a excepci�n de 
uno; es decir, ignorando solamente un elemento del 
total de los elementos del vector manipulado. 

El proceso es similar: Llama a su vector y dentro de
los corchetes solamente coloca la posici�n del 
elemento que desea ignorar; sin embargo, y aqu� viene
la novedad, debe colocar por delante de la posici�n
del elemento un signo menos (-). 

Por ejemplo, supongamos que queremos acceder a todos 
los elementos de 'w' a excepci�n del elemento 3; 
es decir, ese elemento corresponde a la letra 'c'.
Veamos.

"

w[-3] 

"
Si corres el anterior c�digo ver�s que solamente se 
muestra por pantalla las letras 'a', 'b', 'd' y 'e',
ignorando la letra 'c'.

"

"
Almacenamiento de elementos individuales de un vector
en una nueva variable.

El elemento de un vector tambi�n es un vector en s�
mismo; por lo que podemos almacenar a cada uno de los
elementos de un vector, incluso, en nuevas variables 
independientes para ellos. 

Por ejemplo, almacenemos en una nueva variable el 
elemento n�mero 3 del vector 'w', corresponde a 'c'. 
Tal que as�: 

"

solo <- w[3]  
solo

"
Al igual, podr�a almacenar en una nueva variable
independiente el multiple de acceso de elementos 
de un vector. 

Por ejemplo, almacenenmos en una nueva variable 
todos los elementos del vector 'w', a excepci�n
del elemento n�mero 3. Tal que as�:

"

todos_menos_1 <- w[-3]
todos_menos_1


"
Multiple acceso de elementos en un vector

B. Acceder a una secuencia de elementos de un vector

Tambi�n existe una manera eficiente en R de acceder
a una secuencia de elementos de un vector; solamente
tiene que indiciar el punto de partida inicial (el 
elemento inicial al que se accede de la secuencia)
e indicar su punto final (el �ltimo elemento 
al que se accede de su secuencia). 

Ambos elementos de la secuencia del vector, inicial 
y final, se llaman por medio de dos puntos (:)

Por ejemplo, supongamos que queremos acceder desde
el elemento n�mero 2 hasta el elemento n�mero 4 del
vector 'w', tal que as�:

"

w[2:4]

"
Lo anterior tambi�n lo podemos almacenar en una
nueva variable independiente.
"

secuencia_vector <- w[2:4]
secuencia_vector

"
Podr�a adivinar qu� har�a el siguiente c�digo: 

w[-2:-4] 

"


"
Multiple acceso de elementos en un vector

C. Acceder a varios elementos de nuestra propia 
selecci�n en un vector.

Finalmente existe tambi�n una manera eficiente en R 
de acceder, simultaneamente, a varios elementos de
nuestra propia selecci�n dentro de un vector.

Vamos al grano inmediatamente.

Por ejemplo, queremos acceder de manera simultanea
solamente a los elementos n�mero 2 y 4 del vector 
'w'. Veamos.

"

w[c(2,4)]

"Ahora, vamos a almacenarlo dentro de una variable"

seleccion_personal <- w[c(2,4)]
seleccion_personal

"
Tambi�n si desea puede acceder, simultaneamente, a 
varios elementos de su vector en la forma opuesta: 
mencionando justamente los elementos a los que NO 
desea acceder.

Por ejemplo, queremos acceder de manera simultanea
a todos los elementos del vector 'w', a excepci�n 
de los elementos n�mero 2 y 4. Veamos.

"

w[c(-2,-4)]

"
Almacenemos en variable... 
"

seleccion_personal_opuesta <- w[c(-2,-4)]
seleccion_personal_opuesta
