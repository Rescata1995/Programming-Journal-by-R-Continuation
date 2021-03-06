# Uso de variables.

"
Anteriormente aprendimos c�mo declarar las variables 
con los cinco principales tipos de datos en R, ahora 
vamos a aprender a usar dichas variables declaradas
haciendo operaciones aritmeticas como 'suma', etc.

Adicionalmente, conocer� c�mo imprimir una variable y 
c�mo ejecutar al mismo tiempo multiples l�neas de 
c�digo al seleccionarlas y correrlas conjuntamente.

al igual, notar� que podr� asignar funciones a 
a sus variables declaradas y agregar, de paso,
variables dentro de dichas funciones asignadas.

Aprender� tambi�n sobre la funci�n 'sqrt', la funci�n
correspondiente a la operaci�n 'raiz cuadrada' y
c�mo aplicarla al ser asignada dentro de una variable.

Por �ltimo, aprender� c�mo hacer operaciones con 
variables tipo 'character' y, principalmente, 
hacerlo por medio de la funci�n 'paste()' que 
se encarga de concatenarlas entre s�.

"

A <- 10

B <- 5

# Operaci�n Suma.

C <- A + B

"
El Simil de 'printf' de C en R.

Supongamos que no tuvieramos acceso a la 
herramienta de visualizaci�n 'Global Environment' que
nos permite ver los valores que hay dentro de una 
variable; ser�a �til, en ese caso, imprimirlos manual
mente por nuestra propia cuenta; es decir, mostrarlos
por pantalla como salida. 

Para imprimir el valor contenido dentro de una 
variable no se necesita correr funci�n alguna
(como s� sucede, por ejemplo, en lenguaje C que se 
vale de una funci�n llamada 'printf'), sino, se
necesita llamar directamente a la variable en cuesti�n
y correr su l�nea de c�digo (solamente eso). 
Tal que as�:

"
C

"
Aclaraci�n: En principio no se requiere funci�n 
alguna para mostrar por pantalla el valor de una 
variable; sin embargo, en casos especiales y m�s 
complejos s� lo precisar�.

"

# ejecuci�n de multiples l�neas de c�digos.

var1 <- 2.5
var2 <- 4

"
Se�ale las l�neas de c�digo de su interes,
conjuntamente, y ejecute con: Control + Enter.

"

# Operaci�n Divisi�n.

division <- var1 / var2
division 

# Funciones incorporadas dentro de variables.

"
Ejemplo.

variable declarada: 'raiz'. 
funci�n de operaci�n 'raiz cuadrada': 'sqrt()'.

"

raiz <- sqrt(var2)
raiz

"
Las dos anteriores l�neas de c�digo me calcularon 
la raiz cuadrada de la variable 'var2' por medio
de la variable 'raiz'.

"

"
Introducci�n a operaciones con caracteres por medio
de la funci�n 'paste()' que se encarga de unir o
concatenar variables tipo 'character' entre s�: 

"

saludo <- "Hola"
nombre <- "Juan"

Mensaje <- paste(saludo, nombre)
Mensaje
