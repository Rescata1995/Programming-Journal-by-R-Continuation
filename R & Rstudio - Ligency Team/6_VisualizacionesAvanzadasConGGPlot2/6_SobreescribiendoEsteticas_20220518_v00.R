
"
Sobre-escribiendo est�ticas

El acto de 'sobre-escribir est�ticas' b�sicamente consiste 
en definir nuevos valores, sobre valores ya existentes, 
a sus par�metros de la capa de est�ticas.

Esta sobreescritura de est�ticas es posible mediante el 
proceso de Graficar con capas geom�tricas. Repasemos.

Veamos esto con m�s detalle.

"

Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia", 
                     "Presupuesto_Millones", "A�o")


#Retomemos la clase anterior: Graficar con capas (Geom�tricas)


Objeto1 <- ggplot(data=Datos, aes(x=Rating_Criticos, y=Rating_Audiencia,
                       color=Genero, size=Presupuesto_Millones)) 

Objeto1 + geom_line()

"
Si usted se percata, nuestros par�metros de la capa de 
est�ticas ya est�n definidos con valores, aunque todos 
hayan sido valores definidos mediante el 'Mapeo de datos';
es decir, asignando campos o columnas como valores de
esos par�metros. Con esto, recuerde, es necesario hacer
uso tambi�n de la funci�n 'aes()'; es decir, si define por 
medio de 'Mapeo de datos' a los par�metros de las est�ticas.

Como la funci�n 'ggplot', junto con sus par�metros de la 
capa de las est�ticas, se encuentra asignada a un Objeto 
(Objeto1), que es lo ideal para el proceso propio de la 
sobre-escritura de Est�ticas, ... para sobreescribir 
las est�ticas debemos llamar primeramente al Objeto en 
cuesti�n y pasar estos nuevos valores, las nuevas 
definiciones de los par�metros de las est�ticas, por medio 
de la definici�n de una capa geom�trica; por ejemplo,
por medio de la funci�n 'geom_line()' (se pasar�an los 
nuevos valores 'est�ticos' dentro de los par�ntesis de 
'geom_line', para este caso puntual). 

Nota: As� como pudo ser 'geom_line()', puede ser con 
cualquier funci�n del tipo 'geom_ ...' (Esto es un ejemplo).

Por ejemplo, supongamos que ya no queremos representar
en el eje de las 'x' el campo 'Rating_Criticos', sino,
el campo 'Presupuesto_Millones'; s�lo para probar, pues, 
no queremos modificar de forma permanente nuestra funci�n 
'ggplot'.

He aqu� donde podemos asistirnos de 'Objeto1 + geom_line()',
o bien, si desea tambi�n, pruebe: 'Objeto1 + geom_point()'

Veamos.

"

Objeto1 + geom_line(aes(x=Presupuesto_Millones))
Objeto1 + geom_point(aes(x=Presupuesto_Millones))


"
Hemos sobre-escrit� un par�metro de las est�ticas con exito.
Sin embargo, si bien s� se sobre-escribe el par�metro de la 
est�tica (ya 'x' no es 'Rating_Criticos', al menos no en el
anterior c�digo, sino 'Presupuesto_Millones'), note que la 
etiqueta o referencia textual sobre 'Rating_Criticos' 
se mantuvo; es decir, se sigue mostrando la leyenda 
'Rating_Criticos', incluso aunque realmente se est� evaluando
en el eje de las 'x' el campo 'Presupuesto_Millones'.

Esto no es recomendable, esto genera inconsistencias en la 
visualizaci�n y, finalmente, genera un tipo de dato sucio: 
Datos incorrectos. Es una mala pr�ctica hacer una sobre-
escritura de est�ticas para este caso puntual; pues, la 
leyenda no ser�a la equivalente con relaci�n a los datos que 
realmente est�n siendo representandos, al menos de forma
temporal, en el par�metro de la capa de las est�ticas en
cuesti�n; para este caso puntual, ese par�metro es 'x'.

"

"
En qu� condiciones vale la pena sobre-escribir est�ticas?

Caso 1:

Cuando no se genere una incongruencia visual entre lo reflejado 
por las leyendas, inicialmente, con la sobre-escritura propia 
de las est�ticas que corra en su visualizaci�n. Por ejemplo...

Si vale la pena sobre-escribir est�ticas, Marcas, cuando �stas 
inicialmente fueron definidas por medio de 'Mapeo de datos'; 
es decir, cuando el valor inicial asignado fue definido con un 
campo, no precisamente con un valor establecido a secas.

Digamos, si al par�metro 'color' se le asign� como valor un 
campo, no un color propiamente, estamos 'Mapeando'; o, en el 
otro caso, si al par�metro 'size' se le asign� como valor otro 
campo y no un n�mero propiamente, estamos mapeando tambi�n. 

Entonces, la sobre-escritura de las est�ticas se vuelve
conveniente cuando queramos sobre-escribir las est�ticas,
definidas al inicio por medio de 'Mapeo de datos', estableciendo 
medidas o valores concretos, a secas, sobre ellas; por ejemplo, 
en el caso de 'size', un tama�o concreto (un n�mero) o en el caso 
de 'color', un color en concreto. 

Caso 2:

Tambi�n funciona muy bien a la viceversa; es decir, cuando 
inicialmente sus 'est�ticas' fueron definidas con valores a secas,
concretos, y luego desea sobre-escribirlas por medio de un 'Mapeo
de datos': esto funciona igual de bien y no genera incongruencias
visuales en su gr�fico final, luego de realizar la sobre-escritura
de sus 'est�ticas'.

Caso 3: 

Por �ltimo, tambi�n funciona bien la sobre-escritura de 'est�ticas'
cuando inicialmente sus 'est�ticas' fueron definidas con valores a 
secas, concretos, y luego desea sobre-escribirlas estableciendo
otros valores a secas: esto funciona igual de bien y no genera 
incongruencias visuales en su gr�fico final, luego de realizar la 
sobre-escritura de sus 'est�ticas'.


Veamos un ejemplo pr�ctico del caso 1 con la funci�n 'geom_point()'.
Bien sabe usted que en 'Objeto1', inicialmente, el par�metro 'size' 
fue definido por medio de 'Mapeo de datos'; ahora nos interesa sobre-
escribir su valor estableciendo un valor a secas, un n�mero concreto
sobre dicho par�metro (caso 1 en pr�ctica).

"

Objeto1 + geom_point(size=1)

"
Si se percata, 'size' inicialmente ya fue definido con un valor 
de 'Presupuesto_Millones'; es decir, se va a distinguir 
visualmente a cada 'Presupuesto_Millones' por medio de tama�os. 
Sin embargo, si ahora 'establece' un valor a secas a 'size', 
todos los tama�os de sus figuras pasar�an a tener ese mismo valor 
de medida ... Pero no habr�a incongruencias visuales en su gr�fico 
ni en sus leyendas.

"
