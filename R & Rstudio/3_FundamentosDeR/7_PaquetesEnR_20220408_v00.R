"
En este Script intentaremos responder a la pregunta:


1. Qué son los paquetes en R?

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


1.1 Conociendo un poco más la sub-pestaña 'Install' de 
la pestaña 'Packages'

En la sub-pestaña de 'Packages', 'Install', se pueden 
instalar cuantos paquetes desee a un solo clic. Previamente, 
debe señalar a qué repositorio pertenecen dichos paquetes, 
y este recurso no se limita solamente al repositorio de la CRAN; 
es decir, si es un paquete particular o de uso personal, 
que no viene de la CRAN, también puede ser cargado: generalmente 
se usa esta última opción cuando ya tiene el paquete descargado 
en su computador y vienen en archivos con formato '.zip' o '.tar'. 

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
Para cualquier caso, siempre es ideal que mantenga 
sus paquetes actualizados.


1.2 Conociendo un poco más la sub-pestaña 'Updates' de 
la pestaña 'Packages'

Adicionalmente, también en la pestaña de 'Packages', se 
encuentra la sub-pestaña 'Updates'. Esta sub-pestaña se 
encarga de mostrar todos los paquetes de R actualizables, 
es decir, con 'Updates' usted puede cargar la última 
actualización de sus paquetes instalados: sólo es necesario 
seleccionarlos todos y hacer clic en 'Install Updates'.

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
# or
help(qplot)

"
Ambas funciones hacen lo mismo: Brindarte documentación
propia, con ejemplos, de la consulta que está haciendo; 
en este ejemplo, sería brindarte ayuda sobre 'qplot'.

"


"
EXTRA. Uso de la función 'installed.packages()'

La función 'installed.packages()' básicamente nos permite
saber qué paquetes tenemos instalados en Rstudio.

Simplemente corra su código a secas: 'installed.packages()', 
y listo, podrá ver todos los paquetes que tiene parcialmente
instalados en Rstudio.

"



