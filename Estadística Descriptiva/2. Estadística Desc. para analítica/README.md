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


<br>



**2. Introducción a Medidas de tendencia central Vs Medidas de dispersión**

Como introducción viene bien decir que los dos tipos de estadísticos descriptivos, mayormente usados, son: **Las medidas de tendencia central y las medidas de dispersión.**

Las medidas de tendencia central se encargan de calcular valores que resultan ser *agregados*, resumiendo aritméticamente todos los valores en uno; mientras que las medidas de dispersión nos indican que tan dispersos están los valores, de manera individual, de un valor *agregado* calculado en cuestión.   


* **2.1 Algunas Medidas de tendencia central:** Media (promedio), Mediana (Dato central), Moda (Dato que más se repite). 

* **Cuándo usar cuál?**: *La **media** es suceptible a valores atípicos, la **mediana** no. Por otro parte, la **moda** no aplica para datos numéricos continuos, no tendría sentido.* 

* **2.2 Tabla & Diagrama de frecuencias**: En principio, estas dos herramientas entre sí, nos permiten contar la frecuencia con la que se repite cada valor posible para una variable determinada; por ejemplo, podríamos contar la frecuencia con la que se repite cada valor posible para la variable 'edad', si hablaramos de la *muestra* de niños, nos podría interesar saber cuántos niños tendrían la edad de 6 años o cuántos tendrían la edad 8 años, etc. Luego, de manera ordenada, podríamos representar esta información en una tabla, organizando la tabla edad por edad (esto sería una *tabla de frecuencias*). Posteriormente, podríamos representar visualmente la información de la tabla en un gráfico, a esto se le llamaría *Diagrama de frecuencias*.  
