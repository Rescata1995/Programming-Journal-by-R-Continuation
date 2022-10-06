### Introduccion a Funciones & Variables en R

### Práctica, creando nuestra primera función

calculo_1 = function(x){
  x^3 - (3^x) * sin(x)
}

calculo_1(1)
calculo_1(2)
calculo_1(3)
calculo_1(4)



# Uso de un parámetro 

suma_1 = function(y){
  y + 1
}

suma_1(1)
suma_1(-2)
suma_1(3)
suma_1(-4)



# Uso de dos parámetros 

producto_1 = function(y, x){
  y * x
}

producto_1(-1, 2)
producto_1(2, 3)
producto_1(-3, 4)
producto_1(4, 5)



# Uso de tres parámetros 

total = function(x, y, z){
  exp(x^2 + y^2) * sin(z)
}

total(1, 2, 3)



# Uso de funciones con secuencia de instrucciones

"
Cuando hablamos de secuencia de instrucciones nos referimos a que hay varias
líneas de código ejecutandose, no solo una, donde el resultado de una primera línea 
de código puede afectar al resultado de la línea de código que inmediatamente le 
sigue: efecto tipo 'cascada' (esto no es necesariamente así). 

En todo caso, generalmente, se entiende a una línea de código como una instrucción;
bueno, no siempre, pero siguiendo esa misma línea...
Cuando hay varias instrucciones, es decir, líneas de código; cada una de ellas debe 
estar separada por un punto y coma (;).

En qué casos no se debe colocar un punto y coma? Pues, cuando nos interesa hacer
una impresión por pantalla de cualquier variable o función, no una asignación.

Se coloca un (;) al final cuando estamos haciendo una asignación; es decir, lo que 
sería una instrucción realmente. Las salidas por pantalla no son instrucciones, 
no se está instruyendo o asignando nada: simplemente se está mostrando un resultado.

"

## Ejercicio

"
Hagamos un ejercicio poniendo en práctica el uso de funciones con secuencia de 
instrucciones por medio de la función ya creada 'suma_1'. 

La función o tarea de 'suma_1' es, literalmente, sumar un uno al parámetro o 
variable pasada. Juguemos con esto. Recuerde lo siguiente:

"

suma_1 = function(y){
  y + 1
}
suma_1(10)


### Resolución Ejercicio

suma_5 = function(x){
  x = suma_1(x);
  x = suma_1(x);
  x = suma_1(x);
  x = suma_1(x);
  x = suma_1(x);
  x
}

suma_5(10)

"
Como has notado, a las funciones se les puede asignar variables también.

"

## Quizzes 

"
Elabore una función que imprima varias operaciones matematicas entre dos 
variables, por separado, donde cada operativa ocupe su propia línea de código. 
Las operaciones matematicas que va a calcular son: 'Suma', 'Resta', 
'Multiplicación', 'División', 'Cociente entero' & 'Módulo'. 

"

"
EXTRA. Introducción a las funciones paste() & sprintf(). Estas son funciones que 
permiten, de manera conjunta, importar el resultado de una operación matemática entre
variables dentro de una cadena de texto (se emplean ambas funciones). Sin embargo, con 
el sólo uso de la función 'sprintf()', podemos importar variables en cadenas de textos 
para ser manejadas como cadenas de texto; pero, ojo, no puede operarlas matematicamente
sin hacer uso de la función 'paste()'. Observemos esto.

"

Operaciones = function(x, y){
  print(paste(sprintf("A cuanto equivale la suma entre %i & %i? La suma equivale a:", x, y), x + y))
  writeLines("\n")
  print(paste(sprintf("A cuanto equivale la resta entre %i & %i? La resta equivale a:", x, y), x - y))
  print(paste(sprintf("A cuanto equivale la resta entre %i & %i? La resta equivale a:", y, x), y - x))
  writeLines("\n")
  print(paste(sprintf("A cuanto equivale la multiplicación entre %i & %i? La multiplicación equivale a:", x, y), x * y))
  writeLines("\n")
  print(paste(sprintf("A cuanto equivale la división entre %i & %i? La división equivale a:", x, y), x / y))
  print(paste(sprintf("A cuanto equivale la división entre %i & %i? La división equivale a:", y, x), y / x))
  writeLines("\n")
  print(paste(sprintf("Cuál sería el cociente entero entre la división de %i & %i? El cociente entero es:" ,x,y), x%/%y))
  writeLines("\n")
  print(paste(sprintf("A cuanto equivale el residuo de la división entre %i & %i? El residuo es:", x,y), x%%y))
}

Operaciones(11,5)

