
"
contador <- 1
while (contador < 12){
  
  print(contador)
  contador <- contador + 1
}

"

"
Introducci�n al bucle 'for'. 

Un bucle 'for' tiene la misma finalidad de un bucle 
'while'; sin embargo, estructuralmente, tienen sus 
diferencias. Incluso hasta la estructura misma del 
bucle 'for' en R varia en comparaci�n con los dem�s 
lenguajes de programaci�n. Trataremos de explicar
esto por medio de un ejercicio para mayor comprensi�n.

Si quisieramos ejecutar el mismo c�digo de While, que
se ve en la parte superior de neustro Script, en un
bucle For... Ser�a m�s o menos as�:

"

for (i in 1:11){
  print(i)
}

"
Lo que acontece es que nuestro contador (i) asume y
define directamente el l�mite de nuestro bucle 
(el n�mero de iteracciones inicialmente acordadas) 
como tambi�n el valor inicial de s� mismo, y lo hace 
no precisamente evaluando la validez l�gica de una 
expresi�n, no; sino, pasandole directamente
un l�mite inferior y un l�mite superior al bucle;
es decir, un l�mite inferior ser�a el punto de 
partida inicial del bucle y, a partir de �ste, 
recorrer�a toda su trayectoria trazada, una 
trayectoria num�rica, hasta un l�mite superior 
tambi�n definido. 

Entonces cada n�mero, desde el l�mite inferior hasta 
el l�mite superior, representar�a una iteracci�n. 

Si tenemos que nuestro l�mite inferior es 1 y el
l�mite superior es 11; tenemos que, habr� un 
recorrido del 1 hasta el 11 donde cada n�mero 
representar�a una iteracci�n dentro del ciclo; 
entonces, el c�digo se ejecutar� iterativamente
11 veces. Adicionalmente, esto tambi�n significa que
el contador 'i' incrementar�a su valor en una unidad
por cada iteracci�n; donde 'i', inicialmente, 
ocupar�a un valor de 1 y terminar�a con valor de 11. 

Toda esta explicaci�n, por supuesto, tiene una causa
t�cnica que explica detr�s de bambalinas lo que 
realmente sucede; por lo pronto, mi inter�s es que 
entienda c�mo funciona la l�gica de la sintaxis 
en la pr�ctica.

"

"
Ahora, si no quisieramos imprimir precisamente el 
incremento de nuestro contador por cada iteracci�n; 
sino, otra cosa, tambi�n puede hacerlo. En este
�ltimo caso el contador simplemente servir�a para 
determinar cu�ntas iteracciones correr para ejecutar
el c�digo que est� dentro del dominio de 'for'.

Tal que as�: imprimamos 11 veces la palabra 'Hola R'.

"

for(i in 1:11){
  print("Hola R")
}

# test out this!

for(i in 5:10){
  print(i)
}



