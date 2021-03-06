"
En este Script intentaremos responder a la pregunta:
Qu� son los paquetes en R?

Los Paquetes son una colecci�n de funciones de R, 
datos, y c�digo compilado en un formato bien 
definido. El directorio donde se almacenan los 
paquetes se llama: librer�a (library).

Desde RStudio usted podr� ver todos los paquetes que 
tiene a su disposici�n, los puede encontrar en la 
esquina inferior derecha al hacer clic en la pesta�a 
'Packages'.

Los paquetes que no vea en 'Library' no est�n
descargados o instalados; usted podr�a instalarlos 
desde el bot�n 'Install' o, bien, instalarlos 
mediante c�digo directo; es decir, corriendo el 
c�digo propio del paquete que desea instalar y listo.
Adicionalmente, con c�digos tambi�n puede activar 
y desactivar sus paquetes.

Ahora, al hacer clic en 'Install', podr� ver que los 
paquetes por defecto vienen de: 'Repository (CRAN)';
se trata del repositorio de R, la red completa de
archivos para R. 

Como R es un lenguaje de c�digo abierto, cualquiera 
podr�a aportar al crear paquetes para este lenguaje 
de programaci�n y cargarlos a esta red. Entonces,
tiene sentido que, desde el sitio web oficial de este
repositorio, se puedan descargar paquetes (packages).
�chale un vistazo!

CRAN: The Comprehensive R Archive Network.

Hay paquetes con funciones dise�adas para hacer 
gr�ficas, paquetes con funciones orientadas para 
procesar datasets muy grandes o paquetes con 
funciones para trabajar con dataframes, entre otros. 

B�sicamente, todos los paquetes tienen un prop�sito: 
ayudarte a expandir las funcionalidades que tienes 
disponible en tus Scripts de R.

Nosotros en este curso trabajaremos, especialmente,
con el paquete 'GGPlot2'; un paquete para trabajar
con gr�ficos... Procedamos a instalarlo mediante
ejecuci�n de c�digo. Tal que as�:

"

install.packages("ggplot2")

"
Ya instalado el paquete necesitamos activarlo para 
poder hacer uso de sus funciones. La activaci�n se 
har� mediante c�digo tambi�n, tal que as�:

"

library("ggplot2")

"
Estando ya el paquete instalado y activado, usted
podr�a revisar cada una de las funciones del paquete
en cuesti�n. Por ejemplo, veamos m�s informaci�n 
sobre la funci�n 'qplot' del paquete 'ggplot2'. 

"

?qplot()



