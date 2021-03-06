
"
Sobre c�mo importar datos a R

Existen dos m�todos para importar datos en R:

1. Por medio de la selecci�n manual del 
   archivo a importar.
   
2. Por medio de la definici�n del directorio 
   de trabajo (Working directory).
  
Para cualquier caso nos asistiremos de la 
funci�n 'read.csv()', la cual tiene la 
facultad de leer un archivo en formato de 
tabla para crear un 'dataframe', a partir de 
ah�, e importarlo as� en un script de R.

'dataframe' traduce 'marco de datos'.

"

#M�todo 1: Selecciona el archivo manualmente

"
El m�todo 1 se asiste de una segunda funci�n,
�sta lleva por nombre: 'file.choose'. Esta 
�ltima funci�n se encarga de abrir un cuadro
de di�logo (o ventana) donde vamos a poder
seleccionar el archivo que queremos abrir.

Posteriormente, 'file.choose' nos regresa el
archivo en R y es la funci�n 'read.csv' quien
se encarga de convertirlo en un 'dataframe'.

Entonces, lo ideal ser�a almacenar este 
'dataframe' en una variable. Veamos. 
Importemos el archivo de tipo 'CSV'
'Curso+R+-+Seccion+5+-+DatosDemograficos'
en la variable asignada 'Importacion_1' y 
ejecutemos para visualizar el 'Dataframe'.

"

Importacion_1 <- read.csv(file.choose())
Importacion_1

#M�todo 2: Establece el Directorio de trabajo

"
El m�todo 2 es m�s eficiente y r�pido, pues,
estaremos facultados para importar el archivo
de nuestro inter�s sin necesidad u omitiendo 
el paso de tener que pasar por un cuadro de 
di�logo. Lo anterior se logra estableciendo
el Directorio de trabajo primeramente; es 
decir, el directorio o carpeta donde reside 
el archivo que necesitamos importar para 
luego convertir en 'dataframe' y 
posteriormente analizar.

De hecho, es un mismo directorio de trabajo
donde se abren o se guardan los archivos, por
default, para luego importarlos. Para saber 
cu�l es el directorio de trabajo que tenemos
configurado en R, podemos correr la funci�n: 
'getwd()'. 

"
getwd()

"
Sin embargo, si quisieramos modificar nuestro 
directorio de trabajo establecido por defecto
lo podemos hacer con la funci�n 'setwd()'.

Hay una m�todo diferente de operar 'setwd()',
ya sea para Mac o para Windows.

En ambos se coloca la direcci�n de la carpeta
de su inter�s, sin embargo, el comienzo de e
estas direcciones var�an. Veamos.

"

#Para Windows
setwd("C://... ")


#Para Mac
setwd("/... ")

setwd("C://Users/rober/OneDrive/Escritorio/Programming/Rstudio/5_MarcosDeDatos(DataFrames)/datasets")

"
ATENCI�N: En este computador las barras 
siempre van as�: '/', tanto para Mac como
para Windows. 

Ahora, compruebe que efectivamente ha cambiado 
su directorio de trabajo con 'getwd()'.

"

getwd()
      
"
Luego de configurado su directorio de trabajo
de inter�s, s� que puede llamar directamente
al archivo por su nombre (sin necesidad de 
hacer uso de la funci�n 'file.choose()') con 
la funci�n 'read.csv'. Tal que as�:

"

Importacion_2 <- read.csv("C://Users/rober/OneDrive/Escritorio/Programming/Rstudio/5_MarcosDeDatos(DataFrames)/datasets")
Importacion_2

