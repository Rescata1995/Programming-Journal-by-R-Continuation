"
En este Script intentaremos responder a la pregunta:
Qué son los paquetes en R?

Los Paquetes son una colección de funciones de R, 
datos, y código compilado en un formato bien 
definido. El directorio donde se almacenan los 
paquetes se llama: librería (library).

Desde RStudio usted podrá ver todos los paquetes que 
tiene a su disposición, los puede encontrar en la 
esquina inferior derecha al hacer clic en la pestaña 
'Packages'.

Los paquetes que no vea en 'Library' no están
descargados o instalados; usted podría instalarlos 
desde el botón 'Install' o, bien, instalarlos 
mediante código directo; es decir, corriendo el 
código propio del paquete que desea instalar y listo.
Adicionalmente, con códigos también puede activar 
y desactivar sus paquetes.

Ahora, al hacer clic en 'Install', podrá ver que los 
paquetes por defecto vienen de: 'Repository (CRAN)';
se trata del repositorio de R, la red completa de
archivos para R. 

Como R es un lenguaje de código abierto, cualquiera 
podría aportar al crear paquetes para este lenguaje 
de programación y cargarlos a esta red. Entonces,
tiene sentido que, desde el sitio web oficial de este
repositorio, se puedan descargar paquetes (packages).
Échale un vistazo!

CRAN: The Comprehensive R Archive Network.

Hay paquetes con funciones diseñadas para hacer 
gráficas, paquetes con funciones orientadas para 
procesar datasets muy grandes o paquetes con 
funciones para trabajar con dataframes, entre otros. 

Básicamente, todos los paquetes tienen un propósito: 
ayudarte a expandir las funcionalidades que tienes 
disponible en tus Scripts de R.

Nosotros en este curso trabajaremos, especialmente,
con el paquete 'GGPlot2'; un paquete para trabajar
con gráficos... Procedamos a instalarlo mediante
ejecución de código. Tal que así:

"

install.packages("ggplot2")

"
Ya instalado el paquete necesitamos activarlo para 
poder hacer uso de sus funciones. La activación se 
hará mediante código también, tal que así:

"

library("ggplot2")

"
Estando ya el paquete instalado y activado, usted
podría revisar cada una de las funciones del paquete
en cuestión. Por ejemplo, veamos más información 
sobre la función 'qplot' del paquete 'ggplot2'. 

"

?qplot()



