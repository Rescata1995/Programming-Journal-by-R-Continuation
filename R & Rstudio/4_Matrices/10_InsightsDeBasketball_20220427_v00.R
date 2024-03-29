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
anterior funci�n. Comencemos.
"

#Analizando: Sueldos

mi_1raFuncion(sueldos)

"
Se puede observar como KobeBryant se distancia notablemente
de los sueldos de los dem�s jugadores. Por el otro lado, 
se ve tambi�n como KevinDurant y DerrickRose repuntaron
sus sueldos de un momento a otro... Ser�a interesante 
averiguar las causas de estos sucesos.

"

mi_1raFuncion(sueldos/juegos)

"
Ya aqu� estar�amos evaluando, visualmente, el c�lculo de una
m�trica; puntualmente, se mide el sueldo promedio de cada 
jugador por partido y para cada una de las temporadas. 

Es posible que resulte ser mejor analizar m�tricas debido a que
son m�s dicientes, tienden a generar informaci�n por medio del
ejercicio de la comparaci�n entre dos o m�s de dos variables.

Sin embargo, incluso aunque no tuvieramos m�tricas, hacer una 
comparaci�n directa de los sueldos que hay entre todos los 
jugadores ya genera informaci�n.

Con las metricas muchas veces se pretende evaluar rendimientos

Por ejemplo, cuando se hace comparaciones entre variables, 
mejor a�n si las comparaciones son visualizadas, se hace 
mucho m�s fac�l detectar posibles valores at�picos o,
tambi�n, dirty data. Los gr�ficos ocupan un rol muy 
importante aqu� debido a que nos ayudan a digerir, en 
cuesti�n de segundos, el panorama general de los datos
que estamos evaluando sin perderse en el intento.

En efecto, tenemos un valor at�pico que se ve con mucha 
claridad porque nuestros datos ya est�n visualizados: 

En la pen�ltima temporada de KobeBryant se registr� un sueldo
promedio por juego bastante alejado de la media de los dem�s
jugadores, �por qu�? Eso es lo que hay que responder.

Si los valores at�picos y, en general, los datos se ponen en 
contexto podr�amos saber la raz�n de ser de ellos.

Particularmente la raz�n de ser de nuestro 'outlier' fue que 
esa temporada KobeBryant se lesion� y se perdi� de muchos 
partidos; sin embargo, mientras un jugador tenga contrato 
firmado, juegue o no juegue por lesi�n, siempre devengar� un 
salario mensual por estar firmado por el equipo, si y solo si 
el contrato continua vigente.

Este es un buen ejemplo de c�mo se pone en contexto los datos
que se tienen.

Ahora, el hecho de que nuestro estudio se vea afectado por 
lesiones genera un sesgo. Explico.

Como las lesiones no est�n siendo medibles o, al menos, el 
componente de la lesi�n no est� siendo medido como variable
independiente dentro de nuestro an�lisis, queda como variable 
por fuera del estudio sin dejar de afectar al estudio mismo.

Entonces, si una variable que est� afectando al estudio no 
est� siendo evaluada por el estudio mismo; por ejemplo, no hay
una tabla de datos dedicada a las lesiones, estar�amos delante
de un sesgo. 

En este caso puntual, siempre habr� sesgo debido a que los 
jugadores constantemente se est�n lesionando y no hay tablas
de datos que eval�en ese efecto, negativo o positivo, sobre la
comparaci�n de los datos de los sueldos con los datos de los 
juegos y sobre el estudio en general.

Para ser sinceros, no es ideal hacer un an�lisis con sesgos.
Para este caso puntual, tenemos que considerar si intentamos 
buscar la manera de incorporar al estudio la variable 
'lesiones' o, definitivamente, omitirla. Si optamos por la 
�ltima opci�n, que es lo m�s f�cil, es decir, quitar las 
lesiones de la ecuaci�n para que no afecten nuestro an�lisis...

Como sabe de antemano que las lesiones afectan a todas las 
estad�sticas del juego, pues, si est�s lesionado no puedes
jugar... 

Lo que habr�a que hacer es evaluar las m�tricas de los 
jugadores (comparar variables) considerando la cantidad de 
juegos que tuvo cada uno, por separado, y as� se evitan sesgos.

Tenemos que 'normalizar' nuestras estad�sticas o m�tricas a un
nivel por juego. Cuando se intentaba recrear m�tricas con los
sueldos de los jugadores se ignoraba el hecho de que, juegue 
o no, el sueldo del jugador no se ver�a afectado; con lo cual, 
no se normalizaba nuestro an�lisis. En cambio, se sabe que 
si un jugador no juega no podr� hacer tiros o, yendo m�s all�, 
encestarlos; entonces, hacer m�tricas con los tiros intentados
o los tiros anotados s� es una buena opci�n de an�lisis. 

Por lo anterior, as�, se intentar�an evitar valores at�picos 
generados por el sesgo que causan las lesiones.

Por ejemplo, podr�amos graficar los tiros anotados por juego;
as� tendr�amos una media de tiros encestados, por jugador, 
seg�n la cantidad propia de juegos que tuvo cada uno de ellos
por separado. Veamos. 


"
mi_1raFuncion(tiros_anotados/juegos)

"
Observe otros ejemplos normalizados...
"
#Analizando: m�tricas dentro del juego Normalizadas


mi_1raFuncion(tiros_anotados/tiros_intentados)
mi_1raFuncion(tiros_intentados/juegos)
mi_1raFuncion(puntos/juegos)

#Observaci�n interesante

mi_1raFuncion(minutos_jugados/juegos)
mi_1raFuncion(juegos)

#El tiempo es valioso

mi_1raFuncion(tiros_anotados/minutos_jugados)

#Estilo del jugador

mi_1raFuncion(puntos/tiros_anotados)


