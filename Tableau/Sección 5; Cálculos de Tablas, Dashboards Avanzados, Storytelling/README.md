_Este README.md está completamente sincronizado con el documento "Cálculos de Tablas, Dashboards Avanzados, Storytelling" situado en este mismo directorio. La documentación del archivo Word toca a detalle toda la teoría y práctica, abordada por el curso, e incluye también un panel de navegación para una mejor experiencia de aprendisaje y recordación de temas vistos a futuro._

**Sección 5; Cálculos de Tablas, Dashboards Avanzados, Storytelling.**

En esta sección estaremos trabajando con el dataset **'UK-Bank-Customers'**, con el cual se pretende crear _**Dashboards Avanzados** altamente visuales, informativos e interactivos_. Adicionalmente estaremos realizando _**Cálculos de Tablas & Parámetros**_ & estaremos contruyendo, también, historias a partir de nuestros datos, lo que se conoce como: _**Storytelling**_. Es preciso mencionar que el _dataset_ 'UK-Bank-Customers' contiene datos _simulados_ de clientes de un Banco del Reino Unido. 

Lo que se requiere es hacer un análisis de datos sobre los datos contenidos para cada cliente, y cómo se comporta cada uno de ellos, sobre cada región evaluada del Reino Unido; es decir, se evaluará el comportamiento de los clientes por región.

**1. Mapping: Cómo establecer Roles Geográficos. Intro a Segmentación demográfica**

Se define qué es **Segmentación demográfica** y se logra una segmentación inicial por regiones de UK. Sin embargo, inicialmente se muestra cómo rastrear puntos geográficos marginados/ignorados y, en general, cómo tratar los valores desconocidos por Tableau al ser arrastrados a una _Worksheet_. Adicionalmente, se pone en práctica las funciones de Agregación de tipo _Conteo_ y se deja claro las diferencias entre Recuento (Distintos) & Recuento.

**2. Creando Cálculos de Tablas por Género**

Se muestra la necesidad de crear, en ocasiones, un _campo calculado_ que haga el **conteo total del número de registros** para un _dataset_ evaluado. También, se introduce un nuevo tipo de gráfico: **Diagrama de Sectores o Gráfico Circular**, éstos se pueden generar de forma manual o automática. Adicionalmente, se muestra cómo puede lograr que los datos representados en su gráfico circular guarden la proporcionalidad consistente para cada grupo o porción evaluada, esto se logra mediante la introducción de una nueva _marca_ abordada en Tableau: la _marca_ **Ángulo**. Finalmente, se enseña cómo se elabora un **Cálculo de Tablas Rápido** al mostrar cómo convertir valores absolutos en valores relativos (porcentuales) cuando se pretende ver la proporción de cada grupo o nivel sobre el total de una categoría evaluada (esto, también, se pone en práctica extendidamente sobre los gráficos de tipo 'torta'). En resumen, este apartado continua trabajando la segmentación demográfica al categorizar a los clientes por género sexual mediante un gráfico circular. 

**3. Agrupaciones (Bins) & Distribuciones por Edad**

Se resalta la importancia y necesidad de uso de diagramas de barras en _Agrupaciones_ de Tableau. También se recuerda que existen casos en los que se requiere convertir una variable de tipo _medida_ a una variable de tipo _dimensión_, como por ejemplo el campo _Age_, para poder hacer nuestras agrupaciones o crear _Campos Agrupados_. Finalmente, se pone en práctica el concepto de **Agrupación (Bin)** sobre una nueva variable de tipo categórica o _dimensión_, _Age_, que se encargará de hacer distribuciones por edad mediante el uso de intervalos. El anterior procedimiento lo haremos también con el campo _Balance_ que terminará convirtiéndose en un campo agrupado. Posteriormente abordamos la importancia de los **Parámetros** y su uso práctico en Agrupaciones, se definen las propiedades de un parámetro y se asignan parámetros definidos a los campos agrupados **Balance (Agrupación) & Age (Agrupación)** para tener un mayor control y flexibilidad sobre ellos.

**4. Uso de Diagramas de Árbol**

Esto es una clase sencilla, pero no menos importante. Aquí se muestra cómo visualizar un diagrama de Árbol y se recuerda la importancia de su uso cuando se pretende analizar, visualmente, la proporción de tres o más de tres categorias sobre el total de una _dimensión_ que las contiene; es decir, este diagrama lo que hará es mostrar proporcionalmente áreas, en formas de rectángulos, a cada una de las categorías propias del campo categórico, o _dimensión_, que está siendo representado visualmente. Cada categoría evaluada asumiría un rectangulo dentro del gráfico de Arbol.  

**5. Creando un Dashboard de Segmentación de Clientes**

El dashboard de segmentación de clientes (o de cualquier _entidad_) nos permite visualizar, en un solo lugar, todas las categorías que fueron evaluadas de forma independiente pero que pertenecen a un mismo _Objeto_: esto nos permite realizar un análisis más completo y consistente al poder generar un mayor volumen de información, bastente útil para todas las partes interesadas. 
