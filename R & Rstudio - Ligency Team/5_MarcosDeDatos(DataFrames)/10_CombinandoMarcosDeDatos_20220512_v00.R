#Ejecuta este código para generar tres vectores nuevos
Pais_dataset_p2 <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codigo_Pais_dataset_p2 <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Region_dataset_p2 <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")


#Dataframe 1
dataframe1 <- data.frame(Pais=Pais_dataset_p2,
                         Codigo=Codigo_Pais_dataset_p2,
                         Region=Region_dataset_p2)

head(dataframe1)


#Dataframe 2

dataframe2 <- read.csv(file.choose())
head(dataframe2)


"
Combinando Marcos de datos (merge). 

Trataremos de explicar cómo combinar Marcos de 
datos por medio de los dos que ya hemos declarado:
'dataframe1' & 'dataframe2'; es decir, queremos
crear un nuevo dataframe a partir de la fusión del 
'dataframe1' & 'dataframe2'.

Posteriormente, del nuevo dataframe resultante,
nos interesa analizar visualmente dicha tabla por 
medio de la función 'qplot()'.


1.1 Unión de dataframes por medio de columnas en 
común o llaves.

Para combinar dos Marcos de datos se requiere
que, al menos, ambos tengan una columna en común; 
más puntualmente que los datos contenidos, en la
columna en común, sean iguales.

Si uno imprime, por ejemplo, cada uno de los 
campos o columnas del 'dataframe1' & 'dataframe2', 
nos daremos cuenta que ambos Marcos de datos 
contienen dos columnas iguales entre sí 
(al menos sus datos contenidos son iguales).

Si quiere hacer un simil con SQL, estaríamos 
entonces ante campos de tipo 'llave'; que son,
justamente, los que nos permiten hacer 'joins'
entre tablas o datasets de una misma database.

"

# Look at the first 5 rows from your datasets
head(dataframe1)
head(dataframe2)


"
1.2 Unión de dataframes por medio de las columnas 
en común que estén más normalizadas.

Note que las columnas 'Nombre.Pais' & 'Codigo.Pais'
del marco de datos 'dataframe2' son las mismas que 
las columnas 'Pais' & 'Codigo' del marco de datos
'dataframe1', respectivamente.

En este caso puntual, como son varias las columnas 
iguales entre ambos marcos de datos, lo ideal para 
combinarlos sería seleccionar el campo o la columna
que esté más 'estandarizada'; es decir, combinar
'dataframe1' & 'dataframe2' por medio de las 
columnas 'Codigo.Pais' & 'Codigo' (para este caso).
 
"


"
1.3 Uso de función 'Merge', y sus parámetros, 
para la unión de sus dataframes. 

La unión que pretenda hacerse entre 2 dataframes,
con la función 'merge', debe guardarse en una 
nueva variable; esta nueva variable pasaría a ser
el nombre de su nuevo dataframe, el resultante de 
la unión entre sus dataframes iniciales.

Ahora, la función 'merge' como tal recibe 4
parámetros. 

En el 1er parámetro se llama a su 1er dataframe, 
el que usted desee que se muestre en la parte más 
izquierda de la unión de sus dataframes; 

en el 2do parámetro se llama a su 2do dataframe, 
el que usted desee que se muestre en la parte más 
derecha de la unión de sus dataframes; 

en el 3er parámetro se llama a la columna llave,
seleccionada, del dataframe que fue llamado como 
1ro en su 1er parámetro. Para llamar a esta 
columna nos asistimos de la expresión: by.x=''
(se llama entre comillas dobles a su columna).

& en el 4to parámetro se llama a la columna llave,
seleccionada, del dataframe que fue llamado como 
2do en su 2do parámetro. Para llamar a esta 
columna nos asistimos de la expresión: by.y=''
(se llama entre comillas dobles a su columna).

Tenga algo en cuenta: una de estas columnas 
llaves, que fueron pasadas como parámetros dentro
de la función 'merge', será suprimida; pues, 
se trata de columnas que son iguales (tienen
los mismos datos). La columna llave que va a 
sobrevivir será la columna llave pasada en el
3er parámetro; es decir, la columna llave de 
su 1er dataframe pasado dentro de los parámetros 
de 'merge'.
"


"
1.4 Ejemplo de una Unión y sintaxis de Merge().

Suponga que pretende unir los marcos de datos 
'dataframe1' & 'dataframe2' por medio de las 
columnas llaves seleccionadas para cada uno,
estas columnas son: 'Codigo' & 'Codigo.Pais', 
respectivamente.

Digamos que usted decide que el 1er marco de datos
pasado, en el 1er parámetro de su función 'merge',
para resolver este ejercicio, es 'dataframe2'.

Entonces, la Unión de estos dos dataframes y 
la sintaxis de 'merge', puesta en práctica, es
la siguiente: 

"

dataframe_union <- merge(dataframe2, dataframe1,
                         by.x="Codigo.Pais",
                         by.y="Codigo")

head(dataframe_union)


"
1.5 Eliminación de columnas duplicadas.

Observe que la columna 'Nombre.Pais', del marco de
datos 'dataframe2', conserva los mismos datos de la 
columna 'Pais' del marco de datos 'dataframe1'; en
consecuencia, ya con la unión de ambos dataframes,
aún tendríamos problemas de columnas duplicadas.

RES: Proceda a eliminar una de ellas, la que desee.
Columna seleccionada para eliminar: 'Pais'.

Usted ya sabe cómo eliminar columnas en un dataframe;
elimine entonces la columna 'Pais' de su dataframe
resultante 'dataframe_union'. Observe.

"

dataframe_union$Pais = NULL

"
Veamos nuestra tabla resultante de nuevo.

"

head(dataframe_union)
tail(dataframe_union)

"
Hemos fusionado en un nuevo dataframe los marcos de 
datos 'dataframe1' & 'dataframe2'; suprimiendo, de 
paso, todas las columnas duplicadas que han podido 
surgir de dicho 'merge'.

"
