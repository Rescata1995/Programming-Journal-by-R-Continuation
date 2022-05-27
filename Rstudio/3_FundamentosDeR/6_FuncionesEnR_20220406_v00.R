
"
Recordemos todas las funciones dadas hasta ahora por
medio de '?'. Si delante de una función se antepone
el signo '?', y corremos código, R nos dará una
ayuda o nos explicará de forma detallada cuál es la 
función de la función de su interés; dejando claro 
una descripción, un uso y posibles argumentos: 

"

?rnorm()

"
En la documentación otorgada por R con relación a 
la función 'rnorm', notará que 'rnorm' puede recibir
hasta 3 parámetros, éstos son: 'n' (muestra), 
'mean' (media) & 'sd' (desviación estandar). 

Sin embargo, 'rnorm' puede trabajar con tan sólo
incluso el parámetro de 'n', ¿cómo se da cuenta?
Pues, porque es el único parámetro al que nunca se 
le asigna un valor dentro de la documentación, por 
lo tanto le toca darselo obligatoriamente si desea 
hacer uso de ella posteriormente. 

En cambio, cuando a un parámetro de cualquier 
función se le asigna un valor dentro de su 
documentación, quiere decir entonces que si no 
define dicho parámetro dentro de la función (al ser 
usada), el parámetro asumirá los valores que fueron 
definidos dentro de la documentación. 

Dicho lo anterior, si analiza la documentación de 
la 
función 'rnorm', sabrá que 'rnorm' podría funcionar
solamente con un parámetro: 'n'.

Sin embargo, pongamos el siguiente ejemplo:
"

rnorm(5, 20, 3)

"
Lo anterior significa que de 5 muestras para nuestra
distribución normal, todas oscilarán alrededor de
20 con una desviación estándar de 3.

En contexto: esto significa que, aproximadamente, 
un 68.2% de los valores (cada una de las 5  
muestras)
van a estar cayendo entre 17 (mean-sd) y 23 
(mean+sd)
.

Datos curiosos:

Si hacemos un simil con los conceptos de población y
muestra con relación al tema de 
'distribución normal'
... tenemos que:

La desviación estándar, si se fija, tiene un 
parecido
con el concepto de 'margen de error'. 

Ahora, la esperanza matemática, e(x), tiene un 
parecido con el nivel de confianza.

Y la media (mean) tiene un parecido con los 
resultados positivos de la muestra recolectada en 
sí.

"

"
También puedes cambiar el orden de los parámetros 
si los especificas dentro de tu función. Por 
ejemplo, declaremos la misma función 'rnorm' pasada
cambiando el orden de sus parámetros.
Sería así:

"
rnorm(sd=3, n=5, mean=20)


"
Acá las otras funciones: 

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
Siempre que no sepas qué información o parámetros 
pasarle a tus funciones, puedes utilizar el símbolo 
'?'. Lo dicho, tendrá la documentación oficial de R
para esa función.

"

"
Pruebe las siguientes funciones con los siguientes
parámetros:

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
