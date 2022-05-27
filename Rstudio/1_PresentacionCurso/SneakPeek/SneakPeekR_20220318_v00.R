mis_datos <- read.csv(file.choose())

install.packages("ggplot2")

ggplot(data=mis_datos[mis_datos$quilates<2.5,], 
       aes(x=quilates, y=precio, color=claridad)) +
  geom_point(alpha=0.1) +
  geom_smooth()

" 
Este es un ejercicio introductivo que pretende 
dimensionar el posible alcance del lenguaje de 
programación R, el cual se especializa en 
análisis estadístico y creación de gráficas.

Puntualmente nos interesaba saber si siempre,
para todos los casos, se guardaba una relación
positiva entre la claridad (pureza) 
de un diamente (tomando 'pureza' como variable A) 
y la cantidad de quilates (tomando 'quilates' 
como variable B) en el incremento del precio 
(variable c). 

Entonces, a partir de lo que nos 
contara la visualización arrojada (y por medio
de cómo ésta relacionaba las variables entre sí), 
nuestra tarea sería extraer conclusiones 
y conocimientos (insights) para evaluar, 
justamente, si siempre existia 
(para todos los casos) una relación positiva 
entre las dos variables A & B con respecto a C; 
pues, lo que se espera siempre es que 
'a mayor claridad, mayor precio' 
& 'a mayor quilates, mayor precio'. 

La última suposición siempre se cumple, es decir,
la pendiente nunca pasa a ser negativa a la hora
de comparar los precios (eje y) con relación
a los quilates (eje x); siempre es positiva.

Sin embargo, hay ocasiones donde parece ser
que el precio del segundo diamante más puro (IF) 
se iguala al precio del cuarto diamante más puro
(VVS2) no cumpliendo así, totalmente, con la
teoria de que 'a mayor claridad, mayor precio' 
(puntualmente cerca del punto medio entre 
0.5 a 1.0 quilates & cerca del punto medio 
entre 1.5 a 2.0 quilates).

Qué ha pasado aquí? Ha pasado que, 
muy probablemente, estemos dejando variables por
fuera que no están siendo contempladas dentro
de nuestro modelo economico; es decir, es 
probable que otra variable (u otras), 
puntualmente en los precios señalados, 
esté(n) haciendo que los diamantes 
con claridad VVS2 tengan un precio
muy similar a los diamantes con claridad (IF).

Estas variables que quedan por fuera se les 
conoce también como 'errores estadisticos'; y,
en la medida que, dentro de un estudio no
se considere la totalidad de las variables que
afecten sobre el estudio mismo, se es más 
propenso a realizar un análisis sesgado.

Adicionalmente hay otro factor, 
dentro del gráfico, que nos evidencia una falta
de precisión del modelo en cuestión. Apunte:

En la medida que las medias moviles
tengan una mayor sombra (bandas) a sus lados
disminuye la confianza, de la visualización,
para saber puntualmente qué es lo que está
pasando (esto podría ser el hecho fáctico de que
desconoce la influencia o el impacto de otras
variables sobre el modelo en cuestión).

Nota final: 

Es tan evidente el impacto de otras variables 
sobre los diamantes con claridad VVS2 que en
ocasiones, incluso, llegan a costar más que los
diamantes con claridad VVS1 (tercer diamante
más puro)... Son precisamente esas variables 
las que hacen falta en nuestro modelo. 
"
