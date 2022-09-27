
# First Vectors (Arrays)

primero <- c(5,9,48,89)

"
Note que hemos hecho uso de una nueva sintaxis para 
declarar, justamente, nuestro primer vector.

Los vectores se componen de una función 'c' (combain)
que nos permite mantener concatenados, juntos, los 
distintos valores definidos bajo un mismo tipo de dato.

Nuestro 1er vector ha sido nombrado como: 'primero'. 
Es un vector de tipo numérico. 

De hecho, si inicializamos o creamos este vector, 
verá que en el Global Environment primero se muestra 
definido el nombre del vector: 'primero', luego se 
muestra qué tipo de vector es: 'num', posteriormente 
cuántos elementos (valores) contiene el mismo [1:4] 
y finalmente los valores propios del vector; es decir, 
5 9 48 89. Lo anterior sucederá con todos los 
vectores inicializados.

Ahora que nuestro vector ya está creado en R,
ejecutamos su código.

"

primero

"
Algo interesante: En R podemos saber si un objeto,
sea cual sea, es de tipo numérico o no por medio de 
la función 'is.numeric()'

Verifiquemos que, en efecto, el vector 'primero'
es de tipo numérico.

"

is.numeric(primero)

"
Si corremos la función anterior, ésta nos arrojará
como resultado: 'TRUE', pues, es verdad que 'primero'
es un vector numérico... pero, numérico de qué tipo?
Sus valores son de tipo 'integer' o 'double'?

Serán de tipo 'double' porque, si bien recuerda,
R interpreta los números que usted conoce como 
'enteros' (integer) como números 'decimales' (double).
Probemos con la función 'is.double' y 'is.integer': 

"
is.integer(primero)
is.double(primero)

" 
Si corremos la función anterior (is.double), ésta 
nos arrojará como resultado: 'TRUE', contrario a 
'is.integer'.

"

"
Ahora sí, vamos a crear un vector especificamente 
de tipo 'integer' (segundo vector). Tal que así:

"

segundo <- c(21L, 12L, 344L) 
segundo
is.integer(segundo) # TRUE

"
Ahora, vamos a crear un vector de tipo 'character'.

"

tercero <- c('Hola', 'Soy Roberto')
tercero
is.character(tercero) # TRUE

"
Recuerde, los vectores solamente pueden tener 
elementos o valores de un mismo tipo de dato.
Dentro de un vector no se pueden combinar tipos 
de datos. Verifiquemos esto.

"

cuarto <- c('hola', 'esto es una cadena', 
            'el numero que 5 verás a continuacion', 
            'tambien lo será', 5)

"
Si se fija en el Global Environment, notará 
que el número 5 del vector 'cuarto' fue interpretado
como un 'character' y no como un número.

Como se explicó antes, si un número está dentro de 
un vector que, al menos, contiene como valor a un 
caracter; entonces, ese número será interpretado 
también como caracter. 

Corra el vector 'cuarto', luego de inicializado, 
y notará también que el número 5 se imprimirá por 
pantalla entre comillas, es decir, como 'character'.

"
cuarto
is.character(cuarto)

# Sequence Function - seq()

"
La función 'Sequence' nos permite crear vectores
numéricos con mayor facilidad. En principio, toma
dos parámetros. 


Función 'Sequence' de tipo 'Integer'.

Supongamos que tenemos: 'seq(a,b)'.

Donde 'a' sería el parámetro Num. 1 y equivale al
primer elemento (número) del vector, corresponde
al primer número del vector y al primer elemento
del mismo.

Ahora, 'b' sería el parámetro Num. 2 y equivale al 
elemento final (número) del vector, es decir, 
corresponde al último número del vector y también
sería el último elemento del mismo. 

Dicho eso, la función 'seq()' lo que hará es crear 
un vector numérico donde el 1er parámetro 
correspondería al primer número del 
vector y el 2do parámetro correspondería al último; 
entonces el vector ejecutará, mientras no tenga
un 3er parámetro (OJO), todos los números que hay 
entre el 1er parámetro y el 2do (primer elemento
del vector y último, respectivamente).

Este primer vector numérico, de sólo dos parámetros,
es de tipo 'integer'. 

"

"
Función 'Sequence' de tipo 'Double'.

Si al vector se le agrega un tercer parámetro,
pasaría a ser un vector numérico de tipo 'double'.

El tercer parámetro que puede recibir un vector
es donde se definen los llamados 'pasos' 
(los pasos son los 'saltos' que se dan dentro 
del vector antes de pasar al siguiente número).

Cuando hablamos de 'pasos' se refiere a la definición
de los saltos que dará el vector antes de pasar al 
siguiente número; pero, tenga en cuenta algo, un
'salto' que haga el vector equivale también a un 
numéro ignorado dentro de la secuencia, los ignora
uno por uno en orden ascedendente.

Por ejemplo, si tenemos la siguiente secuencia: 

sec(1,5,2) 

y corremos... El vector sería:

1 3 5 

Es decir, se darían 2 saltos antes de pasar al 
siguiente número.

Además, el anterior vector numérico se trataría de 
un vector de tipo 'double'. Cuando el vector 
incluye un 3er parámetro, es decir, incluye 'saltos'
estamos hablando de un vector de tipo 'double'.

"

seq_integer <- seq(1,5)
seq_integer
is.integer(seq_integer) #TRUE

seq_double <- seq(1,5,2)
seq_double
is.double(seq_double) #TRUE


"
De consideración: dentro de las funciones, para 
hacer separaciones, siempre va la ',' (coma).

"

# Replicate Function - rep()

"
La función 'Replicate' nos permite crear vectores
también, pero se basa en la replica de un tipo de
dato (valor) pasado; ya sea un valor de tipo 
'numérico', de tipo 'character' o, incluso, 
un mismo vector (derivado de una función 'sequence'
o no).

Esta función acepta dos parámetros, el 1ro consiste 
en el valor que deseas replicar o ejecutar varias 
veces y el 2do consiste en la cantidad de veces 
que deseas replicar dicho valor pasado; como
dije anteriormente, ya sea de tipo 'numérico',
'character' o un vector. Probemos.

"

rep_double <- rep(10,5)
rep_double
# This 'rep' replicates values 'double'.


rep_integer <- rep(2L,5)
rep_integer
# This 'rep' replicates values 'integer'.


rep_character <- rep('R',5)
rep_character
# This 'rep' replicates values 'character'.


rep_vector <- rep(primero,5)
rep_vector
# This 'rep' replicates vectors.


rep_seq <- rep(seq_double, 5)
rep_seq
# This 'rep' replicates sequences. 


