"
Retomamos y partamos de lo siguiente:

"

mi_1raFuncion <- function(matrix_sel, filas=1:10)
{
  subconjunto_2 <- matrix_sel[filas,,drop=F]
  matplot(t(subconjunto_2), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=jugadores[filas], pch=15:18, col=c(1:4,6), horiz = F)
}

"
Trataremos de resolver varios ejercicios a partir de la 
anterior función. Comencemos.
"

#Analizando: Sueldos

mi_1raFuncion(sueldos)

"
Se puede observar como KobeBryant se distancia notablemente
de los sueldos de los demás jugadores. Por el otro lado, 
se ve también como KevinDurant y DerrickRose repuntaron
sus sueldos de un momento a otro... Sería interesante 
averiguar las causas de estos sucesos.

"

mi_1raFuncion(sueldos/juegos)

"
Ya aquí estaríamos evaluando, visualmente, el cálculo de una
métrica; puntualmente, se mide el sueldo promedio de cada 
jugador por partido en cada una de las temporadas. 

Es posible que resulte ser mejor analizar métricas debido a que
son más dicientes, tienden a generar información por medio del
ejercicio de la comparación entre dos o más de dos variables.

Con las metricas muchas veces se pretende evaluar rendimientos

Por ejemplo, cuando se hace comparaciones entre variables 
(mejor aún si las comparaciones son visualizadas) se hace 
mucho más facíl detectar posibles valores atípicos o,
en general, dirty data. Los gráficos ocupan un rol muy 
importante aquí debido a que nos ayudan a entender, en 
cuestión de minutos, un panorama general de la situación 
sin perderse en el intento o aburrirse con tantos datos.

En efecto, tenemos un valor atípico que se ve con mucha 
claridad porque nuestros datos ya están visualizados: 

Si los valores atípicos se ponen en contexto podríamos saber 
la razón de ser de ellos (de los 'outliers'). Veamos.

"

sueldos/juegos



