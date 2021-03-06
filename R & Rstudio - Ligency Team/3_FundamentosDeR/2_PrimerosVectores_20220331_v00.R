
# First Vectors (Arrays)

primero <- c(5,9,48,89)

"
Note que hemos hecho uso de una nueva sintaxis para 
declarar, justamente, nuestro primer vector.

Los vectores se componen de una funci�n 'c' (combain)
que nos permite mantener concatenados, juntos, los 
distintos valores definidos bajo un mismo tipo de dato.

Nuestro 1er vector ha sido nombrado como: 'primero'. 
Es un vector de tipo num�rico. 

De hecho, si inicializamos o creamos este vector, 
ver� que en el Global Environment primero se muestra 
definido el nombre del vector: 'primero', luego se 
muestra qu� tipo de vector es: 'num', posteriormente 
cu�ntos elementos (valores) contiene el mismo [1:4] 
y finalmente los valores propios del vector; es decir, 
5 9 48 89. Lo anterior suceder� con todos los 
vectores inicializados.

Ahora que nuestro vector ya est� creado en R,
ejecutamos su c�digo.

"

primero

"
Algo interesante: En R podemos saber si un objeto,
sea cual sea, es de tipo num�rico o no por medio de 
la funci�n 'is.numeric()'

Verifiquemos que, en efecto, el vector 'primero'
es de tipo num�rico.

"

is.numeric(primero)

"
Si corremos la funci�n anterior, �sta nos arrojar�
como resultado: 'TRUE', pues, es verdad que 'primero'
es un vector num�rico... pero, num�rico de qu� tipo?
Sus valores son de tipo 'integer' o 'double'?

Ser�n de tipo 'double' porque, si bien recuerda,
R interpreta los n�meros que usted conoce como 
'enteros' (integer) como n�meros 'decimales' (double).
Probemos con la funci�n 'is.double' y 'is.integer': 

"
is.integer(primero)
is.double(primero)

" 
Si corremos la funci�n anterior (is.double), �sta 
nos arrojar� como resultado: 'TRUE', contrario a 
'is.integer'.

"

"
Ahora s�, vamos a crear un vector especificamente 
de tipo 'integer' (segundo vector). Tal que as�:

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
            'el numero que 5 ver�s a continuacion', 
            'tambien lo ser�', 5)

"
Si se fija en el Global Environment, notar� 
que el n�mero 5 del vector 'cuarto' fue interpretado
como un 'character' y no como un n�mero.

Como se explic� antes, si un n�mero est� dentro de 
un vector que, al menos, contiene como valor a un 
caracter; entonces, ese n�mero ser� interpretado 
tambi�n como caracter. 

Corra el vector 'cuarto', luego de inicializado, 
y notar� tambi�n que el n�mero 5 se imprimir� por 
pantalla entre comillas, es decir, como 'character'.

"
cuarto
is.character(cuarto)

# Sequence Function - seq()

"
La funci�n 'Sequence' nos permite crear vectores
num�ricos con mayor facilidad. En principio, toma
dos par�metros. 


Funci�n 'Sequence' de tipo 'Integer'.

Supongamos que tenemos: 'seq(a,b)'.

Donde 'a' ser�a el par�metro Num. 1 y equivale al
primer elemento (n�mero) del vector, corresponde
al primer n�mero del vector y al primer elemento
del mismo.

Ahora, 'b' ser�a el par�metro Num. 2 y equivale al 
elemento final (n�mero) del vector, es decir, 
corresponde al �ltimo n�mero del vector y tambi�n
ser�a el �ltimo elemento del mismo. 

Dicho eso, la funci�n 'seq()' lo que har� es crear 
un vector num�rico donde el 1er par�metro 
corresponder�a al primer n�mero del 
vector y el 2do par�metro corresponder�a al �ltimo; 
entonces el vector ejecutar�, mientras no tenga
un 3er par�metro (OJO), todos los n�meros que hay 
entre el 1er par�metro y el 2do (primer elemento
del vector y �ltimo, respectivamente).

Este primer vector num�rico, de s�lo dos par�metros,
es de tipo 'integer'. 

"

"
Funci�n 'Sequence' de tipo 'Double'.

Si al vector se le agrega un tercer par�metro,
pasar�a a ser un vector num�rico de tipo 'double'.

El tercer par�metro que puede recibir un vector
es donde se definen los llamados 'pasos' 
(los pasos son los 'saltos' que se dan dentro 
del vector antes de pasar al siguiente n�mero).

Cuando hablamos de 'pasos' se refiere a la definici�n
de los saltos que dar� el vector antes de pasar al 
siguiente n�mero; pero, tenga en cuenta algo, un
'salto' que haga el vector equivale tambi�n a un 
num�ro ignorado dentro de la secuencia, los ignora
uno por uno en orden ascedendente.

Por ejemplo, si tenemos la siguiente secuencia: 

sec(1,5,2) 

y corremos... El vector ser�a:

1 3 5 

Es decir, se dar�an 2 saltos antes de pasar al 
siguiente n�mero.

Adem�s, el anterior vector num�rico se tratar�a de 
un vector de tipo 'double'. Cuando el vector 
incluye un 3er par�metro, es decir, incluye 'saltos'
estamos hablando de un vector de tipo 'double'.

"

seq_integer <- seq(1,5)
seq_integer
is.integer(seq_integer) #TRUE

seq_double <- seq(1,5,2)
seq_double
is.double(seq_double) #TRUE


"
De consideraci�n: dentro de las funciones, para 
hacer separaciones, siempre va la ',' (coma).

"

# Replicate Function - rep()

"
La funci�n 'Replicate' nos permite crear vectores
tambi�n, pero se basa en la replica de un tipo de
dato (valor) pasado; ya sea un valor de tipo 
'num�rico', de tipo 'character' o, incluso, 
un mismo vector (derivado de una funci�n 'sequence'
o no).

Esta funci�n acepta dos par�metros, el 1ro consiste 
en el valor que deseas replicar o ejecutar varias 
veces y el 2do consiste en la cantidad de veces 
que deseas replicar dicho valor pasado; como
dije anteriormente, ya sea de tipo 'num�rico',
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


