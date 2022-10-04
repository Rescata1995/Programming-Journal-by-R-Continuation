### Introduccion a Funciones & Variables en R

### Práctica, creando nuestra primera función

calculo_1 = function(x){
  x^3 - (3^x) * sin(x)
}

calculo_1(1)
calculo_1(2)
calculo_1(3)
calculo_1(4)



suma_1 = function(y){
  y + 25
}

suma_1(1)
suma_1(-2)
suma_1(3)
suma_1(-4)



producto_1 = function(y, x){
  y * x
}

producto_1(-1, 2)
producto_1(2, 3)
producto_1(-3, 4)
producto_1(4, 5)



# con tres parámetros 

total = function(x, y, z){
  exp(x^2 + y^2) * sin(z)
}

total(1, 2, 3)




