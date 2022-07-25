
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
Si usted se percata, nuestros parámetros de la capa de 
estéticas ya están definidos con valores, aunque todos 
hayan sido valores definidos mediante el 'Mapeo de datos';
es decir, asignando campos o columnas como valores de
esos parámetros. Con esto, recuerde, es necesario hacer
uso también de la función 'aes()'; es decir, si define por 
medio de 'Mapeo de datos' a los parámetros de las estéticas.

Como la función 'ggplot', junto con sus parámetros de la 
capa de las estéticas, se encuentra asignada a un Objeto 
(Objeto1), que es lo ideal para el proceso propio de la 
sobre-escritura de Estéticas, ... para sobreescribir 
las estéticas debemos llamar primeramente al Objeto en 
cuestión y pasar estos nuevos valores, las nuevas 
definiciones de los parámetros de las estéticas, por medio 
de la definición de una capa geométrica; por ejemplo,
por medio de la función 'geom_line()' (se pasarían los 
nuevos valores 'estéticos' dentro de los paréntesis de 
'geom_line', para este caso puntual). 

Nota: Así como pudo ser 'geom_line()', puede ser con 
cualquier función del tipo 'geom_ ...' (Esto es un ejemplo).

Por ejemplo, supongamos que ya no queremos representar
en el eje de las 'x' el campo 'Rating_Criticos', sino,
el campo 'Presupuesto_Millones'; sólo para probar, pues, 
no queremos modificar de forma permanente nuestra función 
'ggplot'.

He aquí donde podemos asistirnos de 'Objeto1 + geom_line()',
o bien, si desea también, pruebe: 'Objeto1 + geom_point()'

Veamos.

"

Objeto1 + geom_line(aes(x=Presupuesto_Millones))
Objeto1 + geom_point(aes(x=Presupuesto_Millones))


"
Hemos sobre-escritó un parámetro de las estéticas con exito.
Sin embargo, si bien sí se sobre-escribe el parámetro de la 
estética (ya 'x' no es 'Rating_Criticos', al menos no en el
anterior código, sino 'Presupuesto_Millones'), note que la 
etiqueta o referencia textual sobre 'Rating_Criticos' 
se mantuvo; es decir, se sigue mostrando la leyenda 
'Rating_Criticos', incluso aunque realmente se esté evaluando
en el eje de las 'x' el campo 'Presupuesto_Millones'.

Esto no es recomendable, esto genera inconsistencias en la 
visualización y, finalmente, genera un tipo de dato sucio: 
Datos incorrectos. Es una mala práctica hacer una sobre-
escritura de estéticas para este caso puntual; pues, la 
leyenda no sería la equivalente con relación a los datos que 
realmente están siendo representandos, al menos de forma
temporal, en el parámetro de la capa de las estéticas en
cuestión; para este caso puntual, ese parámetro es 'x'.

"

"
En qué condiciones vale la pena sobre-escribir estéticas?

Caso 1:

Cuando no se genere una incongruencia visual entre lo reflejado 
por las leyendas, inicialmente, con la sobre-escritura propia 
de las estéticas que corra en su visualización. Por ejemplo...

Si vale la pena sobre-escribir estéticas, Marcas, cuando éstas 
inicialmente fueron definidas por medio de 'Mapeo de datos'; 
es decir, cuando el valor inicial asignado fue definido con un 
campo, no precisamente con un valor establecido a secas.

Digamos, si al parámetro 'color' se le asignó como valor un 
campo, no un color propiamente, estamos 'Mapeando'; o, en el 
otro caso, si al parámetro 'size' se le asignó como valor otro 
campo y no un número propiamente, estamos mapeando también. 

Entonces, la sobre-escritura de las estéticas se vuelve
conveniente cuando queramos sobre-escribir las estéticas,
definidas al inicio por medio de 'Mapeo de datos', estableciendo 
medidas o valores concretos, a secas, sobre ellas; por ejemplo, 
en el caso de 'size', un tamaño concreto (un número) o en el caso 
de 'color', un color en concreto. 

Caso 2:

También funciona muy bien a la viceversa; es decir, cuando 
inicialmente sus 'estéticas' fueron definidas con valores a secas,
concretos, y luego desea sobre-escribirlas por medio de un 'Mapeo
de datos': esto funciona igual de bien y no genera incongruencias
visuales en su gráfico final, luego de realizar la sobre-escritura
de sus 'estéticas'.

Caso 3: 

Por último, también funciona bien la sobre-escritura de 'estéticas'
cuando inicialmente sus 'estéticas' fueron definidas con valores a 
secas, concretos, y luego desea sobre-escribirlas estableciendo
otros valores a secas: esto funciona igual de bien y no genera 
incongruencias visuales en su gráfico final, luego de realizar la 
sobre-escritura de sus 'estéticas'.


Veamos un ejemplo práctico del caso 1 con la función 'geom_point()'.
Bien sabe usted que en 'Objeto1', inicialmente, el parámetro 'size' 
fue definido por medio de 'Mapeo de datos'; ahora nos interesa sobre-
escribir su valor estableciendo un valor a secas, un número concreto
sobre dicho parámetro (caso 1 en práctica).

"

Objeto1 + geom_point(size=1)

"
Si se percata, 'size' inicialmente ya fue definido con un valor 
de 'Presupuesto_Millones'; es decir, se va a distinguir 
visualmente a cada 'Presupuesto_Millones' por medio de tamaños. 
Sin embargo, si ahora 'establece' un valor a secas a 'size', 
todos los tamaños de sus figuras pasarían a tener ese mismo valor 
de medida ... Pero no habría incongruencias visuales en su gráfico 
ni en sus leyendas.

"
