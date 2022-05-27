# Querido estudiante,
#
#¡Bienvenido al mundo de los datos del Basketball!
#Estoy seguro de que vas a disfrutar esta sección del curso de Programación en R
#
#Instrucciones para este set de datos: 
#Simplemente selecciona todas las líneas en este script 
#presionando CTRL+A en Windows o CMND+A en Mac, y ejecútalas 
#Una vez que hayas ejecutado los comandos, los siguientes objetos 
#serán creados: 
#
#Matrices:
# - sueldos
# - juegos
# - minutos_jugados
# - tiros_anotados
# - tiros_intentados
# - puntos
#
# Vectores:
# - jugadores
# - temporadas
# 
#Esto lo vamos a comprender dentro del curso.
#
# Sinceramente
# Diego López
#www.superdatascience.com
#
#Copyright: Estos sets de datos fueron creados usando información disponible al público
#	Sin embargo, estos scripts están protegidos por leyes de Derecho de Autor
#	Si deseas usar este script de R fuera del curso de Programación en R,
#	creado por Kirill Eremenko, lo puedes hacer siempre y cuando hagas referencia a 
#	www.superdatascience.com en tu trabajo
#
#Comentarios: 
#Las temporadas están etiquetadas con el primer año de la temporada
#Ejemplo: la temporada 2012-2013 es presentada como 2012
#
# Notas adicionales:
#Kevin Durant: 2006 - Datos de temporada universitaria
#Kevin Durant: 2005 - Creada con datos  del 2006
#Derrick Rose: 2012 - No jugó
#Derrick Rose: 2007 - Datos de temporada universitaria
#Derrick Rose: 2006 - Creada con datos de temporada 2007
#Derrick Rose: 2005 - Creada con datos de temporada 2007


#Temporadas
temporadas <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Jugadores
jugadores <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Sueldo
KobeBryant_sueldos <- c(15946875,17718750,19490625,21262500,23034375,24806250,25244493,27849149,30453805,23500000)
JoeJohnson_sueldos <- c(12000000,12744189,13488377,14232567,14976754,16324500,18038573,19752645,21466718,23180790)
LeBronJames_sueldos <- c(4621800,5828090,13041250,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
CarmeloAnthony_sueldos <- c(3713640,4694041,13041250,14410581,15779912,17149243,18518574,19450000,22407474,22458000)
DwightHoward_sueldos <- c(4493160,4806720,6061274,13758000,15202590,16647180,18091770,19536360,20513178,21436271)
ChrisBosh_sueldos <- c(3348000,4235220,12455000,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
ChrisPaul_sueldos <- c(3144240,3380160,3615960,4574189,13520500,14940153,16359805,17779458,18668431,20068563)
KevinDurant_sueldos <- c(0,0,4171200,4484040,4796880,6053663,15506632,16669630,17832627,18995624)
DerrickRose_sueldos <- c(0,0,0,4822800,5184480,5546160,6993708,16402500,17632688,18862875)
DwayneWade_sueldos <- c(3031920,3841443,13041250,14410581,15779912,14200000,15691000,17182000,18673000,15000000)
#Matriz
sueldos <- rbind(KobeBryant_sueldos, JoeJohnson_sueldos, LeBronJames_sueldos, CarmeloAnthony_sueldos, DwightHoward_sueldos, ChrisBosh_sueldos, ChrisPaul_sueldos, KevinDurant_sueldos, DerrickRose_sueldos, DwayneWade_sueldos)
rm(KobeBryant_sueldos, JoeJohnson_sueldos, CarmeloAnthony_sueldos, DwightHoward_sueldos, ChrisBosh_sueldos, LeBronJames_sueldos, ChrisPaul_sueldos, DerrickRose_sueldos, DwayneWade_sueldos, KevinDurant_sueldos)
colnames(sueldos) <- temporadas
rownames(sueldos) <- jugadores

#Juegos 
KobeBryant_j <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_j <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_j <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_j <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_j <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_j <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_j <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_j <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_j <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_j <- c(75,51,51,79,77,76,49,69,54,62)
#Matriz
juegos = rbind(KobeBryant_j, JoeJohnson_j, LeBronJames_j, CarmeloAnthony_j, DwightHoward_j, ChrisBosh_j, ChrisPaul_j, KevinDurant_j, DerrickRose_j, DwayneWade_j)
rm(KobeBryant_j, JoeJohnson_j, CarmeloAnthony_j, DwightHoward_j, ChrisBosh_j, LeBronJames_j, ChrisPaul_j, DerrickRose_j, DwayneWade_j, KevinDurant_j)
colnames(juegos) <- temporadas
rownames(juegos) <- jugadores

#Minutos Jugados
KobeBryant_mj <- c(3277,3140,3192,2960,2835,2779,2232,3013,177,1207)
JoeJohnson_mj <- c(3340,2359,3343,3124,2886,2554,2127,2642,2575,2791)
LeBronJames_mj <- c(3361,3190,3027,3054,2966,3063,2326,2877,2902,2493)
CarmeloAnthony_mj <- c(2941,2486,2806,2277,2634,2751,1876,2482,2982,1428)
DwightHoward_mj <- c(3021,3023,3088,2821,2843,2935,2070,2722,2396,1223)
ChrisBosh_mj <- c(2751,2658,2425,2928,2526,2795,2007,2454,2531,1556)
ChrisPaul_mj <- c(2808,2353,3006,3002,1712,2880,2181,2335,2171,2857)
KevinDurant_mj <- c(1255,1255,2768,2885,3239,3038,2546,3119,3122,913)
DerrickRose_mj <- c(1168,1168,1168,3000,2871,3026,1375,0,311,1530)
DwayneWade_mj <- c(2892,1931,1954,3048,2792,2823,1625,2391,1775,1971)
#Matriz
minutos_jugados <- rbind(KobeBryant_mj, JoeJohnson_mj, LeBronJames_mj, CarmeloAnthony_mj, DwightHoward_mj, ChrisBosh_mj, ChrisPaul_mj, KevinDurant_mj, DerrickRose_mj, DwayneWade_mj)
rm(KobeBryant_mj, JoeJohnson_mj, CarmeloAnthony_mj, DwightHoward_mj, ChrisBosh_mj, LeBronJames_mj, ChrisPaul_mj, DerrickRose_mj, DwayneWade_mj, KevinDurant_mj)
colnames(minutos_jugados) <- temporadas
rownames(minutos_jugados) <- jugadores


#Tiros Anotados
KobeBryant_ta <- c(978,813,775,800,716,740,574,738,31,266)
JoeJohnson_ta <- c(632,536,647,620,635,514,423,445,462,446)
LeBronJames_ta <- c(875,772,794,789,768,758,621,765,767,624)
CarmeloAnthony_ta <- c(756,691,728,535,688,684,441,669,743,358)
DwightHoward_ta <- c(468,526,583,560,510,619,416,470,473,251)
ChrisBosh_ta <- c(549,543,507,615,600,524,393,485,492,343)
ChrisPaul_ta <- c(407,381,630,631,314,430,425,412,406,568)
KevinDurant_ta <- c(306,306,587,661,794,711,643,731,849,238)
DerrickRose_ta <- c(208,208,208,574,672,711,302,0,58,338)
DwayneWade_ta <- c(699,472,439,854,719,692,416,569,415,509)
#Matriz
tiros_anotados <- rbind(KobeBryant_ta, JoeJohnson_ta, LeBronJames_ta, CarmeloAnthony_ta, DwightHoward_ta, ChrisBosh_ta, ChrisPaul_ta, KevinDurant_ta, DerrickRose_ta, DwayneWade_ta)
rm(KobeBryant_ta, JoeJohnson_ta, CarmeloAnthony_ta, DwightHoward_ta, ChrisBosh_ta, LeBronJames_ta, ChrisPaul_ta, DerrickRose_ta, DwayneWade_ta, KevinDurant_ta)
colnames(tiros_anotados) <- temporadas
rownames(tiros_anotados) <- jugadores

#Tiros Intentados 
KobeBryant_ti <- c(2173,1757,1690,1712,1569,1639,1336,1595,73,713)
JoeJohnson_ti <- c(1395,1139,1497,1420,1386,1161,931,1052,1018,1025)
LeBronJames_ti <- c(1823,1621,1642,1613,1528,1485,1169,1354,1353,1279)
CarmeloAnthony_ti <- c(1572,1453,1481,1207,1502,1503,1025,1489,1643,806)
DwightHoward_ti <- c(881,873,974,979,834,1044,726,813,800,423)
ChrisBosh_ti <- c(1087,1094,1027,1263,1158,1056,807,907,953,745)
ChrisPaul_ti <- c(947,871,1291,1255,637,928,890,856,870,1170)
KevinDurant_ti <- c(647,647,1366,1390,1668,1538,1297,1433,1688,467)
DerrickRose_ti <- c(436,436,436,1208,1373,1597,695,0,164,835)
DwayneWade_ti <- c(1413,962,937,1739,1511,1384,837,1093,761,1084)
#Matriz
tiros_intentados <- rbind(KobeBryant_ti, JoeJohnson_ti, LeBronJames_ti, CarmeloAnthony_ti, DwightHoward_ti, ChrisBosh_ti, ChrisPaul_ti, KevinDurant_ti, DerrickRose_ti, DwayneWade_ti)
rm(KobeBryant_ti, JoeJohnson_ti, LeBronJames_ti, CarmeloAnthony_ti, DwightHoward_ti, ChrisBosh_ti, ChrisPaul_ti, KevinDurant_ti, DerrickRose_ti, DwayneWade_ti)
colnames(tiros_intentados) <- temporadas
rownames(tiros_intentados) <- jugadores


#Puntos
KobeBryant_puntos <- c(2832,2430,2323,2201,1970,2078,1616,2133,83,782)
JoeJohnson_puntos <- c(1653,1426,1779,1688,1619,1312,1129,1170,1245,1154)
LeBronJames_puntos <- c(2478,2132,2250,2304,2258,2111,1683,2036,2089,1743)
CarmeloAnthony_puntos <- c(2122,1881,1978,1504,1943,1970,1245,1920,2112,966)
DwightHoward_puntos <- c(1292,1443,1695,1624,1503,1784,1113,1296,1297,646)
ChrisBosh_puntos <- c(1572,1561,1496,1746,1678,1438,1025,1232,1281,928)
ChrisPaul_puntos <- c(1258,1104,1684,1781,841,1268,1189,1186,1185,1564)
KevinDurant_puntos <- c(903,903,1624,1871,2472,2161,1850,2280,2593,686)
DerrickRose_puntos <- c(597,597,597,1361,1619,2026,852,0,159,904)
DwayneWade_puntos <- c(2040,1397,1254,2386,2045,1941,1082,1463,1028,1331)
#Matriz
puntos <- rbind(KobeBryant_puntos, JoeJohnson_puntos, LeBronJames_puntos, CarmeloAnthony_puntos, DwightHoward_puntos, ChrisBosh_puntos, ChrisPaul_puntos, KevinDurant_puntos, DerrickRose_puntos, DwayneWade_puntos)
rm(KobeBryant_puntos, JoeJohnson_puntos, LeBronJames_puntos, CarmeloAnthony_puntos, DwightHoward_puntos, ChrisBosh_puntos, ChrisPaul_puntos, KevinDurant_puntos, DerrickRose_puntos, DwayneWade_puntos)
colnames(puntos) <- temporadas
rownames(puntos) <- jugadores