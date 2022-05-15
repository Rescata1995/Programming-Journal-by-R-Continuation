
"
1. Sobre la 'Gramática de gráficos'

El concepto de 'Gramática de gráficos' pretende
distinguir todos los elementos básicos, necesarios, 
para crear una gráfica bidimensional con la que se 
pretenda analizar un conjunto de datos.

El propósito final de la 'Gramática de gráficos' 
se centra en cómo construir gráficos que cuenten
una historia y cuáles son los elementos principales
del gráfico.


1.1 Diferentes capas o elementos de un gráfico.


Los fundamentales:

A. Capa de Datos: Se refiere a los datos extraídos,
   provenientes de una fuente de datos original, que 
   han sido tomados en cuenta para crear nuestra 
   visualización; ya sea que la fuente haya sido 
   importada, por ejemplo un archivo de tipo 'CSV', 
   o previamente generada en un Script propio de R. 

B. Capa de las Estéticas: Se refiere a las distintas
   formas de visualización que tenemos, sobre las
   métricas o campos evaluados, sin hacer uso de 
   etiquetas. 
   
   Haciendo un símil con Tableau, son comparables
   las 'Estéticas' con las 'Marcas' en el entendido
   de que sean recursos usados para representar o
   distinguir, visualmente, nuestras métricas o 
   campos evaluados; por medio de colores, tamaños...
   A esto se le conoce 'Mapeo de datos'. Al igual,
   dentro de las Estéticas se pueden considerar 
   el accionar de los ejes x e y, pues, sirven 
   para representar de forma visual nuestros datos.

C. Capa de las Geometrías: Se refiere a las figuras
   usadas que nos ayudan a representar los datos de 
   nuestra visualización, generalmente figuras de 
   tipo geométrica: cuadrados, triangulos, etc; 
   o, bien, el tipo de gráfico como tal: gráfico de 
   barra, gráfico lineal, de área, circular, etc. 
   
   
Los adicionales u opcionales:

D. Capa de la Estadística: Uso de formulas o 
funciones para generar nuevas variables a partir de 
las variables ya existentes. Esta es la capa donde
tus datos pueden transformarse de tal manera que
puedan generar otros. Dicho lo anterior, es preciso 
decir que la Agregación de datos también hace parte 
de esta capa, y no siempre es explicita la función 
de agregación, u operación matemática, al ejecutarse:
se pueden agrupar, o agregar datos, sin reflejar 
explicitamente la operación matemática detras de eso.

E. Capa de las Facetas: Se refiere a las diferentes
representaciones que puede asumir un mismo gráfico
por ser dividido, en varias partes, por alguna 
categoría; es decir, por 'granular' sus datos.

Un ejemplo. Al categorizar o 'granular' los datos 
según un nível de ingreso, suponiendo que tenemos
ingresos 'altos', 'medios' & 'bajos' en nuestros
datos, creamos tres (3) facetas; entonces, por cada 
representación de los datos, según nível de ingreso,
sería el equivalente a una 'faceta'.

F. Capa de las Coordenadas: Si tus gráficos tienen
coordenadas en el eje de las x e y o coordenadas de
tipo 'polares' o el simple hecho de hacer 'zoom in' o
'zoom out'; todo eso es lo que concierne a la capa de
las Coordenadas: cómo querer visualizar tu gráfico 
luego de que ya esté completamente construido.

G. Capa del Tema: Tiene que ver con la parte visual
de tu visualización que no está propiamente 
contenida dentro de tu(s) gráfico(s); es decir, 
en realidad no hacen parte de tus datos representados
visualmente, sino, se trata de datos tipo 'meta'. 
Un buen ejemplo de estos 'metadatos' sería el título 
que le asignas a tu gráfico, esa etiqueta que está 
situada por fuera del gráfico mismo; o, bien, otro
ejemplo de estos 'metadatos' también podría ser el 
uso de leyendas.

"