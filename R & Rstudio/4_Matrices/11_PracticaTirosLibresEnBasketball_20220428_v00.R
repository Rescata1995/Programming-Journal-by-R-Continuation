
#Instrucciones para este set de datos:
# 
#Solamente te han sido proporcionados los vectores. 
#T� deber�s de crear las matrices por ti mismo. 
#
#Matrices:
#- tiros_libres
#- tiros_libres_intentados
#
#Copyright: Estos sets de datos han sido preparados 
#con informaci�n disponible al p�blico.
#Sin embargo, estos scripts est�n sujetos a las 
#leyes de Derecho de Autor.
#Si desear utilizar estos scripts fuera del curso de 
#Programaci�n en Python creado por Kirill Eremenko, 
#lo puedes hacer referenciando www.superdatascience.com 
#en tu trabajo. 

#Comentarios:
#Las temporadas est�n etiquetadas con el primer a�o de 
#la temporada
#Ejemplo: la temporada 2012-2013 es presentada como 2012

#Notas adicionales:
# Kevin Durant: 2006 - Datos de temporada universitaria
# Kevin Durant: 2005 - Creada con datos  del 2006
# Derrick Rose: 2012 - No jug�
# Derrick Rose: 2007 - Datos de temporada universitaria
# Derrick Rose: 2006 - Creada con datos de temporada 2007
# Derrick Rose: 2005 - Creada con datos de temporada 2007

#Temporadas
temporadas <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Jugadores
jugadores <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Tiros Libres
KobeBryant_TL <- c(696,667,623,483,439,483,381,525,18,196)
JoeJohnson_TL <- c(261,235,316,299,220,195,158,132,159,141)
LeBronJames_TL <- c(601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_TL <- c(573,459,464,371,508,507,295,425,459,189)
DwightHoward_TL <- c(356,390,529,504,483,546,281,355,349,143)
ChrisBosh_TL <- c(474,463,472,504,470,384,229,241,223,179)
ChrisPaul_TL <- c(394,292,332,455,161,337,260,286,295,289)
KevinDurant_TL <- c(209,209,391,452,756,594,431,679,703,146)
DerrickRose_TL <- c(146,146,146,197,259,476,194,0,27,152)
DwayneWade_TL <- c(629,432,354,590,534,494,235,308,189,284)

#Matriz

tiros_libres <- rbind(KobeBryant_TL, JoeJohnson_TL, LeBronJames_TL,CarmeloAnthony_TL, DwightHoward_TL, ChrisBosh_TL, ChrisPaul_TL, KevinDurant_TL, DerrickRose_TL, DwayneWade_TL)
rm(KobeBryant_TL, JoeJohnson_TL, LeBronJames_TL,CarmeloAnthony_TL, DwightHoward_TL, ChrisBosh_TL, ChrisPaul_TL, KevinDurant_TL, DerrickRose_TL, DwayneWade_TL)
colnames(tiros_libres) <- temporadas
rownames(tiros_libres) <- jugadores


#Tiros Libres Intentados
KobeBryant_TLI <- c(819,768,742,564,541,583,451,626,21,241)
JoeJohnson_TLI <- c(330,314,379,362,269,243,186,161,195,176)
LeBronJames_TLI <- c(814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_TLI <- c(709,568,590,468,612,605,367,512,541,237)
DwightHoward_TLI <- c(598,666,897,849,816,916,572,721,638,271)
ChrisBosh_TLI <- c(581,590,559,617,590,471,279,302,272,232)
ChrisPaul_TLI <- c(465,357,390,524,190,384,302,323,345,321)
KevinDurant_TLI <- c(256,256,448,524,840,675,501,750,805,171)
DerrickRose_TLI <- c(205,205,205,250,338,555,239,0,32,187)
DwayneWade_TLI <- c(803,535,467,771,702,652,297,425,258,370)

#Matriz

tiros_libres_intentados <- rbind(KobeBryant_TLI, JoeJohnson_TLI, LeBronJames_TLI,CarmeloAnthony_TLI, DwightHoward_TLI, ChrisBosh_TLI, ChrisPaul_TLI, KevinDurant_TLI, DerrickRose_TLI, DwayneWade_TLI)
rm(KobeBryant_TLI, JoeJohnson_TLI, LeBronJames_TLI,CarmeloAnthony_TLI, DwightHoward_TLI, ChrisBosh_TLI, ChrisPaul_TLI, KevinDurant_TLI, DerrickRose_TLI, DwayneWade_TLI)
colnames(tiros_libres_intentados) <- temporadas
rownames(tiros_libres_intentados) <- jugadores
tiros_libres_intentados


"
Ejercicio.

Escenario: Te han prove�do datos de dos estad�sticas m�s 
del juego: 
 * Tiros Libres.
 * Tiros Libres Intentados.
 
Tienes que crear tres gr�ficos que muestren los siguientes 
insights: 

 * Tiros libres intentados por juego.
 * Precisi�n en Tiros libres.
 * Estilo de Juego del jugador (preferencia de 2 vs 3 puntos)
   excluyendo los Tiros Libres*.
   
 * Cada Tiro Libre cuenta como 1 punto.
 
Los datos han sido suministrados en forma de vectores. 
Vas a tener que crear dos matrices antes de proceder
cone el an�lisis.
 
"

#Resolution

"
Aclaremos algo que no est� claro, el ejercicio cuando se 
refiere a 'Tiros Libres' est� hablando del total de tiros 
que S� fueron anotados deesde un tiro libre. Tenemos que 
cada Tiro Libre vale un punto (la �nica cesta que deja un 
punto en Basketball son las de tipo 'Tiro Libre'), entonces, 
cada unidad de la variable 'Tiros Libres' es lo mismo que 
una unidad de la variable 'Puntos'.

La variable 'Tiros Libres Intentados' hace referencia al 
total de tiros libres hechos, hayan sido anotados o no. 

Entonces, la diferencia entre 'Tiros Libres Intentados' 
y Tiros Libres' nos dar�a como resultado la cantidad de tiros 
libres que no fueron anotados. Dicho lo anterior, ahora s� 
resolvemos.

"

"
Visualizaci�n con 'matplot' por medio de 'miFuncion':
"

miFuncion <- function(matrix_sel, filas=1:10)
{
  subconjunto <- matrix_sel[filas,,drop=F]
  matplot(t(subconjunto), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=jugadores[filas], pch=15:18, col=c(1:4,6), horiz = F)
}

"
1. Respuesta a 'Tiros Libres intentados por juego':
"
miFuncion(tiros_libres_intentados/juegos)
#F�jate c�mo Chris Paul recibe menos intentos por juego

"
2. Respuesta a 'Precisi�n en Tiros Libres':
"
miFuncion(tiros_libres/tiros_libres_intentados)
#Y a�n as� la precisi�n de Chris Paul es una de las m�s elevadas
#Tambi�n f�jate que la precisi�n de Dwight Howard est� muy baja
#comparada con otros jugadores. Si recuerdas, comparaddo con 
#otros jugadores, Dwight Howard era muy preciso en tiros de campo

miFuncion(tiros_anotados/tiros_intentados)
#�C�mo es posible esto? �Por qu� hay una diferencia tan dr�stica?
#Justo eso vamos a ver ahora.

"
3. Respuesta a 'Estilo de Juego del Jugador' (preferencia
de 2 vs 3 puntos, es decir, excluyendo los puntos que 
representa la variable 'tiros_libres' y que, actualmente, 
no est�n siendo discriminados en la totalidad de la 
variable 'puntos': se incluyen actualmente aqu� sin 
discriminarlos). 

El 'Estilo del Jugador' b�sicamente mide el tipo de cesta 
que hace el jugador en promedio, quiero ser m�s claro, si 
suele hacer por cada cesta 2 o 3 puntos; 2 o 3 puntos si 
excluimos las cestas de un punto (como lo requiere el 
ejercicio), es decir, si le restamos la variable
'tiros_libres' a la variable 'puntos'; pues, hay que decir 
los puntos de 'tiros_libres' se incluyen sobre la variable 
'puntos' de forma implicita, sin poder diferenciar as�
las cestas que sean de 1 punto. Entonces, como queremos
dejar por fuera estas cestas de 1 punto, toca entonces
restar 'tiros_libres' a 'puntos'.

"

miFuncion((puntos-tiros_libres)/tiros_anotados)

#Debido a que hemos exluidos los tiros libres, esta gr�fica 
#ahora nos muestra la representaci�n m�s acertada de c�mo ha 
#ido cambiando el estilo de los jugadores. Podemos verificarlo 
#porque ahora todos los marcadores en esta gr�fica est�n entre
#2 y 3. Eso es porque los tiros de campo solamente pueden contar
#por 2 o 3 puntos. 
#
#Insights:
#1. Puedes ver c�mo ha ido cambiando durante su carrera la 
#   preferencia de los jugadores por tiros de 2 o 3 puntos. 
#   Podemos ver que casi todos los jugadores en este set de
#   datos han tenido cambios a lo largo de su carrera. 
#   Por ejemplo, Joe Johnson, Chris Bosh, Chris Paul
#2. Sin embargo hay una excepci�n. Puedes ver un jugador 
#   que no ha cambiado su estilo a lo largo de su carrera. 
#   Anotando �nicamente tiros de 2 puntos. �Este jugador es
#   Dwight Howard!
#   Eso explica mucho. La raz�n por la cual la precisi�n 
#   de Dwight Howard es tan buena es porque casi siempre
#   anota �nicamente canastas de 2 puntos. Eso significa 
#   que se puede acercar m�s a la canasta, o incluso estar
#   pegado a ella. Pero lo tiros libre requieren que el
#   el jugador est� a 15ft. separado de la canasta. 
#   Probablemente por eso la precisi�n de Dwight Howard 
#   en los tiros libre es tan baja. 
