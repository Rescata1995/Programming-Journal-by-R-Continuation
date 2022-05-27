
"
Introducción a Operadores Logicos & Relacionales. 
Antes de abordar el tema propiamente, expongamos un 
par de ejemplos...

"

# Ejemplo de declaración logica 'verdadera':

4 < 5
4 != 5

# Ejemplos de declaración logica 'falsa':

10 > 100
4 == 5


"
Operadores relacionaleS.

1. 
  Operación: 'Mayor que', 
  Símbolo/Operador: >, 
  Sintaxis: valor1 > valor2
  
2. 
  Operación: 'Menor que', 
  Símbolo/Operador: <, 
  Sintaxis: valor1 < valor2
  
3. 
  Operación: 'Mayor o igual que', 
  Símbolo/Operador: >=, 
  Sintaxis: valor1 >= valor2
  
4. 
  Operación: 'Menor o igual que', 
  Símbolo/Operador: <=, 
  Sintaxis: valor1 <= valor2
  
5. 
  Operación: 'Igual que', 
  Símbolo/Operador: ==, 
  Sintaxis: valor1 == valor2
  
6. 
  Operación: 'Diferente que', 
  Símbolo/Operador: !=, 
  Sintaxis: valor1 != valor2

"

"
Operadores logicos.

1. 
  Operación: 'Not', 
  Símbolo/Operador: !, 
  Sintaxis: !(valor1 == valor2)
  
  
  Expliquemos esto: Suponiendo que 'valor1' es 5 y 
  que 'valor2' es 5 también. Usted se imagina
  anticipadamente que la declaración logica
  '5 == 5' da como resultado 'TRUE'; pues, en efecto,
  5 sí es igual a 5. 
  
  Sin embargo, la función del operador logico '!' 
  viene a negar al resultado logico que ha sido 
  valido; más precisamente, su valor logico 
  resultante (sea 'TRUE' o 'FALSE').
  
  Si tenemos que 5 == 5 es 'TRUE', entonces,
  !(5 == 5) equivale a 'FALSE' y así... 
  
2. 
  Operación: 'Y', 
  Símbolo/Operador: |, 
  Sintaxis: valor1 | valor2

3. 
  Operación: 'O', 
  Símbolo/Operador: &,
  Sintaxis: valor1 & valor2
"


"
El acto de hacer declaraciones logicas (especialmente
en comparaciones) para probar la validez logica 
de la declaración en sí; ya sea con operadores 
logicos o relacionales o con ambos conjuntamente,
pueden dar como resultado solo dos valores posibles
y ambos tienen que ver con un mismo tipo de dato: 
'logical' (En otros lenguajes llamado: 'Boolean').

Los dos valores posibles de 'logical' son: 
'TRUE' or 'FALSE'.

Probemos, mediante un ejemplo, cómo se puede 
ver un valor resultante de tipo 'logical', 
ya sea 'FALSE' o 'TRUE', como también confirmar
que estamos ante -precisamente- un tipo de dato 
'logical'.

El ejemplo será mediante la asignación de una 
expresión logica a una variable. Tal que así:

"

variable <- !(4 < 5)

"Si corremos la anterior linea de codigo, tendremos
como resultado un valor de tipo 'logical' igual a
'FALSE'. Aunque 5 sí es mayor que 4 (TRUE), lo que
acontece es que estamos probando la 
expresión logica ante un operador '!'; es decir, 
todo valor logico resultante es contradecido. 

"

variable
# R/ FALSE

"
Como es la variable la que asume el resultado final
de la expresión logica que le fue asignada, entonces
, asume también el tipo de dato de dicho resultado;
es decir, como el valor de 'variable' fue 'FALSE',
entonces, estamos ante un tipo de dato 'logical'.

Veamos.

"

typeof(variable)
# R/ logical


