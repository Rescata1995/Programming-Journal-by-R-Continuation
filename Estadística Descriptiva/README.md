**En esta sección definimos:**

<br>

### 1. Para qué sirve la Estadística descriptiva

**1. Tipos de datos**

* **1.1 Simil de la librería 'import' de Python con R**

**'import'** en python hace las veces de *'install.packages()' & 'library'*, todo en uno, en R; es decir, *'import'* no solo instala el paquete, sino que también lo carga y lo deja listo para su uso. En esta clase particular trabajaremos con el paquete **'pandas'**, un paquete extendidamente usado para preprocesamiento y limpieza de datos estructurados; en esta ocasión, hemos hecho uso de él al incorporar funciones de lectura para cargar archivos, y usarlos, dentro de nuestro entorno de trabajo. Adicionalmente, con _pandas_ se habilita también el uso de los **_filtrados_**, **_funciones de Agregación_** e incluso ***histogramas***, entre otras funcionalidades propias de preparación, procesamiento, análisis & visualización de datos. 

Retomemos a **_Import_**. Por ejemplo, **"_import pandas as pd_"**. *Import* le está diciendo al entorno de trabajo que instale el paquete **'pandas'** y lo deje listo para su uso de paso. **'as'** es un comodín para asignar aliases u sobrenombres, entonces, _'pandas'_ ahora se conoce también como *'pd'*. 


* **1.2 Diferencias entre Python & R en el uso de funciones**

Una novedad que hay en Python, contrario a R, es que para usar la función de un paquete determinado, se debe llamar antes al paquete en cuestión; en este caso, a nuestro paquete se le asignó el alias de *pd*. Si más adelante no invocamos a *pd* es porque simplemente las funciones que serían abordadas no pertenecen exclusivamente al paquete de *pd* **(pandas)** o, bien, sí pertenecen pero ya están contenidas dentro de una variable con la que ya se está trabajando (como por ejemplo será el caso de la variable **'df'** próximamente).*

Observe que para hacer uso de la función '*read_csv('cars.csv')*', si se percata, se antepone el paquete o el alias del paquete en cuestión; es decir, se cita o se llama al paquete. Tal que: **'pd.read_csv('cars.csv')'**.

Luego, idealmente, se almacena en una variable la anterior expresión o línea de código; de tal manera que toda vez que quiera correrla, sea simplemente invocar o llamar a su variable en cuestión. Por ejemplo, vamos a asignar la variable **'df'**.

Entonces, tendríamos lo siguiente: 
    ***df = 'pd.read_csv('cars.csv')'***


* **1.3 Uso de la función '.dtypes'**

Tenemos que el dataset lo hemos almacenado en la variable **'df'**. 

Entonces, por ejemplo, si quisieramos conocer el tipo de datos de cada una de las columnas del dataframe 'cars', que ahora lo hemos llamado 'df', lo hacemos ejecutando el siguiente código: '**_'df.dtypes'_**'


* **1.4 Uso de la función '.describe()'**

Nos muestra un resumen, pequeño vistazo, de la estructura de la cual se conforma cada columna, digamos, los metadatos de cada una de ellas. Adicionalmente, a cada campo se le asigna el cálculo numérico de varios estadisticos descriptivos. Para ejemplos prácticos, puede ejecutar lo siguiente: **_'df.describe()'_**


* **1.5 Uso de la función *'.groupby()'* + uso de *función de Agregación*** 

Entienda la lógica de la función *'.groupby'()* exactamente de la misma forma en la que lo entendió en SQL (revisar apuntes de ser necesario). Con *'groupby()'* básicamente se categoriza, se divide o se desglosa el resultado *agregado* de una función de agregación ejecutada, que resulta ser global, en las categorías (*levels* en R) del campo categórico pasado por medio de '.groupby()'; es decir, toma un resultado total, lo divide en partes, y le asigna la parte que corresponda a cada categoría del campo pasado dentro de '.groupby()'. Digamos, se *granula* la función de *agregación* aplicada por las categorías de un campo categórico pasado con *'groupby()'*. Veamos esto.

***df.groupby('engine_type').count()***

Con el anterior código se están contando todos los registros de la base de datos *'df'*, sin embargo, no se reflejará un solo número total o _agregado_ sobre dicho conteo; sino, un número total por cada una de las categorías del campo categórico 'engine_type'. En caso de que hubiera deseado no *categorizar* el resultado de su función de conteo, podía simplemente ejecutar el siguiente código: 

***df.count()***

Lo anterior no es lo más práctico, de hecho, lo normal es que usted en una *consulta* ejecute las funciones de agregación y adicionalmente las acompañe con una sentencia de tipo *'groupby'*.


* **1.6 Uso de _filtros_ en Python** 

Vamos directo al grano. Si por ejemplo sólamente quisiera ver el registro de coches marca _'Audi'_ y que pertenecen al módelo _'Q7'_ tendría que correr **_filtros_**, especificamente dos (2). Veamos. Es preciso mencionar de antemano que, idealmente, todo filtro que corra se le deberia asignar su variable propia. Al filtro que tomaremos de ejemplo lo almacenaremos en la variable 'Audi_Q7'. Entonces, tenemos:

***Audi_Q7 = df[(df['manufacturer_name'] == 'Audi') & (df['model_name']) == 'Q7')] ***

*Audi_Q7*


* **EXTRA**. Los tipos de dato **'string'** en Python se conocen como: **object**

En Python el tipo de dato 'string', o aquel que guarda valores textuales, es conocido como _'object'_.


<br>
<br>


**2. Introducción a Medidas de tendencia central Vs Medidas de dispersión**

Como introducción viene bien decir que los dos tipos de estadísticos descriptivos, mayormente usados, son: **Las medidas de tendencia central y las medidas de dispersión.**

Las medidas de tendencia central se encargan de calcular valores que resultan ser *agregados*, resumiendo aritméticamente todos los valores en uno (funciones de _Agregación_); mientras que las medidas de dispersión nos indican que tan dispersos están los valores, de manera individual, de un valor *agregado* calculado en cuestión.   

* **2.1 Algunas Medidas de tendencia central:** **Media** (promedio), **Mediana** (Dato central), **Moda** (Dato que más se repite). 

* **Cuándo usar cuál?**: La **Media** es muy susceptible a valores atípicos (genera un resultado sesgado, _desviado_), la **Mediana** no (pero lo ignora completamente). En todo caso, la Mediana es mucho más adecuada que la Media ante presencia de _Outliers_): ambos son extremos que se pueden curar con **_Medidas de Dispersión_**. Por otro parte, la **Moda** **_no_** aplica para datos numéricos continuos, no tendría sentido. 

* **2.2 Tabla & Diagrama de frecuencias**: En principio, estas dos herramientas entre sí, nos permiten contar la frecuencia con la que se repite cada valor posible, no duplicado, para una variable determinada generalmente de tipo 'categórica' (generalmente, no siempre); por ejemplo, podríamos contar la frecuencia con la que se repite cada valor posible para la variable 'edad', si hablaramos de la *muestra* de niños, nos podría interesar saber cuántos niños tendrían la edad de 6 años o cuántos tendrían la edad 8 años, etc. Luego, de manera ordenada, podríamos representar esta información en una tabla, organizando la tabla edad por edad (esto sería una *tabla de frecuencias*). Posteriormente, podríamos representar visualmente la información de la tabla en un gráfico, a esto se le llamaría *Diagrama de frecuencias*.  

<br>
<br>

**3. Medidas de tendencia central en Python**

Para hacer uso de las Medidas de tendencia central en Python hay que importar, como bien se imagina, el paquete _pandas_ (esto ya lo sabe hacer). 

<> Import *pandas* as *pd*
pd.read_csv('cars.csv')

Ahora, cualquier medida de tendencia central que pretenda correr, debe correrse sobre una columna o campo en específico que usted llame. Veamos esto en práctica. Supongamos que nos interesa trabajar con una columna que se llama 'price_usd'.

* **3.1 Uso de la función .mean()**: Calcula la Media de la columna en cuestión

**df['price_usd'].mean()**

* **3.2 Uso de la función .median()**: Calcula la Mediana de la columna en cuestión

**df['price_usd'].median()**

<br>
<br>

**4. Introducción a Histogramas con la líbreria 'Pandas'**: Tanto la tabla como el diagrama de frecuencias son útiles en el análisis de cualquier tipo de dato, a excepción de los datos numéricos o cuantitativos que resultan ser *continuos*. Es muy poco probable que en una base de datos que contenga números *continuos* existan valores que se repitan dentro de ella, es decir, no habría *frecuencia* alguna (o muy poca). No es probable que números con decimales se repitan de forma exactamente igual a lo largo de un registro; por lo cual, toca analizar estos valores por medio de _rangos_ y no por separado. El tipo de gráfico por excelencia que se encarga de analizar rangos de manera visual es el **_Histograma_**.

Veamos. La gran diferencia entre un Histograma y un Diagrama de barras es que el Histograma evalua rangos de números y el Diagrama de barras evalua valores, no necesariamente numéricos, de forma individual. Cada barra en un Histograma corresponde a un rango de valores, mientras que cada barra en un Diagrama de barras corresponde a un solo valor. Veamos cómo se ejecuta en la práctica un Histograma con Python.

* **4.1 Uso de la función .plot.hist()**

La función **'.plot()'** por sí sola se encarga de crear todo tipo de visualizaciones, sin embargo, nos interesa puntualmente crear histogramas; por lo que hablaríamos de la función **'plot.hist()'**. Ahora, la función *'plot.hist()'* se puede definir con varios _parámetros_. Veamos.

* **4.1.1 Parámetro 'Bins'**: en *Bins* se define el número de contenedores, barras o segmentaciones del Histograma en cuestión; es decir, habrán 20 rangos de valores que se encargarán de reflejar visualmente, por medio de 20 barras, todos los datos numéricos de la variable analizada en cuestión. En conclusión, todos los datos numéricos de la variable analizada se muestran en rangos, de forma ordenada, entre 20 barras. Veamos.

 **df['price_usd'].plot.hist(bins=20)**

<br>
<br>

**EXTRA. Introducción a la líbreria de visualización estadística 'seaborn' & otras formas más sofisticadas de lograr un Histograma**


*import seaborn as 'sns'*


Al grano. Ya se sabe que 'seaborn' es una líbreria de visualización estadística. En este caso particular, por lo pronto, simplemente nos interesa hacer uso de una función de la librería "seaborn"; hablamos de la función: **"displot()"**. La función *"displot()"* asume varios parámetros e idealmente se colocan en el siguiente orden:

* **1. Definición del parámetro 'data'.** En el parámetro _'data'_ se llama al _dataset_ con el que desea trabajar. Aunque si desea no es necesario hacer uso de ningún parámetro, simplemente llama de forma directa al *alias* con el cual se ha identificado su *dataset*; por ejemplo, el alias ***'df'***


* **2. Definición del parámetro 'x'.** En *'x'* se asigna un campo o columna, dicho campo o columna pasaría a ser la variable seleccionada para que sea evaluada dentro del histograma; es decir, se evaluará la frecuencia de los valores que contenga la variable en cuestión, siendo estos valores agrupados y expresados en términos de rangos u contenedores, entonces, se evaluaría la frecuencia de cada uno de dichos rangos. En nuestro ejemplo el parámetro ***'x'*** fue definido con el campo ***'price_usd'***.


* **3. Definición del parámetro 'hue'.** 

Como introducción sepa que la dimensión de cada rango o contenedor puede ser establecida (setting); es decir, usted puede establecer un rango fijo en particular para todos los contenedores o barras que visualiza (generalmente al definir el número de contenedores que desea ver en su histograma); es decir, establecer cuantas unidades de valores debe haber por cada rango o contenedor antes de pasar al siguiente; por ejemplo, 100 unidades (un número fijo por rango). En este caso por ejemplo, como el campo que estaríamos evaluando en el Histograma es ***'price_usd'***, usted podría definir que cada rango contemple 100 unidades de *precios* antes de saltar o pasar al otro rango o contenedor. Sin embargo, usted también, además de _establecer_, puede _mapear_; es decir, *granular* o categorizar sus rangos por medio de otro campo o columna y no sólo apoyarse de la dimensión definida para cada uno de ellos (rangos) por medio de un número _establecido_. Esto justamente lo hace el parámetro ***'hue'***. ***'hue'*** mapea, categoriza, granula mucho más la información de su histograma al definirlo de manera más detallada a partir de las categorías de un campo. 

Por ejemplo, supongamos que definimos el parámetro _hue_ con el campo ***'brand'*** (que hace referencia a las *marcas* de una muestra de carros) y que el parámetro _x_ sigue siendo definido con el campo ***'price_usd'***, supongamos que ***'price_usd'*** evalúa un nuevo rango cada 100 unidades de valores (de precios), es decir, son 100 unidades de precio las que definen la dimensión (tamaño horizontal, hacia el eje de las *x*) de cada uno de los contenedores de su histograma. En contexto, entonces, se observaría que los rangos/contenedores se _categorizarían_; se desglozaría a cada rango o contenedor, donde cada uno mide o _agrupa_ 100 unidades de precio, en cada una de las categorías del campo ***'brand'***; es decir, cada rango de 100 unidades de precio se dividiría en sub-rangos por cada una de las _marcas_ de coche registradas.


* **4. Definición del parámetro 'multiple' + valor 'stack'.** 

Si visualmente empieza a incomodar la superposición de histogramas sobre otros, lo que potencialmente dificultaría un análisis visual completo de ellos por limitar la capacidad de poder apreciar todos sus puntos de datos, podría considerar *apilarlos*; es decir, lograr **barras apiladas (stack bars)**. De hecho, el valor del parámetro *'multiple'* que tiene la capacidad de apilar sus barras en cuestión es **'stack'**. Veamos. 

**multiple='stack'**

De momento, entonces, tenemos la siguiente línea de código lista para ejecutar:

***sns.displot(df, x='price_usd', hue='engine_type', multiple='stack')***


* **5. Función '.displot()' Vs función '.histplot()' en la conformación de Histogramas**

Ahora, podemos ir al grano y decirle a la líbreria 'seaborn' que, extrictamente, queremos ver un Histograma en nuestra visualización; en ese caso, ya no hablaríamos de ***'sns.displot(...)'***, sino de ***'sns.histplot(...)'***. 

**Ejemplo práctico.** Recuerda el _subset_ filtrado a partir de una base de datos inicial que fue almacenada en la variable ***'df'***?, Hablamos del subset ***'Audi_Q7'***. Pues bien, trabajemos con él para probar esta nueva función. 

***sns.histplot(Audi_Q7, x='price_usd', hue='year_produced')***

La anterior función nos visualizará todos los Audi, módelo Q7 *(subset 'Audi_Q7')*, en rangos o contenedores, de un Histograma, con una dimensión sobre el eje de las _Xs_ equivalente a 5 mil unidades de precios para cada uno *(x='price_usd')*, donde cada rango de precios de autos se encontrará categorizado por los respectivos años o módelos de coche registrados para cada rango de valores de precio en cuestión; es decir, según un rango de precios dado, de qué módelo o año son los coches que se venden para dicho rango *(hue='year_produced')*.

***Takeaway:*** La tendencia que se ve es que, en la medida que el precio o el rango de precios incrementa; es más probable que las categorías, definidas por el campo 'year_produced', tengan módelos de coches más nuevos: esto tiene completamente sentido, mientras el coche sea de un módelo o año más actualizado, su costo tiende a ser mayor. Adicionalmente, el nivel de frecuencia disminuye en la medida que los rangos de precios incrementan; tiene todo el sentido también, pues, cuando más encarecen las mercancías, más escasean.  

**Para tener en cuenta:** Muchas veces lo ideal, especialmente en los casos en los que la base de datos es muy grande, no es sólo analizar de manera visual un solo campo; sino, incluso, tomar _subsets_ a partir de dicho campo en particular y crear así sus visualizaciones; por ejemplo, analizar visualmente una categoría en específica de un campo seleccionado; es decir, filtrar datos (tal como lo hicimos en el análisis de nuestro último histograma del _subset_ personalizado *'Audi_Q7'* con relación, ahora sí, a otros campos de interés que simplemente se utilizarían para ser _mapeados_). 

Una de las premisas de la **visualización**, en el análisis de datos, es la de resumir la mayor cantidad posible de datos para extraer de manera rápida las conclusiones más importantes de un estudio. Se resume información con la idea de facilitar mucho más el entendimiento del análisis que previamente fue hecho, la idea es que el público que observe una visualización capte la idea principal de forma casi que inmediata, en cuestión de segundos. **Sobrecargar un gráfico con datos nunca será buena idea y hay que tenerlo claro de entrada.**

