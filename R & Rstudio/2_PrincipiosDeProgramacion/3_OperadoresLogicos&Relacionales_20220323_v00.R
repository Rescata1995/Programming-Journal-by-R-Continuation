
"
Introducci�n a Operadores Logicos & Relacionales. 
Antes de abordar el tema propiamente, expongamos un 
par de ejemplos...

"

# Ejemplo de declaraci�n logica 'verdadera':

4 < 5
4 != 5

# Ejemplos de declaraci�n logica 'falsa':

10 > 100
4 == 5


"
Operadores relacionaleS.

1. 
  Operaci�n: 'Mayor que', 
  S�mbolo/Operador: >, 
  Sintaxis: valor1 > valor2
  
2. 
  Operaci�n: 'Menor que', 
  S�mbolo/Operador: <, 
  Sintaxis: valor1 < valor2
  
3. 
  Operaci�n: 'Mayor o igual que', 
  S�mbolo/Operador: >=, 
  Sintaxis: valor1 >= valor2
  
4. 
  Operaci�n: 'Menor o igual que', 
  S�mbolo/Operador: <=, 
  Sintaxis: valor1 <= valor2
  
5. 
  Operaci�n: 'Igual que', 
  S�mbolo/Operador: ==, 
  Sintaxis: valor1 == valor2
  
6. 
  Operaci�n: 'Diferente que', 
  S�mbolo/Operador: !=, 
  Sintaxis: valor1 != valor2

"

"
Operadores logicos.

1. 
  Operaci�n: 'Not', 
  S�mbolo/Operador: !, 
  Sintaxis: !(valor1 == valor2)
  
  
  Expliquemos esto: Suponiendo que 'valor1' es 5 y 
  que 'valor2' es 5 tambi�n. Usted se imagina
  anticipadamente que la declaraci�n logica
  '5 == 5' da como resultado 'TRUE'; pues, en efecto,
  5 s� es igual a 5. 
  
  Sin embargo, la funci�n del operador logico '!' 
  viene a negar al resultado logico que ha sido 
  valido; m�s precisamente, su valor logico 
  resultante (sea 'TRUE' o 'FALSE').
  
  Si tenemos que 5 == 5 es 'TRUE', entonces,
  !(5 == 5) equivale a 'FALSE' y as�... 
  
2. 
  Operaci�n: 'Y', 
  S�mbolo/Operador: |, 
  Sintaxis: valor1 | valor2

3. 
  Operaci�n: 'O', 
  S�mbolo/Operador: &,
  Sintaxis: valor1 & valor2
"


"
El acto de hacer declaraciones logicas (especialmente
en comparaciones) para probar la validez logica 
de la declaraci�n en s�; ya sea con operadores 
logicos o relacionales o con ambos conjuntamente,
pueden dar como resultado solo dos valores posibles
y ambos tienen que ver con un mismo tipo de dato: 
'logical' (En otros lenguajes llamado: 'Boolean').

Los dos valores posibles de 'logical' son: 
'TRUE' or 'FALSE'.

Probemos, mediante un ejemplo, c�mo se puede 
ver un valor resultante de tipo 'logical', 
ya sea 'FALSE' o 'TRUE', como tambi�n confirmar
que estamos ante -precisamente- un tipo de dato 
'logical'.

El ejemplo ser� mediante la asignaci�n de una 
expresi�n logica a una variable. Tal que as�:

"

variable <- !(4 < 5)

"Si corremos la anterior linea de codigo, tendremos
como resultado un valor de tipo 'logical' igual a
'FALSE'. Aunque 5 s� es mayor que 4 (TRUE), lo que
acontece es que estamos probando la 
expresi�n logica ante un operador '!'; es decir, 
todo valor logico resultante es contradecido. 

"

variable
# R/ FALSE

"
Como es la variable la que asume el resultado final
de la expresi�n logica que le fue asignada, entonces
, asume tambi�n el tipo de dato de dicho resultado;
es decir, como el valor de 'variable' fue 'FALSE',
entonces, estamos ante un tipo de dato 'logical'.

Veamos.

"

typeof(variable)
# R/ logical


