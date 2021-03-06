#Let's go to continue with the previous script

#Ejecuta este c�digo para generar tres vectores nuevos
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


#Merge

dataframe_union <- merge(dataframe2, dataframe1,
                         by.x="Codigo.Pais",
                         by.y="Codigo")


#Data cleaning (Removing duplicates)

dataframe_union$Pais = NULL


#Summary from our Merge

head(dataframe_union)


# Visualizing with qplot (Part2)


qplot(data=dataframe_union, y=Tasa.Natalidad,
      x=Penetracion.Internet, size=I(5), 
      color=Region, shape=I(19), alpha=I(0.5),
      main="Tasa de Natalidad vs Penetraci�n de Internet")


"
Par�metro 'shape'

Si te percatas, hemos introducido un nuevo par�metro; 
se trata del par�metro 'shape'. 'shape' b�sicamente
define el tipo de figura con el cual se estar�n 
visualizando los datos de nuestro dataframe; m�s
precisamente, los datos de los campos evaluados en 
'qplot'.

Por ejemplo, con el par�metro 'shape' es que se define
si queremos que nuestros datos sean representados por 
medio de figuras tipo 'triangulos', 'c�rculos', 
'cuadrados', etc. Es preciso decir que estas figuras
se definen por medio de valores num�ricos; es decir,
es un n�mero lo que se pasa, como valor que define al 
par�metro 'shape', para poder representar los datos 
con figuras de tipo 'geom�trica'.

Este par�metro tambi�n se asiste de la funci�n 'I()', 
a excepci�n de que definamos su valor con un campo de 
nuestro dataframe directamente.

En su directorio 'dataset', de esta misma secci�n,
podr� ver con qu� n�mero se representa a cada figura
geom�trica: los valores van del 0 al 25. Take a look!

Tip: Si hay superposici�n de datos, o conglomeraci�n 
de figuras, a la hora de analizar su visualizaci�n; 
lo ideal es usar figuras NO rellenas, de tal manera 
que tenga un mayor alcance de visualizaci�n sobre la 
totalidad de sus datos.

Haciendo un s�mil con Tableau, este tipo de problemas 
se solucionaba al definir las figuras con una menor 
opacidad (lo mismo que decir con una mayor 
transparencia); O bien, porqu� no, podr�a considerar 
tambi�n figuras NO rellenas.

"


"
Par�metro 'alpha'

En efecto, como bien se podr�a estar cuestionando, 
en R tambi�n podr�amos disminuir la opacidad de 
nuestras figuras; sin embargo, ac� en R, hablamos en 
t�rminos de 'transparencia' y el concepto de 
'transparencia' es pr�cticamente lo opuesto al 
concepto de 'opacidad'.

La transparencia de las figuras es definida por otro
par�metro, este par�metro es conocido como: 'alpha'. 
Entonces, la transparencia se mide de 0 a 1, siendo 
que 0 har�a sus figuras lo m�s transparente posible 
y 1, por lo contrario, har�a sus figuras lo m�s opaca 
posible.

En los diagramas de dispersi�n, por ejemplo, lo ideal
es que su visualizaci�n est� representada por figuras
rellenas, pero con cierta transparencia (o menor
opacidad).

Este par�metro tambi�n se asiste de la funci�n 'I()', 
a excepci�n de que definamos su valor con un campo de 
nuestro dataframe directamente.

"


"
Extra: C�mo a�adir un t�tulo principal o 'headline' 
a nuestra visualizaci�n.

Es sencillo. S�lo necesitamos hacer uso de un nuevo
par�metro: 'main'. El valor que recibe 'main' ser�a
un valor de tipo cadena de texto donde escribir�a,
justamente, el t�tulo que quiera asignarle a su viz.

Este t�tulo se pasa entre comillas doble.

"