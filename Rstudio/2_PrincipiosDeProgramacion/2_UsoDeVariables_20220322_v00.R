# Uso de variables.

"
Anteriormente aprendimos cómo declarar las variables 
con los cinco principales tipos de datos en R, ahora 
vamos a aprender a usar dichas variables declaradas
haciendo operaciones aritmeticas como 'suma', etc.

Adicionalmente, conocerá cómo imprimir una variable y 
cómo ejecutar al mismo tiempo multiples líneas de 
código al seleccionarlas y correrlas conjuntamente.

al igual, notará que podrá asignar funciones a 
a sus variables declaradas y agregar, de paso,
variables dentro de dichas funciones asignadas.

Aprenderá también sobre la función 'sqrt', la función
correspondiente a la operación 'raiz cuadrada' y
cómo aplicarla al ser asignada dentro de una variable.

Por último, aprenderá cómo hacer operaciones con 
variables tipo 'character' y, principalmente, 
hacerlo por medio de la función 'paste()' que 
se encarga de concatenarlas entre sí.

"

A <- 10

B <- 5

# Operación Suma.

C <- A + B

"
El Simil de 'printf' de C en R.

Supongamos que no tuvieramos acceso a la 
herramienta de visualización 'Global Environment' que
nos permite ver los valores que hay dentro de una 
variable; sería útil, en ese caso, imprimirlos manual
mente por nuestra propia cuenta; es decir, mostrarlos
por pantalla como salida. 

Para imprimir el valor contenido dentro de una 
variable no se necesita correr función alguna
(como sí sucede, por ejemplo, en lenguaje C que se 
vale de una función llamada 'printf'), sino, se
necesita llamar directamente a la variable en cuestión
y correr su línea de código (solamente eso). 
Tal que así:

"
C

"
Aclaración: En principio no se requiere función 
alguna para mostrar por pantalla el valor de una 
variable; sin embargo, en casos especiales y más 
complejos sí lo precisará.

"

# ejecución de multiples líneas de códigos.

var1 <- 2.5
var2 <- 4

"
Señale las líneas de código de su interes,
conjuntamente, y ejecute con: Control + Enter.

"

# Operación División.

division <- var1 / var2
division 

# Funciones incorporadas dentro de variables.

"
Ejemplo.

variable declarada: 'raiz'. 
función de operación 'raiz cuadrada': 'sqrt()'.

"

raiz <- sqrt(var2)
raiz

"
Las dos anteriores líneas de código me calcularon 
la raiz cuadrada de la variable 'var2' por medio
de la variable 'raiz'.

"

"
Introducción a operaciones con caracteres por medio
de la función 'paste()' que se encarga de unir o
concatenar variables tipo 'character' entre sí: 

"

saludo <- "Hola"
nombre <- "Juan"

Mensaje <- paste(saludo, nombre)
Mensaje
