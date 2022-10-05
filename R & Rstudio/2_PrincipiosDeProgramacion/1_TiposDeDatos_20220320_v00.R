"
Sobre los 5 principales tipos de datos en R, también 
conocidos como: Tipos de datos atomicos.

La manera en cómo asignamos un valor a una variable,
a manera de equivalencia, es por medio del siguiente
puntero: '<-'; es decir, éste hace el simil del signo
'=' para definir un valor a una variable.

Tipos de datos:

1. Integer. El tipo de dato 'integer' se define
con un numero entero; sin embargo, inmediatamente
después de la definición del numero, éste se acompaña
de la letra 'L'. Por ej. X <- 10L (Es un entero = 10).

Acontece que el lenguaje R ha definido que, por 
defecto, los numeros enteros (los que conoce en 
la vida real) serán tratado intencionalmente como 
un valor de tipo 'double' (otro tipo de dato), 
en vez de 'integer'; pues, R quiere dejar de entrada
por hecho que los numeros enteros serán utilizados 
para operaciones matematicas y, para efectos 
prácticos, en programación, estos numeros siempre 
han sido definidos como 'double' porque en la vida
real los numeros que usted opera tienden a ser
numeros con decimales; es decir, de tipo 'double'.

"

# definición de un 'integer' en un ejemplo. 

x <- 10L 

"
Comprobemos que, en efecto, la variable 'x' 
es un entero segun R; esto por medio de la función
'typeof()' que nos permite conocer el tipo de dato
de una variable. Tal que asi:
"

typeof(x)

# definición de un 'double' en un ejemplo. 

"
Lo dicho anteriormente, el numero entero como usted 
lo conoce realmente es un numero de tipo 'double' 
en lenguaje R. Por definicion un tipo de dato 
'double' realmente seria un numero entero que 
abre la posibilidad de incluir decimales.

"

y <- 10 #corra esta linea primero para declarar.
typeof(y)

"
Entonces, en qué casos sería de utilidad declarar 
números enteros? 

Los enteros serían útiles en el caso de que su 
interés puntual sea solamente el de contar números 
(hacer conteos/secuencias), mas no hacer operaciones 
aritméticas con ellos. 

Para operar valores números aritméticamente, 
hacer cálculos matemáticos, si bien no será 
necesario especificar el tipo de dato que debe 
tener la declaración de sus números 
(esto lo hace directamente R por usted) 
sepa que los tipos de datos que podrán 
operarse matemáticamente son los 'double' 
y en R los 'double' no son más que los números 
enteros como usted los ha conocido siempre.

Ahora, recuerde, los números enteros como usted 
los conoce sí se les debe declarar algo adicional: 
una L al final.
"

"
-------------------------------------------------

Ahora, el tercer tipo de datos en R se le conoce 
como 'complex' y traduce 'complejo'. 

Como su nombre lo dice, las variables que son 
definidas como tipo de dato 'complex' contienen 
números complejos o se les conoce por trabajar 
con números complejos; es decir, 
donde el 'segundo miembro' o la segunda expresión, 
con la que se define a la variable, 
contiene varios términos 
(no se define la variable con un sólo número, 
sino, por varios números operandose entre sí 
con la existencia de una incógnita de ecuación 
adicionalmente). Por ejemplo: z <- 3 + 2i

"

# definición de un 'complex' en un ejemplo. 

z <- 3+2i
typeof(z)

"
En caso desee convertir un número a un tipo de 
dato 'complex', suponiendo que el número en cuestión
esté contenido en una variable 'z', sería así:

as.complex(z)

"

"
------------------------------------------------

El cuarto tipo de dato en R es 'character' 
que traduce carácter. Con eso dicho, 
los tipos de datos 'character' se componen 
de contenido textual, es decir, 
sirven para almacenar texto. 

Este texto, o un simple carácter, debe ir entre 
comillas. Este tipo de dato 'character' hace 
el símil del tipo de dato 'string' de python o JS.

"

# definición de un 'character' en un ejemplo. 

a <- "Hola Isabella Carla, te amo"
typeof(a)

"
------------------------------------------------

El último tipo de dato es 'logical', es un tipo 
de datos lógico que pretende evaluar la validez 
lógica de una condición lógica analizada; 
entonces, a partir de la validez de la declaración 
evaluada, este tipo de datos 'logical' determina 
si la expresión lógica es verdadera o falsa. 

El tipo de dato 'logical', que hace un símil 
con el tipo de dato 'boolean', sólo puede asumir 
dos tipos de valores: T o TRUE (es lo mismo) 
& F o FALSE (es lo mismo).

"

# definición de un 'logical' en un ejemplo. 

t <- TRUE
f <- FALSE

typeof(f)

"
------------------------------------------------

EXTRA. Función 'length()'

Con la función 'length()' podemos saber la longitud
exacta de un vector, es decir, la cantidad o número 
de elementos que contiene. Observe el siguiente
ejemplo. 

Si tenemos que 'x' será una variable a la que se le 
asigne un vector de 3 elementos; desde luego, si le 
paso a la función 'length()' la variable 'x', como 
salida obtendríamos un resultado equivalente a 3. 

x <- c(33.5, 57.75, 120.05)

length(x)

#> [1] 3

"


