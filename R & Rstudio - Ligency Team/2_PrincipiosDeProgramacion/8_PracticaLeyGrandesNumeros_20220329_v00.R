"
Poner a prueba la Ley de los Grandes N�meros para N 
n�meros aleatorios con distribuci�n normal, donde la 
media = 0 y stdev = 1

Crear un script en R que cuente cu�ntas veces cae un
n�mero de estos entre -1 & 1 y divide por la cantidad
total de observaciones

Debes saber que E(X) = 68.2%

Revisa que la Media de (XN) -> E(X) conforme corras de
nuevo el script mientras incrementas N
"

rm(y)
y = 0

for(i in 1:100){
  x <- rnorm(1)
  print(x)
  
  if (x > -1 & x < 1){
    y = y + 1
  }
}

y

probabilidad <- y/i
probabilidad