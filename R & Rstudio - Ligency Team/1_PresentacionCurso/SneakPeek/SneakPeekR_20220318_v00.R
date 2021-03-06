mis_datos <- read.csv(file.choose())

install.packages("ggplot2")

ggplot(data=mis_datos[mis_datos$quilates<2.5,], 
       aes(x=quilates, y=precio, color=claridad)) +
  geom_point(alpha=0.1) +
  geom_smooth()

" 
Este es un ejercicio introductivo que pretende 
dimensionar el posible alcance del lenguaje de 
programaci�n R, el cual se especializa en 
an�lisis estad�stico y creaci�n de gr�ficas.

Puntualmente nos interesaba saber si siempre,
para todos los casos, se guardaba una relaci�n
positiva entre la claridad (pureza) 
de un diamente (tomando 'pureza' como variable A) 
y la cantidad de quilates (tomando 'quilates' 
como variable B) en el incremento del precio 
(variable c). 

Entonces, a partir de lo que nos 
contara la visualizaci�n arrojada (y por medio
de c�mo �sta relacionaba las variables entre s�), 
nuestra tarea ser�a extraer conclusiones 
y conocimientos (insights) para evaluar, 
justamente, si siempre existia 
(para todos los casos) una relaci�n positiva 
entre las dos variables A & B con respecto a C; 
pues, lo que se espera siempre es que 
'a mayor claridad, mayor precio' 
& 'a mayor quilates, mayor precio'. 

La �ltima suposici�n siempre se cumple, es decir,
la pendiente nunca pasa a ser negativa a la hora
de comparar los precios (eje y) con relaci�n
a los quilates (eje x); siempre es positiva.

Sin embargo, hay ocasiones donde parece ser
que el precio del segundo diamante m�s puro (IF) 
se iguala al precio del cuarto diamante m�s puro
(VVS2) no cumpliendo as�, totalmente, con la
teoria de que 'a mayor claridad, mayor precio' 
(puntualmente cerca del punto medio entre 
0.5 a 1.0 quilates & cerca del punto medio 
entre 1.5 a 2.0 quilates).

Qu� ha pasado aqu�? Ha pasado que, 
muy probablemente, estemos dejando variables por
fuera que no est�n siendo contempladas dentro
de nuestro modelo economico; es decir, es 
probable que otra variable (u otras), 
puntualmente en los precios se�alados, 
est�(n) haciendo que los diamantes 
con claridad VVS2 tengan un precio
muy similar a los diamantes con claridad (IF).

Estas variables que quedan por fuera se les 
conoce tambi�n como 'errores estadisticos'; y,
en la medida que, dentro de un estudio no
se considere la totalidad de las variables que
afecten sobre el estudio mismo, se es m�s 
propenso a realizar un an�lisis sesgado.

Adicionalmente hay otro factor, 
dentro del gr�fico, que nos evidencia una falta
de precisi�n del modelo en cuesti�n. Apunte:

En la medida que las medias moviles
tengan una mayor sombra (bandas) a sus lados
disminuye la confianza, de la visualizaci�n,
para saber puntualmente qu� es lo que est�
pasando (esto podr�a ser el hecho f�ctico de que
desconoce la influencia o el impacto de otras
variables sobre el modelo en cuesti�n).

Nota final: 

Es tan evidente el impacto de otras variables 
sobre los diamantes con claridad VVS2 que en
ocasiones, incluso, llegan a costar m�s que los
diamantes con claridad VVS1 (tercer diamante
m�s puro)... Son precisamente esas variables 
las que hacen falta en nuestro modelo. 
"
