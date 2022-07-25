
"
Este capítulo pretende ver las distintas formas de
acceder a elementos individuales dentro de un vector,
lo cual se logra por medio del uso de corchetes. 

Supongamos tenemos el siguiente vector: 'w'.


"
w <- c("a", "b", "c", "d", "e")

"
Como tú recuerdas, la indexación comienza desde el 
número 1; es decir, el 1er elemento de un vector
está ubicado en la posición número 1. 
El 2do elemento en la posición número 2... 
Con la enumaración de estas posiciones es que 
podemos acceder, individualmente, a cada uno de los 
elementos de un vector y eso se logra por medio del 
uso de corchetes.

Intentemos acceder al 1er elemento de 'w', es decir,
acceder al elemento a 'a', tal que así:

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
a todos los elementos de un vector, a excepción de 
uno; es decir, ignorando solamente un elemento del 
total de los elementos del vector manipulado. 

El proceso es similar: Llama a su vector y dentro de
los corchetes solamente coloca la posición del 
elemento que desea ignorar; sin embargo, y aquí viene
la novedad, debe colocar por delante de la posición
del elemento un signo menos (-). 

Por ejemplo, supongamos que queremos acceder a todos 
los elementos de 'w' a excepción del elemento 3; 
es decir, ese elemento corresponde a la letra 'c'.
Veamos.

"

w[-3] 

"
Si corres el anterior código verás que solamente se 
muestra por pantalla las letras 'a', 'b', 'd' y 'e',
ignorando la letra 'c'.

"

"
Almacenamiento de elementos individuales de un vector
en una nueva variable.

El elemento de un vector también es un vector en sí
mismo; por lo que podemos almacenar a cada uno de los
elementos de un vector, incluso, en nuevas variables 
independientes para ellos. 

Por ejemplo, almacenemos en una nueva variable el 
elemento número 3 del vector 'w', corresponde a 'c'. 
Tal que así: 

"

solo <- w[3]  
solo

"
Al igual, podría almacenar en una nueva variable
independiente el multiple de acceso de elementos 
de un vector. 

Por ejemplo, almacenenmos en una nueva variable 
todos los elementos del vector 'w', a excepción
del elemento número 3. Tal que así:

"

todos_menos_1 <- w[-3]
todos_menos_1


"
Multiple acceso de elementos en un vector

B. Acceder a una secuencia de elementos de un vector

También existe una manera eficiente en R de acceder
a una secuencia de elementos de un vector; solamente
tiene que indiciar el punto de partida inicial (el 
elemento inicial al que se accede de la secuencia)
e indicar su punto final (el último elemento 
al que se accede de su secuencia). 

Ambos elementos de la secuencia del vector, inicial 
y final, se llaman por medio de dos puntos (:)

Por ejemplo, supongamos que queremos acceder desde
el elemento número 2 hasta el elemento número 4 del
vector 'w', tal que así:

"

w[2:4]

"
Lo anterior también lo podemos almacenar en una
nueva variable independiente.
"

secuencia_vector <- w[2:4]
secuencia_vector

"
Podría adivinar qué haría el siguiente código: 

w[-2:-4] 

"


"
Multiple acceso de elementos en un vector

C. Acceder a varios elementos de nuestra propia 
selección en un vector.

Finalmente existe también una manera eficiente en R 
de acceder, simultaneamente, a varios elementos de
nuestra propia selección dentro de un vector.

Vamos al grano inmediatamente.

Por ejemplo, queremos acceder de manera simultanea
solamente a los elementos número 2 y 4 del vector 
'w'. Veamos.

"

w[c(2,4)]

"Ahora, vamos a almacenarlo dentro de una variable"

seleccion_personal <- w[c(2,4)]
seleccion_personal

"
También si desea puede acceder, simultaneamente, a 
varios elementos de su vector en la forma opuesta: 
mencionando justamente los elementos a los que NO 
desea acceder.

Por ejemplo, queremos acceder de manera simultanea
a todos los elementos del vector 'w', a excepción 
de los elementos número 2 y 4. Veamos.

"

w[c(-2,-4)]

"
Almacenemos en variable... 
"

seleccion_personal_opuesta <- w[c(-2,-4)]
seleccion_personal_opuesta
