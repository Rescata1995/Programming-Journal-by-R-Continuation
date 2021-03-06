"
Los operadores relacionales y l�gicos, conjuntamente,
van a asumir un papel muy importante en nuestra 
estructura de control: Las Condicionales.

Antes de introducir propiamente las condicionales IF, 
�Qu� es una estructura de control?
  
Es aquel mecanismo, dentro de la vida del c�digo 
de alg�n proyecto en curso, 
que nos permite controlar el flujo de lo que estamos 
programando justamente. 

Hasta ahora s�lo hemos abordado, aunque sin 
mencionarlo, las Estructuras Secuenciales; es decir, 
aquellas l�neas de c�digo que se ejecutan una tras 
otra en forma de 'cascada' y sin limitaci�n alguna 
hasta el fin propio del proyecto de programaci�n.

Al igual hemos abordado las estructuras c�clicas,
es decir, 'for' & 'While'.

Sin embargo, lo que se espera es que llegue un 
momento en la vida de nuestro proyecto en el que 
tengamos que tomar ciertas decisiones o acciones 
dependiendo del resultado de evaluar una 
condici�n, es ah� entonces donde se introducen las 
llamadas 'estructuras de Control'; es decir, 
hablamos de las condicionales. 

Son dos las estructuras de control principalmente: 
'if' & 'else'. 

Con 'if' se ejecuta un c�digo sobre su dominio 
en caso de que la condici�n pasada tenga validez 
o sea 'true'; de lo contrario, si la condici�n 
pasada no es valida, entonces se ejecutar�a el 
c�digo que est� sobre el dominio de 'else'. 


Veamos un ejemplo. Aprovecharemos tambi�n para 
dar introducci�n a dos tipos de funciones propias
de R: 'rnorm' & 'rm'.

'rnorm': La funci�n 'rnorm' se utiliza para generar 
desviaciones aleatorias para la distribuci�n normal 
dado que la media predeterminada es igual a 0 
y la desviaci�n est�ndar (sd) es 1. Por lo pronto 
entienda que la funci�n 'rnorm' lo que har� es 
generarme n�meros aleatorios que, en la gran mayoria
de veces, estar�n entre -2 y 2.

Tenga en cuenta que los �ltimos par�metros se pueden 
pasar opcionalmente como vector de elementos;
de esto no se preocupe por ahora, en el ejemplo
definiremos 'rnorm' con un �nico par�metro y
ser�a el par�metro qu� define cu�ntos numeros 
aleatorios generar para 'rnorm'; es decir, el 
�nico par�metro pasado tendr� un valor de '1', 
lo cual significa que ser� generado un s�lo n�mero 
aleatorio. Veamos.

"
x <- rnorm(1)


"
La idea es imprimir por pantalla un mensaje diferente
si el valor de 'x' est� entre -2 y -1, entre -0,99 y 
0,99 y entre 1 y 2; es decir, tener la posibilidad de
ejecutar 1 c�digo de 3 posibles seg�n cu�l condici�n
sea v�lida de tres condiciones posibles pasadas 
tambi�n.

En este caso puntual, como a la estructura de 
control le tocar� tomar una decisi�n entre m�s de 2 
posibles resultados, estar�amos hablando de 
Condicionales encadenadas, tal as�: 

if - else if - else.


Ahora, como la variable 'x' se le estar� asignando
un valor en su memoria de forma din�mica, toda vez
que se corra su l�nea de c�digo en las condiciones
probadas, nos interesa limpiar de paso el valor 
asignado toda vez que la ejecuci�n de nuestro c�digo 
termine.

Entonces, para eso, vamos a incluir en nuestro c�digo
la funci�n 'rm' para que se ejecute toda vez que se 
prueben todas nuestras condiciones. As�:

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
  print("el valor de 'x' est� entre -2 y -1")
} else if (x > -0.99 & x < 0.99){
    print("el valor de 'x' est� entre -0.99 y 0.99")
  } else {
    print("el valor de 'x' est� entre 1 y 5")
  }

"el valor de x es: "
x
rm(x)

"

Como ve, ahora la estructura de control tiene 
m�s opciones 'para elegir', y de hecho 
en la medida que le pase m�s condiciones a su 
estructura de control, entonces probablemente 
contar� con una estructura condicional encadenada
m�s extensa.

" 
