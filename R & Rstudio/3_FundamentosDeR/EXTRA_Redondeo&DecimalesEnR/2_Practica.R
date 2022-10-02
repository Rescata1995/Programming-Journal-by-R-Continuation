
# Redondeo & Decimales en R

print(sqrt(2),10) 

"# No trabajar con más de 16 cifras. El 2do parámetro de 'print()', en este caso '10', imprime el
 # total de cifras o digitos que tiene todo el número en cuestión, no sus decimales solamente."

round(sqrt(2), 3)

"# El 2do parámetro de 'round()', en este caso '3', sí que indica el total de decimales que tendrá
 # el número en cuestion (y sólo toma en cuenta eso)."

floor(sqrt(2)) "Redondea al entero inmediatamente inferior"

ceiling(sqrt(2)) "Redondea al entero inmediatamente superior"

trunc(sqrt(2))

"# Esta función simplemente suprime los decimales del número pasado, no redondea hacia arriba ni a la baja, 
 # simplemente suprime todos los decimales posibles o fijados en un número o cálculo pasado. "


# Más Práctica...

sqrt(2)^2-2

round(sqrt(2), 4)^2

2^50
print(2^50, 15)
print(2^50, 2)
print(pi, 22)
#3.141592653589793115998
#3.141592653589793238462

round(1.25,1)
round(1.35,1)
round(sqrt(2),0)
round(sqrt(2))

round(digits = 5, sqrt(2))
round(5, sqrt(2))


floor(-3.45)
ceiling(-3.45)
trunc(-3.45)