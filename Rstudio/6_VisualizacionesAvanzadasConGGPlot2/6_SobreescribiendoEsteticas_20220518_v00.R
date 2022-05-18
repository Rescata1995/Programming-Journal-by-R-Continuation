
"
Sobre-escribiendo estéticas

El acto de 'sobre-escribir estéticas' básicamente consiste 
en definir nuevos valores, sobre valores ya existentes, 
a sus parámetros de la capa de estéticas.

Esta sobreescritura de estéticas es posible mediante el 
proceso de Graficar con capas geométricas. Repasemos.

Veamos esto con más detalle.

"

Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia", 
                     "Presupuesto_Millones", "Año")


#Retomemos la clase anterior: Graficar con capas (Geométricas)


Objeto1 <- ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones)) 

Objeto1 + geom_line()

"
Si usted se percata nuestros parámetros de la capa de 
estéticas ya están definidos con valores, aunque todos 
hayan sido valores definidos mediante el 'Mapeo de datos';
es decir, definiendo campos o columnas como valores de
esos parámetros. Con esto, recuerde, es necesario hacer
uso también de la función 'aes()' para todos esos 
parámetros.

Como la función 'ggplot', junto con sus parámetros de la 
capa de las estéticas, se encuentra asignada a un Objeto 
(Objeto1), que es lo ideal para el proceso propio de la 
sobre-escritura de Estéticas, ... para sobreescribir 
las estéticas debemos llamar primeramente al Objeto en 
cuestión y pasar estos nuevos valores, las nuevas 
definiciones de los parámetros de las estéticas, por medio 
de la definición de una capa geométrica; por ejemplo,
por medio de la función 'geom_line()' (dentro de sus 
paréntesis). 

Nota: Así como pudo ser 'geom_line()', puede ser cualquiera
del tipo 'geom_ ...' (Esto sólo es un ejemplo).

Por ejemplo, supongamos que ya no queremos representar
en el eje de las 'x' el campo 'Rating_Criticos', sino,
el campo 'Presupuesto_Millones'; sólo para probar, pues, 
no queremos modificar permanentemente a nuestra función 
'ggplot'.

He aquí donde podemos asistirnos de 'Objeto1 + geom_line()'

Veamos.

"

Objeto1 + geom_line(aes(x=Presupuesto_Millones))

"
Sin embargo, si bien sí se sobre-escribe el parámetro de la 
estética (ya 'x' no es 'Rating_Criticos', al menos no en el
anterior código; sino, 'Presupuesto_Millones'), note que la 
etiqueta o referencia textual sobre 'Rating_Criticos' 
nunca cambia; es decir, se sigue mostrando la leyenda 
'Rating_Criticos' aunque realmente se esté representando el 
eje de las 'x' en términos del campo 'Presupuesto_Millones'.

Esto no es para nada recomendable, esto genera inconsistencias
en la visualización y, finalmente, genera un tipo de dato sucio: 
Datos incorrectos. Es una mala práctica para este caso puntual;
pues, la leyenda no sería la equivalente con relación a los 
datos que realmente están siendo representandos, al menos 
temporalmente, por medio del parámetro de su interés de la capa 
de las estéticas; para este caso puntual, ese parámetro es 'x'.

"

"
En qué condiciones vale la pena sobre-escribir estéticas?

Cuando no haya una incongruencia entre lo reflejado inicialmente
por las leyendas con la sobre-escritura propia de las estéticas
en tu visualización. Por ejemplo...

Si vale la pena sobre-escribir estéticas, Marcas, cuando éstas 
inicialmente fueron definidas por medio de 'Mapeo de datos'; 
es decir, cuando el valor inicial asignado fue definido con un 
campo, no precisamente con un valor a secas establecido.

Digamos, si al parámetro 'color' se le asignó como valor 
un campo, no un color propiamente, estamos 'Mapeando'; o, 
en el otro caso, si al parámetro 'size' se le asignó como 
valor otro campo y no un número a secas propiamente, 
estamos mapeando también. 

Entonces, la sobre-escritura de las estéticas se vuelve
conveniente cuando queramos definirle medidas, ya sea de color 
o tamaño, a nuestros actuales Mapeos de datos.

Veamos un caso práctico ahora con 'geom_point()'.

"

Objeto1 + geom_point(size=1)

"
Si se percata, 'size' inicialmente ya fue definido con
un valor de 'Presupuesto_Millones'; es decir, se va
a distinguir visualmente a cada 'Presupuesto_Millones'
por medio de tamaños. Sin embargo, si ahora 'establece'
un valor a secas, todos los tamaños pasarían a regirse
bajo una misma medida... Pero no habría incongruencias
visuales en su campo.

"
