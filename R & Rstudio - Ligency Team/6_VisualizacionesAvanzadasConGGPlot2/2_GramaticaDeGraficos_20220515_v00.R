
"
1. Sobre la 'Gram�tica de gr�ficos'

El concepto de 'Gram�tica de gr�ficos' pretende
distinguir todos los elementos b�sicos, necesarios, 
para crear una gr�fica bidimensional con la que se 
pretenda analizar un conjunto de datos.

El prop�sito final de la 'Gram�tica de gr�ficos' 
se centra en c�mo construir gr�ficos que cuenten
una historia y cu�les son los elementos principales
del gr�fico.


1.1 Diferentes capas o elementos de un gr�fico.


Los fundamentales:

A. Capa de Datos: Se refiere a los datos extra�dos,
   provenientes de una fuente de datos original, que 
   han sido tomados en cuenta para crear nuestra 
   visualizaci�n; ya sea que la fuente haya sido 
   importada, por ejemplo un archivo de tipo 'CSV', 
   o previamente generada en un Script propio de R. 

B. Capa de las Est�ticas: Se refiere a las distintas
   formas de visualizaci�n que tenemos, sobre las
   m�tricas o campos evaluados, sin hacer uso de 
   etiquetas. 
   
   Haciendo un s�mil con Tableau, son comparables
   las 'Est�ticas' con las 'Marcas' en el entendido
   de que sean recursos usados para representar o
   distinguir, visualmente, nuestras m�tricas o 
   campos evaluados; por medio de colores, tama�os...
   A esto se le conoce 'Mapeo de datos'. Al igual,
   dentro de las Est�ticas se pueden considerar 
   el accionar de los ejes x e y, pues, sirven 
   para representar de forma visual nuestros datos.

C. Capa de las Geometr�as: Se refiere a las figuras
   usadas que nos ayudan a representar los datos de 
   nuestra visualizaci�n, generalmente figuras de 
   tipo geom�trica: cuadrados, triangulos, etc; 
   o, bien, el tipo de gr�fico como tal: gr�fico de 
   barra, gr�fico lineal, de �rea, circular, etc. 
   
   
Los adicionales u opcionales:

D. Capa de la Estad�stica: Uso de formulas o 
funciones para generar nuevas variables a partir de 
las variables ya existentes (Campos calculados). 
Esta es la capa donde tus datos pueden transformarse 
de tal manera que puedan generar otros. Dicho eso, 
es preciso decir que la Agregaci�n de datos tambi�n 
hace parte de esta capa y no siempre es explicita la 
funci�n de agregaci�n, u operaci�n matem�tica, al 
ejecutarse: se pueden agrupar, o agregar datos, 
sin reflejar explicitamente la operaci�n matem�tica 
detras de eso.

E. Capa de las Facetas: Cuando se habla de la Capa de 
las Facetas se refiere a las diferentes representaciones 
visuales que puede asumir un gr�fico luego de ser 
dividido en varias partes seg�n el n�mero de categor�as 
que �ste contenga; es decir, a partir de la 
'granularidad de los datos' de un campo, se crean 
representaciones visuales por separado para cada uno 
de los 'levels' o categor�as del campo en cuesti�n.

Un ejemplo. Al categorizar o 'granular' los datos por 
n�vel de ingreso, suponiendo que tenemos un campo que
eval�a niveles de ingresos que pueden llegar a ser 
'altos', 'medios' & 'bajos', se crean tres (3) facetas; 
entonces, por cada n�vel de ingreso evaluado, se crea 
una 'faceta' o una representaci�n visual distinguida.

F. Capa de las Coordenadas: Si tus gr�ficos tienen
coordenadas en el eje de las x e y o coordenadas de
tipo 'polares' o el simple hecho de hacer 'zoom in' o
'zoom out'; todo eso es lo que concierne a la capa de
las Coordenadas: c�mo querer visualizar tu gr�fico 
luego de que ya est� completamente construido.

G. Capa del Tema: Tiene que ver con la parte visual
de la presentaci�n que no est� propiamente contenida 
dentro de su visualizaci�n de datos evaluados; 
es decir, en realidad no hacen parte de tus datos 
representados visualmente, sino, se trata de datos 
tipo 'meta'. Un buen ejemplo de estos 'metadatos' 
ser�a el t�tulo que le asignas a tu gr�fico, esa 
etiqueta que est� situada por fuera del gr�fico mismo; 
o, bien, otro ejemplo de estos 'metadatos' tambi�n 
podr�a ser el uso de leyendas y sus diversas 
configuraciones.

"