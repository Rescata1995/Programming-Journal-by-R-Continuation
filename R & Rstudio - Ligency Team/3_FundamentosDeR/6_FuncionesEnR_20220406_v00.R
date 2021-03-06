
"
Recordemos todas las funciones dadas hasta ahora por
medio de '?'. Si delante de una funci�n se antepone
el signo '?', y corremos c�digo, R nos dar� una
ayuda o nos explicar� de forma detallada cu�l es la 
funci�n de la funci�n de su inter�s; dejando claro 
una descripci�n, un uso y posibles argumentos: 

"

?rnorm()

"
En la documentaci�n otorgada por R con relaci�n a 
la funci�n 'rnorm', notar� que 'rnorm' puede recibir
hasta 3 par�metros, �stos son: 'n' (muestra), 
'mean' (media) & 'sd' (desviaci�n estandar). 

Sin embargo, 'rnorm' puede trabajar con tan s�lo
incluso el par�metro de 'n', �c�mo se da cuenta?
Pues, porque es el �nico par�metro al que nunca se 
le asigna un valor dentro de la documentaci�n, por 
lo tanto le toca darselo obligatoriamente si desea 
hacer uso de ella posteriormente. 

En cambio, cuando a un par�metro de cualquier 
funci�n se le asigna un valor dentro de su 
documentaci�n, quiere decir entonces que si no 
define dicho par�metro dentro de la funci�n (al ser 
usada), el par�metro asumir� los valores que fueron 
definidos dentro de la documentaci�n. 

Dicho lo anterior, si analiza la documentaci�n de 
la 
funci�n 'rnorm', sabr� que 'rnorm' podr�a funcionar
solamente con un par�metro: 'n'.

Sin embargo, pongamos el siguiente ejemplo:
"

rnorm(5, 20, 3)

"
Lo anterior significa que de 5 muestras para nuestra
distribuci�n normal, todas oscilar�n alrededor de
20 con una desviaci�n est�ndar de 3.

En contexto: esto significa que, aproximadamente, 
un 68.2% de los valores (cada una de las 5  
muestras)
van a estar cayendo entre 17 (mean-sd) y 23 
(mean+sd)
.

Datos curiosos:

Si hacemos un simil con los conceptos de poblaci�n y
muestra con relaci�n al tema de 
'distribuci�n normal'
... tenemos que:

La desviaci�n est�ndar, si se fija, tiene un 
parecido
con el concepto de 'margen de error'. 

Ahora, la esperanza matem�tica, e(x), tiene un 
parecido con el nivel de confianza.

Y la media (mean) tiene un parecido con los 
resultados positivos de la muestra recolectada en 
s�.

"

"
Tambi�n puedes cambiar el orden de los par�metros 
si los especificas dentro de tu funci�n. Por 
ejemplo, declaremos la misma funci�n 'rnorm' pasada
cambiando el orden de sus par�metros.
Ser�a as�:

"
rnorm(sd=3, n=5, mean=20)


"
Ac� las otras funciones: 

"

c()
seq()
rep()

print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()
rm()

sqrt()
paste()

"
Siempre que no sepas qu� informaci�n o par�metros 
pasarle a tus funciones, puedes utilizar el s�mbolo 
'?'. Lo dicho, tendr� la documentaci�n oficial de R
para esa funci�n.

"

"
Pruebe las siguientes funciones con los siguientes
par�metros:

"
# Exercise 1
prueba1 <- seq(from= 10, to=20, length.out=15)
prueba1

# Exercise 2
vec1 <- c("a", "b", "c")
prueba2 <- seq(from=10, to=20, along.with=vec1)
prueba2

# Exercise 3
rep(5:7, each=10)

# Exercise 4
rep(5:7, times=10)

# Exercise 5
prueba5 <- sqrt(prueba1)
prueba5
