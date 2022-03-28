"
Los operadores relacionales y lógicos, conjuntamente,
van a asumir un papel muy importante en nuestra 
estructura de control: Las Condicionales.

Antes de introducir propiamente las condicionales IF, 
¿Qué es una estructura de control?
  
Es aquel mecanismo, dentro de la vida del código 
de algún proyecto en curso, 
que nos permite controlar el flujo de lo que estamos 
programando justamente. 

Hasta ahora sólo hemos abordado, aunque sin 
mencionarlo, las Estructuras Secuenciales; es decir, 
aquellas líneas de código que se ejecutan una tras 
otra en forma de 'cascada' y sin limitación alguna 
hasta el fin propio del proyecto de programación.

Al igual hemos abordado las estructuras cíclicas,
es decir, 'for' & 'While'.

Sin embargo, lo que se espera es que llegue un 
momento en la vida de nuestro proyecto en el que 
tengamos que tomar ciertas decisiones o acciones 
dependiendo del resultado de evaluar una 
condición, es ahí entonces donde se introducen las 
llamadas 'estructuras de Control'; es decir, 
hablamos de las condicionales. 

Son dos las estructuras de control principalmente: 
'if' & 'else'. 

Con 'if' se ejecuta un código sobre su dominio 
en caso de que la condición pasada tenga validez 
o sea 'true'; de lo contrario, si la condición 
pasada no es valida, entonces se ejecutaría el 
código que esté sobre el dominio de 'else'. 


Veamos un ejemplo. Aprovecharemos también para 
dar introducción a dos tipos de funciones propias
de R: 'rnorm' & 'rm'.

'rnorm': La función 'rnorm' se utiliza para generar 
desviaciones aleatorias para la distribución normal 
dado que la media predeterminada es igual a 0 
y la desviación estándar (sd) es 1. Por lo pronto 
entienda que la función 'rnorm' lo que hará es 
generarme números aleatorios que, en la gran mayoria
de veces, estarán entre -2 y 2.

Tenga en cuenta que los últimos parámetros se pueden 
pasar opcionalmente como vector de elementos;
de esto no se preocupe por ahora, en el ejemplo
definiremos 'rnorm' con un único parámetro y
sería el parámetro qué define cuántos numeros 
aleatorios generar para 'rnorm'; es decir, el 
único parámetro pasado tendrá un valor de '1', 
lo cual significa que será generado un sólo número 
aleatorio. Veamos.

"
x <- rnorm(1)


"
La idea es imprimir por pantalla un mensaje diferente
si el valor de 'x' está entre -2 y -1, entre -0,99 y 
0,99 y entre 1 y 2; es decir, tener la posibilidad de
ejecutar 1 código de 3 posibles según cuál condición
sea válida de tres condiciones posibles pasadas 
también.

En este caso puntual, como a la estructura de 
control le tocará tomar una decisión entre más de 2 
posibles resultados, estaríamos hablando de 
Condicionales encadenadas, tal así: 

if - else if - else.


Ahora, como la variable 'x' se le estará asignando
un valor en su memoria de forma dinámica, toda vez
que se corra su línea de código en las condiciones
probadas, nos interesa limpiar de paso el valor 
asignado toda vez que la ejecución de nuestro código 
termine.

Entonces, para eso, vamos a incluir en nuestro código
la función 'rm' para que se ejecute toda vez que se 
prueben todas nuestras condiciones. Así:

"
rm(x)

"

rm(x) elimina el objeto x, rm(x,y) elimina ambos 
objetos x e y, y rm(list=ls()) elimina todos 
los objetos en memoria.

Procedamos con el ejercicio.

"

x <- rnorm(1)

if (x > -5 & x < -1){
  print("el valor de 'x' está entre -2 y -1")
} else if (x > -0.99 & x < 0.99){
    print("el valor de 'x' está entre -0.99 y 0.99")
  } else {
    print("el valor de 'x' está entre 1 y 5")
  }

"el valor de x es: "
x
rm(x)

"

Como ve, ahora la estructura de control tiene 
más opciones 'para elegir', y de hecho 
en la medida que le pase más condiciones a su 
estructura de control, entonces probablemente 
contará con una estructura condicional encadenada
más extensa.

" 
