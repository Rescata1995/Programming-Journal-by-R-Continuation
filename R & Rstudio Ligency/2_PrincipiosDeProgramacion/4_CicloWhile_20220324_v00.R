"
Ciclo/bucle 'While'. 

El Ciclo While (mientras) ejecuta un dominio 
de líneas de códigos mientras una condición lógica
se esté cumpliendo. 

Vamos al grano directamente con un ejemplo, al igual,
se explicará mediante este ejemplo la estructura propia
del ciclo.

"
contador <- 1
while (contador < 12){
  
  print(contador)
  contador <- contador + 1
}

"
Dentro de los paréntesis () va la expresión o condición
lógica que se pretende evaluar; es decir, aquello
que debe mantenerse válido para que el dominio {
las líneas de código que están dentro de las llaves} 
se siga ejecutando de forma continua. 

Es decir,la condición lógica debe mantenerse 'TRUE' 
para que me siga ejecutando, de forma iterativa, 
lo que esté dentro de las llaves {}. De lo contrario,
en el primer momento en que la condición lógica sea o
pase a ser 'FALSE', deja de correr nuestro dominio.

"

"
Ahora, supongamos que un bucle tiene una condición 
lógica que siempre será 'TRUE'... lo que acontecerá
es que, si corre el bucle, éste se ejecutará 
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
del bucle que actúa como contador.

Un Contador lo que hace es incrementar el valor
de su variable, en cierto número de unidades 
determinadas, con cada iteración que el ciclo 
registre; de tal manera que, sea el contador quién
tenga la facultad de poder detener la validez lógica
de una condición lógica evaluada dentro un bucle...
ya que el bucle es condicionado por el valor de la
variable 'Contador', 
la cual incrementa con cada iteracción.

El mecanismo es más o menos así: Si el contador
continua su incremento con cada iteracción, el 
contador podrá superar y romper el límite con el 
cual la condición lógica es 'TRUE'; es decir, 
el contador, a medida que incrementa su valor, 
va a llegar a un punto en el que su valor superará 
el valor estipulado para que la condición lógica sea
válida y, con lo cuál, la expresión lógica 
pasaría a ser 'FALSE'; entonces, como consecuencia, 
se detendría el bucle. 

En nuestro ejemplo nuestra variable 'Contador'
se llama 'Contador' también y ésta incrementa en una 
unidad (contador <- contador + 1) toda vez que el 
ciclo While itere; entonces, si tenemos que se
ejecutará nuestro dominio mientras la condición 
lógica (contador < 12) sea verdadera... 
Al momento que 'contador' sea mayor, o al menos 
igual, que 12; el Bucle dejará de ejecutarse.

Corra el bucle While y compruebe lo que se 
imprime por pantalla.

"

"
Una aclaración importante: Dentro de los ciclos 
'While', si desde su dominio pretende imprimir algo 
por pantalla, acá sí debemos hacer uso de la 
función 'print' para mostrar por salida cualquier
resultado (tal como lo vio en nuestro ejemplo).

"
