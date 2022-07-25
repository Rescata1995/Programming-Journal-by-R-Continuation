
"
Introducción a la función 'names' 

A. Verificación de nombres con 'names' 

La función 'names' nos permite saber/verificar que 
nombres tienen los elementos de nuestros vectores 
(de ser el caso). 


A.1 Verificación de 'names' en vectores

Si hablamos de vectores unidimensionales, si 
le pasamos a la función 'names' el vector en 
cuestión, podemos saber entonces los nombres dados 
(si es el caso) a cada elemento o posición del 
vector en cuestión. 

Por ejemplo, 

names(name_vector)

"

"

B. Asignación de nombres con 'names' 

Ahora, algo interesante. Con la función 'names' no 
sólo se verifica si nuestros vectores identifican 
con nombres a sus elementos; sino que, también, se 
puede asignar dichos nombres a los elementos en 
cuestión; es decir, la función 'names' también está 
facultada para asignar nombres a los elementos de 
un vector.


B.1 Asignación de 'names' en vectores

Para asignar nombres a cada uno de los elementos de
un vector, se debe crear un vector con la función
'names' de la misma longitud que el vector al que 
le desea asignar nombres en sus elementos... 

De tal manera que, los elementos que incorpore 
en su vector creado con la función 'names'
serían los nombres de cada uno de los elementos 
de su vector inicial, al que le deseas asignar 
nombres a sus elementos.

Este último vector, al que le deseas asignar 
nombres, se debe pasar como parámetro dentro la 
función 'names'. 

Veamos un ejemplo para dejarlo claro.

"
vector1 <- 1:3
vector1

"
Hemos creado el vector 'vector1', ahora vamos a 
asignarle nombres a cada uno de sus 3 elementos.
Tal que así:

"

names(vector1) <- c("nombre1", "nombre2", "nombre3")

"
Le hemos asignado nombres a cada uno de los 3 
elementos del 'vector1', los nombres provienen de 
los elementos del vector que hicimos con la función 
'names', estos nombres son: 'nombre1', 'nombre2' &
'nombre3'.

ejecute el vector 'vector1' para que compruebe.

"

vector1

"
Algo importante, con estos nombres también se puede
acceder a cada uno de los elementos de su vector.
Por ejemplo, vamos a acceder al elemento número
2 del vector 'vector1' por medio del nombre del 
elemento en cuestión. Tal que así, ejecutemos:

"

vector1["nombre2"]


"

C. Limpieza de nombres con 'names' 

C.1 Limpieza de 'names' en vectores.

Simplemente tienes que llamar dentro de la función 
'names' al vector al que le pasaste nombres, nombres
a sus elementos, y definirlo con un valor 'NULL'.

Por ejemplo, vamos a limpiar los nombres asignados
a los elementos del vector 'vector1', tal que así:

"

names(vector1) <- NULL

"
Compruebe que sus elementos ya no tienen nombres.
"

vector1

"
-----------------------------------------------
"

#Practice rbind() & cbind()

"
rbind()
"

v1 <- c("a", "b", "c")
v2 <- c("x", "y", "z")
v3 <- c(1,2,3)

matriz1 <- rbind(v1,v2,v3)

"
Los tres vectores que hemos creado en 'v1', 'v2', 
& 'v3' han sido usados para conformar las 3 filas
de la matriz 'matriz1'. Pruebelo.

"

matriz1


"
cbind()
"

matriz2 <- cbind(v1,v2,v3)

"
Los tres vectores que hemos creado en 'v1', 'v2', 
& 'v3' han sido usados para conformar, ahora, las 
3 columnas de la matriz 'matriz2'. Pruebelo.

"

matriz2

#Practice rownames & colnames

vertical <- c("fila1", "fila2", "fila3")
horizontal <- c("columna1", "columna2", "columna3")

rownames(matriz1) <- vertical
colnames(matriz1) <- horizontal

rownames(matriz2) <- vertical
colnames(matriz2) <- horizontal

"
Evidencie como le hemos asignado nombres a las 
filas y columnas, por medio de los vectores 
'vertical' y 'horizontal', de las matrices 'matriz1'
& 'matriz2'. 

"

matriz1
matriz2

"


Ejercicios 

1. Cambie el valor de 'b' por 'R' en su matriz1.
2. Cambie el valor de 'b' por 'R' en su matriz2

"
matriz1["fila1", "columna2"] <- "R"
matriz1

matriz2["fila2", "columna1"] <- "R"
matriz2

"
Por último, elimine los nombres de sus filas y 
columnas de la matriz 'matriz1' y haga lo propio 
para la matriz 'matriz2'. Tal que así:

"

rownames(matriz1) <- NULL
colnames(matriz1) <- NULL

rownames(matriz2) <- NULL
colnames(matriz2) <- NULL

"
Pruebe.
"

matriz1
matriz2
