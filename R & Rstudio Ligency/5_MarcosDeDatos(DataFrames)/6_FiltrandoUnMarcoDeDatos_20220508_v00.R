
"
Sobre cómo filtrar Marcos de datos

Si bien recuerdas, el concepto de 'Filtros' no sólo se usa en R, 
también se usa en Hojas de cálculo y en SQL (Cláusula Where) y 
se valen exactamente de la misma estructura y dinámica lógica.
Los filtros se dedican especialmente a filtrar registros (filas).

Un filtro es usado cuando tú sólo estás interesado en ver datos
que cumplen un criterio en específico, ocultando el resto de los 
datos. La intención de esta clase es mostrarte cómo se filtran
datos desde R. 

"

"
Revisemos nuestros datos primeramente. Recuerde que estamos 
trabajando con el dataset que se asenta en la variable 'Data'

"

head(Data)


"
Ejercicios de Filtrado.

A. Queremos ver los registros con una 'Penetracion.Internet' menor 
al 2%. 

aclaración: Si se percata, se estarán filtrando registros; pues,
aún te interesa ver los datos de todas las columnas, es decir,
un registro entero pero si, y solo si, estos registros cumplen 
con la condición de que su 'Penetracion.Internet' sea menor a 2%.

"

"
1. Mecanismo de Filtrado: filtrado de filas mediante variable.

Para hacer un filtrado en R debemos recurrir a la forma de acceder 
a todos los elementos de una columna, para un Dataframe, por medio 
del símbolo $; esto es así porque el filtrado o el criterio que se
debe cumplir se evalúa sobre una columna o campo en específico 
(al menos en principio); entonces, luego, sólo se filtrarían los 
registros que cumplan con ese criterio o condición en cuestión.

Posteriormente, luego de llamar a la columna por medio de $, se 
pasa el criterio o la condición en concreto. 

Entonces, lo ideal es que asigne el filtrado a una variable. 
Para abordar nuestro primer ejercicio a nuestra variable la 
llamaremos 'filtro1'.

Veamos lo anterior con la resolución del 1er ejercicio.

"

filtro1 <- Data$Penetracion.Internet < 2

"
Si usted corre el anterior código, lo que se hará es probar la 
validez lógica del valor contenido en cada celda de 
'Penetracion.Internet' para cada registro, arrojando resultados 
de la evaluación lógica por medio de valores booleanos; es decir, 
mostrando por pantalla, para cada celda, cumpla o no, los valores 
'TRUE' o 'FALSE', respectivamente.

Entonces, si quisiera filtrar sólo los registros (filas) que 
cumplan la condición 'Data$Penetracion.Internet < 2' debe llamar su 
dataframe evaluado (Data) y, entre corchetes[], pasar la variable de 
su filtro (filtro1)... 

Importante: La variable de su filtro se pasa en la posición de las 
filas, no en la de columnas, la posición de columnas la deja en 
blanco. Observe:

"

Data[filtro1,]

"
Ahora se muestra por pantalla solamente los registros de 'Data' que 
cumplan con la condición o criterio 'Data$Penetracion.Internet < 2'.

"


"
B. Queremos ver los registros con una 'Tasa.Natalidad' mayor al
40%. 

Veamos.

"

filtro2 <- Data$Tasa.Natalidad > 40
Data[filtro2,]


"
Extra. Filtros con '==' (el registro debe tener una columna con
un valor definido igual a la condición pasada con '==')

C. Queremos ver los registros con un 'Grupo.Ingresos' que sea 
igual a un 'Ingreso alto'.

Veamos.

"
filtro3 <- Data$Grupo.Ingresos == 'Ingreso alto'
Data[filtro3,]


"

1.1 Mecanismo de Filtrado: filtrado de filas directo.

O usted también podría pasar el filtro directamente, si hacer uso
de una variable. Observe.

"

Data[Data$Tasa.Natalidad > 40,]

"
Insight: Por cada 1000 habitantes, los países arrojados va a tener 
al menos 40 nacimientos por año

"


"
2. Filtrado múltiple.

2.1 filtrado múltiple con & (todas las condiciones se deben cumplir).

Para hacer un filtrado múltiple, donde se tengan que cumplir todas 
las condiciones o criterios pasados, es sencillo: sólo tiene que 
agregar cuantos filtros desee por medio del símbolo & (sólo uno por 
filtro).

Veamos. Supongamos que queremos solamente aquellos países con una 
tasa de natalidad mayor a 40 (Data$Tasa.Natalidad > 40) y (&) 
una penetración de internet menor que 2 (Data$Penetracion.Internet 
< 2).

"

Data[Data$Tasa.Natalidad > 40 & Data$Penetracion.Internet < 2,]

"
Entonces, sólo se muestran aquellos registros del dataframe 'Data'
que cumpla con las condiciones pasadas; en este caso, sería:
'Data$Tasa.Natalidad > 40' & 'Data$Penetracion.Internet'.

"


"
2.2 filtrado múltiple con | (sólo es necesario que se cumpla una 
de todas las condiciones pasadas).

Para hacer un filtrado múltiple, donde sólo es necesario que se  
cumpla una condición o criterio, de todos los pasados, es sencillo: 
sólo tiene que agregar cuantos filtros desee por medio del símbolo 
| (sólo uno por filtro).

Veamos. Supongamos que queremos ver aquellos países con una 
tasa de natalidad mayor a 40 (Data$Tasa.Natalidad > 40) ó (|) con
una penetración de internet menor que 2 (Data$Penetracion.Internet 
< 2). 

"

Data[Data$Tasa.Natalidad > 40 | Data$Penetracion.Internet < 2,]

"
Entonces, se muestran aquellos registros del dataframe 'Data'
que cumpla con alguna de las condiciones pasadas; en este caso,
sería: 'Data$Tasa.Natalidad > 40' ó 'Data$Penetracion.Internet'.

"
