"
La importancia de hacer operaciones con vectores en 
R, en lugar de hacer las operaciones sin ellos.

"

"
1ra parte: Ciclos al estilo convencional vs 
           Ciclos al estilo propio de R.
"

x <- rnorm(5)

"
Estamos definiendo un vector de 5 valores numéricos
aleatorios. Ahora, nuestro interés es imprimirlos 
uno a uno, de forma independiente... lo lograremos 
por medio de un bucle 'for', tal que así: 
"

for (i in 1:5){
  print(x[i])
}

"
Recuerda: 'i' no solo asume cada valor, por cada
iteracción, desde el número 1 hasta el número 5; 
sino que, esto también significa que, se ejecutará 
5 veces todo el código que implemente dentro del 
dominio de su bucle 'for'.
"

"
También podría escribir su código de la sgte forma: 

"
for (i in x){
  print(i)
}

"
Ahora 'i' está asumiendo, por cada iteracción, los
valores del vector 'x' (uno a uno por iteracción).
Entonces, en total sólo serán 5 iteracciones debido
a que sólo son 5 los valores contenidos para el 
vector de 'x'... los cuales los estamos imprimiendo,
uno a uno, con la función 'print'.

"

"
La primera resolución de ciclo es más de tipo 
o método 'convencional'. En cambio, la segunda 
resolución de ciclo es más de tipo o método 
propiamente de R. En ambos se obtiene un mismo 
resultado, pero éstos se obtienen de una manera 
distinta.

-------------------------------------------------
"

"
2da parte: Operaciones al estilo convencional vs
           Operaciones con vectores (tipo R).

"

N <- 100
a <- rnorm(N)
b <- rnorm(N)

"
Multiplicación de arreglos al estilo convencional:

"
d <- rep(NA, N)

"
Estamos creando con la variable 'd' un vector de 
100 posiciones con valor inicial 'nulo' en los que, 
posteriormente, almacenaremos los 100 valores de 
multiplicar cada posición del vector 'a' 
con cada posición del vector 'b'; estos resultados 
se guardarán para cada posición del vector 'd'.
"

for(i in 1:N){
  d[i] <- a[i]*b[i]
  print(d[i])
}


"
Multiplicación de vectores al estilo R:

"

c <- a * b
c


"
Como R es un lenguaje especializado en vectores,
llamados 'arreglos' en otros lenguajes, nos facilita
todo: el código en sí como la eficiencia en su 
ejecución!

"
