
"
Sobre cómo importar datos a R

Existen dos métodos para importar datos en R:

1. Por medio de la selección manual del 
   archivo a importar.
   
2. Por medio de la definición del directorio 
   de trabajo (Working directory).
  
Para cualquier caso nos asistiremos de la 
función 'read.csv()', la cual tiene la 
facultad de leer un archivo en formato de 
tabla para crear un 'dataframe', a partir de 
ahí, e importarlo así en un script de R.

'dataframe' traduce 'marco de datos'.

"

#Método 1: Selecciona el archivo manualmente

"
El método 1 se asiste de una segunda función,
ésta lleva por nombre: 'file.choose'. Esta 
última función se encarga de abrir un cuadro
de diálogo (o ventana) donde vamos a poder
seleccionar el archivo que queremos abrir.

Posteriormente, 'file.choose' nos regresa el
archivo en R y es la función 'read.csv' quien
se encarga de convertirlo en un 'dataframe'.

Entonces, lo ideal sería almacenar este 
'dataframe' en una variable. Veamos. 
Importemos el archivo de tipo 'CSV'
'Curso+R+-+Seccion+5+-+DatosDemograficos'
en la variable asignada 'Importacion_1' y 
ejecutemos para visualizar el 'Dataframe'.

"

Importacion_1 <- read.csv(file.choose())
Importacion_1

#Método 2: Establece el Directorio de trabajo

"
El método 2 es más eficiente y rápido, pues,
estaremos facultados para importar el archivo
de nuestro interés sin necesidad u omitiendo 
el paso de tener que pasar por un cuadro de 
diálogo. Lo anterior se logra estableciendo
el Directorio de trabajo primeramente; es 
decir, el directorio o carpeta donde reside 
el archivo que necesitamos importar para 
luego convertir en 'dataframe' y 
posteriormente analizar.

De hecho, es un mismo directorio de trabajo
donde se abren o se guardan los archivos, por
default, para luego importarlos. Para saber 
cuál es el directorio de trabajo que tenemos
configurado en R, podemos correr la función: 
'getwd()'. 

"
getwd()

"
Sin embargo, si quisieramos modificar nuestro 
directorio de trabajo establecido por defecto
lo podemos hacer con la función 'setwd()'.

Hay una método diferente de operar 'setwd()',
ya sea para Mac o para Windows.

En ambos se coloca la dirección de la carpeta
de su interés, sin embargo, el comienzo de e
estas direcciones varían. Veamos.

"

#Para Windows
setwd("C://... ")


#Para Mac
setwd("/... ")

setwd("C://Users/rober/OneDrive/Escritorio/Programming/Rstudio/5_MarcosDeDatos(DataFrames)/datasets")

"
ATENCIÓN: En este computador las barras 
siempre van así: '/', tanto para Mac como
para Windows. 

Ahora, compruebe que efectivamente ha cambiado 
su directorio de trabajo con 'getwd()'.

"

getwd()
      
"
Luego de configurado su directorio de trabajo
de interés, sí que puede llamar directamente
al archivo por su nombre (sin necesidad de 
hacer uso de la función 'file.choose()') con 
la función 'read.csv'. Tal que así:

"

Importacion_2 <- read.csv("C://Users/rober/OneDrive/Escritorio/Programming/Rstudio/5_MarcosDeDatos(DataFrames)/datasets")
Importacion_2

