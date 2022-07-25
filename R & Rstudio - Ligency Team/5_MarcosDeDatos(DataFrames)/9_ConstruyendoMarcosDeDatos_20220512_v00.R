#Ejecuta este código para generar tres vectores nuevos
Pais_dataset_p2 <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codigo_Pais_dataset_p2 <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Region_dataset_p2 <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")


#(c) Kirill Eremenko, www.superdatascience.com

"
Construyendo Marcos de datos.

"

"
1. Introducción a función 'data.frame()'.

Cómo crear Marcos de datos (Dataframes) a partir de
vectores declarados? 

Crear marcos de datos, a partir de vectores, es muy
similar a la manera en cómo creamos matrices, por 
medio de las funciones 'rbind' o 'cbind', a partir
de vectores también.

En ambos también nos asistimos de una variable para
que, con ella, podamos identificar posteriormente
al dataframe creado, o bien, potencialmente creado.

La gran diferencia entre ambas formas es que se 
usa una función diferente para crear los marcos de 
datos; de nuevo, a partir de vectores ya declarados. 

Esta función es: 'data.frame()'.


1.1 Ejemplo: creando nuestro 1er Dataframe

Por ejemplo, vamos a guardar en una nueva variable
que será llamada 'dataframe1' un nuevo dataframe 
que será creado a partir de los vectores 
'Pais_dataset_p2', 'Codigo_Pais_dataset_p2' & 
'Region_dataset_p2'. 

Es decir, vamos a construir un dataframe, con los 
vectores que ya tenemos declarados, al convertir
estos vectores en las columnas del dataframe en
cuestión. Veamos en práctica el cómo.

"
dataframe1 <- data.frame(Pais_dataset_p2, 
                         Codigo_Pais_dataset_p2, 
                         Region_dataset_p2)


"
Listo! Hemos creado nuestro nuevo Marco de datos
'dataframe1', veamos sus primeros 5 registros.

"
head(dataframe1)


"
Si se percata, ya no es necesario 'pasarle' una
etiqueta o nombre a nuestras columnas; pues, en el
caso de los dataframes, se toma como nombre de 
cada columna (cada vector) la variable con la que 
fue definido cada vector. Muy diferente al caso de 
las matrices donde nos valíamos de funciones como 
'rownames' o 'colnames' para asignarle una 
etiqueta o nombre a nuestras columnas.


2. Métodos para cambiar los nombres de las 
columnas de un dataframe.


2.1 Método indirecto, por medio de un vector.

Sepa que si no se siente conforme con los nombres 
asignados por defecto; usted podría usar, también 
acá, la función 'colnames' para asignarle nuevos 
nombres a las columnas de su dataframe. Este 
proceso es exactamente el mismo al proceso de
asignación de nombres en columnas de una matriz.

Supongamos que queremos que nuestra columna 
'Pais_dataset_p2' se llame ahora 'Pais',
'Codigo_Pais_dataset_p2' se llame ahora 'Codigo' 
y que la columna 'Region_dataset_p2' se llame 
ahora 'Region'... cómo sería la resolución?

Veamos:

"

colnames(dataframe1) <- c("Pais", "Codigo", "Region")

"Veamos ahora los nuevos nombres de la columna"
colnames(dataframe1)

"
Se llaman los nuevos nombres, los que recibirán 
cada columna de su marco de datos 'dataframe1', 
en el mismo orden en que están ordenadas las 
columnas del dataframe en cuestión. Estos nuevos 
nombres también se asignan por medio de un vector, 
tal como lo hacemos con las matrices.

Ahora, usted también podría almacenar todo su 
vector en una variable; de tal manera que, 
solamente le pase a la función 'colnames()' 
el nombre de la variable en cuestión.

"

"
2.2 Método directo, en la creación de su dataframe

Vamos a eliminar todo nuestro Marco de datos
creado, 'dataframe1', para crearlo de nuevo; pero,
asignando ahora los nombres de nuestras columnas
de forma directa.

Observe como dentro del proceso de creación del 
dataframe, donde se interpreta a cada vector 
pasado como una columna, se asignan de paso los 
nombres que deseamos sobre las columnas en 
cuestión.

De nuevo, supongamos que queremos que nuestra 
columna 'Pais_dataset_p2' se llame ahora 'Pais',
'Codigo_Pais_dataset_p2' se llame ahora 'Codigo' 
y que la columna 'Region_dataset_p2' se llame 
ahora 'Region'... Cómo sería la resolución bajo
este método directo?

"

rm(dataframe1)

dataframe1 <- data.frame(Pais=Pais_dataset_p2,
                         Codigo=Codigo_Pais_dataset_p2,
                         Region=Region_dataset_p2)

head(dataframe1)
tail(dataframe1)

"
Observe como el nombre 'Pais' se asignó 
directamente sobre el nombre del vector (columna)
'Pais_dataset_p2', esto mismo acontece con todos 
los demás vectoreS; los cuales, posteriormente,
son los que definen las columnas del Dataframe 
'dataframe1'.

Este segundo método es más eficiente porque ahorra
código y se ejecuta más rápido.


De interés: Este mismo método de asignación de 
nombres directos, sobre las columnas, funciona 
para las funciones 'rbind' & 'cbind' en la 
creación de Matrices.

"
