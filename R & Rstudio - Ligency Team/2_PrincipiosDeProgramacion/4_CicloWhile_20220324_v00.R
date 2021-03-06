"
Ciclo/bucle 'While'. 

El Ciclo While (mientras) ejecuta un dominio 
de l�neas de c�digos mientras una condici�n l�gica
se est� cumpliendo. 

Vamos al grano directamente con un ejemplo, al igual,
se explicar� mediante este ejemplo la estructura propia
del ciclo.

"
contador <- 1
while (contador < 12){
  
  print(contador)
  contador <- contador + 1
}

"
Dentro de los par�ntesis () va la expresi�n o condici�n
l�gica que se pretende evaluar; es decir, aquello
que debe mantenerse v�lido para que el dominio {
las l�neas de c�digo que est�n dentro de las llaves} 
se siga ejecutando de forma continua. 

Es decir,la condici�n l�gica debe mantenerse 'TRUE' 
para que me siga ejecutando, de forma iterativa, 
lo que est� dentro de las llaves {}. De lo contrario,
en el primer momento en que la condici�n l�gica sea o
pase a ser 'FALSE', deja de correr nuestro dominio.

"

"
Ahora, supongamos que un bucle tiene una condici�n 
l�gica que siempre ser� 'TRUE'... lo que acontecer�
es que, si corre el bucle, �ste se ejecutar� 
infinitamente; es decir, se crea lo que se conoce 
como: 'bucle infinito'. 

NOTA: para detener un bucle infinito simplemente 
tiene que hacer click en Escape.

"

"
Por el anterior caso, para evitar ciclos infinitos, 
es que idealmente a todo bucle o ciclo se le pasa
un 'Contador'. 

Un bucle controlado por 'Contador' es un bucle 
cuyas iteraciones se controlan por una variable, 
cuyo valor representa a un contador. 
El mecanismo utilizado es una variable de control 
del bucle que act�a como contador.

Un Contador lo que hace es incrementar el valor
de su variable, en cierto n�mero de unidades 
determinadas, con cada iteraci�n que el ciclo 
registre; de tal manera que, sea el contador qui�n
tenga la facultad de poder detener la validez l�gica
de una condici�n l�gica evaluada dentro un bucle...
ya que el bucle es condicionado por el valor de la
variable 'Contador', 
la cual incrementa con cada iteracci�n.

El mecanismo es m�s o menos as�: Si el contador
continua su incremento con cada iteracci�n, el 
contador podr� superar y romper el l�mite con el 
cual la condici�n l�gica es 'TRUE'; es decir, 
el contador, a medida que incrementa su valor, 
va a llegar a un punto en el que su valor superar� 
el valor estipulado para que la condici�n l�gica sea
v�lida y, con lo cu�l, la expresi�n l�gica 
pasar�a a ser 'FALSE'; entonces, como consecuencia, 
se detendr�a el bucle. 

En nuestro ejemplo nuestra variable 'Contador'
se llama 'Contador' tambi�n y �sta incrementa en una 
unidad (contador <- contador + 1) toda vez que el 
ciclo While itere; entonces, si tenemos que se
ejecutar� nuestro dominio mientras la condici�n 
l�gica (contador < 12) sea verdadera... 
Al momento que 'contador' sea mayor, o al menos 
igual, que 12; el Bucle dejar� de ejecutarse.

Corra el bucle While y compruebe lo que se 
imprime por pantalla.

"

"
Una aclaraci�n importante: Dentro de los ciclos 
'While', si desde su dominio pretende imprimir algo 
por pantalla, ac� s� debemos hacer uso de la 
funci�n 'print' para mostrar por salida cualquier
resultado (tal como lo vio en nuestro ejemplo).

"
