
"
contador <- 1
while (contador < 12){
  
  print(contador)
  contador <- contador + 1
}

"

"
Introducción al bucle 'for'. 

Un bucle 'for' tiene la misma finalidad de un bucle 
'while'; sin embargo, estructuralmente, tienen sus 
diferencias. Incluso hasta la estructura misma del 
bucle 'for' en R varia en comparación con los demás 
lenguajes de programación. Trataremos de explicar
esto por medio de un ejercicio para mayor comprensión.

Si quisieramos ejecutar el mismo código de While, que
se ve en la parte superior de neustro Script, en un
bucle For... Sería más o menos así:

"

for (i in 1:11){
  print(i)
}

"
Lo que acontece es que nuestro contador (i) asume y
define directamente el límite de nuestro bucle 
(el número de iteracciones inicialmente acordadas) 
como también el valor inicial de sí mismo, y lo hace 
no precisamente evaluando la validez lógica de una 
expresión, no; sino, pasandole directamente
un límite inferior y un límite superior al bucle;
es decir, un límite inferior sería el punto de 
partida inicial del bucle y, a partir de éste, 
recorrería toda su trayectoria trazada, una 
trayectoria numérica, hasta un límite superior 
también definido. 

Entonces cada número, desde el límite inferior hasta 
el límite superior, representaría una iteracción. 

Si tenemos que nuestro límite inferior es 1 y el
límite superior es 11; tenemos que, habrá un 
recorrido del 1 hasta el 11 donde cada número 
representaría una iteracción dentro del ciclo; 
entonces, el código se ejecutará iterativamente
11 veces. Adicionalmente, esto también significa que
el contador 'i' incrementaría su valor en una unidad
por cada iteracción; donde 'i', inicialmente, 
ocuparía un valor de 1 y terminaría con valor de 11. 

Toda esta explicación, por supuesto, tiene una causa
técnica que explica detrás de bambalinas lo que 
realmente sucede; por lo pronto, mi interés es que 
entienda cómo funciona la lógica de la sintaxis 
en la práctica.

"

"
Ahora, si no quisieramos imprimir precisamente el 
incremento de nuestro contador por cada iteracción; 
sino, otra cosa, también puede hacerlo. En este
último caso el contador simplemente serviría para 
determinar cuántas iteracciones correr para ejecutar
el código que está dentro del dominio de 'for'.

Tal que así: imprimamos 11 veces la palabra 'Hola R'.

"

for(i in 1:11){
  print("Hola R")
}

# test out this!

for(i in 5:10){
  print(i)
}



