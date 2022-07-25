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
jugador por partido y para cada una de las temporadas. 

Es posible que resulte ser mejor analizar métricas debido a que
son más dicientes, tienden a generar información por medio del
ejercicio de la comparación entre dos o más de dos variables.

Sin embargo, incluso aunque no tuvieramos métricas, hacer una 
comparación directa de los sueldos que hay entre todos los 
jugadores ya genera información.

Con las metricas muchas veces se pretende evaluar rendimientos

Por ejemplo, cuando se hace comparaciones entre variables, 
mejor aún si las comparaciones son visualizadas, se hace 
mucho más facíl detectar posibles valores atípicos o,
también, dirty data. Los gráficos ocupan un rol muy 
importante aquí debido a que nos ayudan a digerir, en 
cuestión de segundos, el panorama general de los datos
que estamos evaluando sin perderse en el intento.

En efecto, tenemos un valor atípico que se ve con mucha 
claridad porque nuestros datos ya están visualizados: 

En la penúltima temporada de KobeBryant se registró un sueldo
promedio por juego bastante alejado de la media de los demás
jugadores, ¿por qué? Eso es lo que hay que responder.

Si los valores atípicos y, en general, los datos se ponen en 
contexto podríamos saber la razón de ser de ellos.

Particularmente la razón de ser de nuestro 'outlier' fue que 
esa temporada KobeBryant se lesionó y se perdió de muchos 
partidos; sin embargo, mientras un jugador tenga contrato 
firmado, juegue o no juegue por lesión, siempre devengará un 
salario mensual por estar firmado por el equipo, si y solo si 
el contrato continua vigente.

Este es un buen ejemplo de cómo se pone en contexto los datos
que se tienen.

Ahora, el hecho de que nuestro estudio se vea afectado por 
lesiones genera un sesgo. Explico.

Como las lesiones no están siendo medibles o, al menos, el 
componente de la lesión no está siendo medido como variable
independiente dentro de nuestro análisis, queda como variable 
por fuera del estudio sin dejar de afectar al estudio mismo.

Entonces, si una variable que está afectando al estudio no 
está siendo evaluada por el estudio mismo; por ejemplo, no hay
una tabla de datos dedicada a las lesiones, estaríamos delante
de un sesgo. 

En este caso puntual, siempre habrá sesgo debido a que los 
jugadores constantemente se están lesionando y no hay tablas
de datos que evalúen ese efecto, negativo o positivo, sobre la
comparación de los datos de los sueldos con los datos de los 
juegos y sobre el estudio en general.

Para ser sinceros, no es ideal hacer un análisis con sesgos.
Para este caso puntual, tenemos que considerar si intentamos 
buscar la manera de incorporar al estudio la variable 
'lesiones' o, definitivamente, omitirla. Si optamos por la 
última opción, que es lo más fácil, es decir, quitar las 
lesiones de la ecuación para que no afecten nuestro análisis...

Como sabe de antemano que las lesiones afectan a todas las 
estadísticas del juego, pues, si estás lesionado no puedes
jugar... 

Lo que habría que hacer es evaluar las métricas de los 
jugadores (comparar variables) considerando la cantidad de 
juegos que tuvo cada uno, por separado, y así se evitan sesgos.

Tenemos que 'normalizar' nuestras estadísticas o métricas a un
nivel por juego. Cuando se intentaba recrear métricas con los
sueldos de los jugadores se ignoraba el hecho de que, juegue 
o no, el sueldo del jugador no se vería afectado; con lo cual, 
no se normalizaba nuestro análisis. En cambio, se sabe que 
si un jugador no juega no podrá hacer tiros o, yendo más allá, 
encestarlos; entonces, hacer métricas con los tiros intentados
o los tiros anotados sí es una buena opción de análisis. 

Por lo anterior, así, se intentarían evitar valores atípicos 
generados por el sesgo que causan las lesiones.

Por ejemplo, podríamos graficar los tiros anotados por juego;
así tendríamos una media de tiros encestados, por jugador, 
según la cantidad propia de juegos que tuvo cada uno de ellos
por separado. Veamos. 


"
mi_1raFuncion(tiros_anotados/juegos)

"
Observe otros ejemplos normalizados...
"
#Analizando: métricas dentro del juego Normalizadas


mi_1raFuncion(tiros_anotados/tiros_intentados)
mi_1raFuncion(tiros_intentados/juegos)
mi_1raFuncion(puntos/juegos)

#Observación interesante

mi_1raFuncion(minutos_jugados/juegos)
mi_1raFuncion(juegos)

#El tiempo es valioso

mi_1raFuncion(tiros_anotados/minutos_jugados)

#Estilo del jugador

mi_1raFuncion(puntos/tiros_anotados)


