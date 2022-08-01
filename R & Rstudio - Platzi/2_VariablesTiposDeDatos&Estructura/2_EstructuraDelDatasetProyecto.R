
View(mtcars)
str(mtcars)
summary(mtcars)

# Transformación de los datos de una columna (similar a 'Alter' en SQL)

# Diferencias entre las funciones 'mutate()' & 'transform()'

"
Para transformar/alterar propiamente los datos de una columna ya 
existente, no precisamente agregar una columna nueva en base a una que 
ya está, se debe hacer uso de la función 'transform()'. 

Cuando se pretende agregar una columna nueva, en base a una columna ya
existente, hablamos de la función 'mutate()'. 

Ahora, la función 'mutate()' no viene incorporada con los paquetes base 
de R (toca instalar 'tidyverse'); en cambio, la función 'transform()' sí
viene incorporada con los paquetes base de R.

Para cualquiera que sea el caso, es conveniente que en ambos almacene los
cambios que pretenda hacer creando una copia, 
dentro de una nueva variable, de su dataset original.

Por ejemplo, esta vez nos interesa hacer uso de la función 'transform()' 
en la columna 'wt' del dataset 'mtcars', pues, queremos ver a estas 
unidades de medida en términos de kilogramos y no de libras 
(como actualmente están).

La equivalencia entre libra y kilogramo es la siguiente: por cada unidad 
de libra, hay 0.453592 kilogramos. Actualmente, recuerde, nuestra columna 
'wt' está en términos de libras y nos interesa que se mida en kilogramos.

Efectuemos al anterior cambio requerido en una copia del dataset que esté
almacenada en una nueva variable. Vamos allá.

"

mtcars.new <- transform(mtcars, wt = wt*0.4538592)
View(mtcars.new)
