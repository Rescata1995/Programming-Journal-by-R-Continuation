**En esta sección definimos:**

**1. Tipos de datos**

* **1.1 Simil de 'import' de Python con R**

**'import'** en python hace las veces de *'install.packages()' & 'library'*, todo en uno, en R; es decir, *'import'* no solo instala el paquete, sino que también lo carga y lo deja listo para su uso. En esta clase particular trabajaremos con el paquete **'pandas'**, un paquete extendidamente usado para preprocesamiento y limpieza de datos estructurados; en esta ocasión, hemos hecho uso de él al incorporar funciones de lectura para cargar archivos, y usarlos, dentro de nuestro entorno de trabajo.

Retomemos a **_Import_**. Por ejemplo, *"import pandas as pd"*. Import le está diciendo al entorno de trabajo que instale el paquete **'pandas'** y lo deje listo para su uso de paso. **'as'** es un comodín para asignar aliases u sobrenombres, entonces, pandas ahora se conoce también como pd. 



* **1.2 Diferencias entre Python & R en el uso de funciones**

Una novedad que hay en Python, contrario a R, es que para usar la función de un paquete determinado, se debe llamar antes al paquete en cuestión. 

Por ejemplo, para hacer uso de la función '*read_csv('cars.csv')*', si se percata, se antepone el paquete o el alias del paquete en cuestión; es decir, se cita o se llama al paquete. Tal que: **'pd.read_csv('cars.csv')'**.



* **1.3 Uso de la función .dtypes**

Tenemos que el dataset lo hemos almacenado en la variable **'df'**. 

Entonces, por ejemplo, si quisieramos conocer el tipo de datos de cada una de las columnas del dataframe 'cars', que ahora lo hemos llamado 'df', lo hacemos ejecutando el siguiente código: '***'df.dtypes'***'



* **1.4 Uso de la función .describe()**

Nos muestra un resumen, pequeño vistazo, de la estructura en la cual se conforma a cada columna, digamos, los metadatos de cada una de ellas. Adicionalmente, a cada campo se le asigna el cálculo numérico de varios estadisticos descriptivos. Para ejemplos prácticos, puede ejecutar lo siguiente: ***'df.describe()'***



* **EXTRA**. Los tipos de dato **'string'** en Python se conocen como: **object**

En Python el tipo de dato 'string', o aquel que guarda valores textuales, es conocido como _'object'_.
