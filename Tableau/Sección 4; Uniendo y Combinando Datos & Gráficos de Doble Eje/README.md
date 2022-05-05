_Este README.md está completamente sincronizado con el documento "Uniendo y Combinando Datos & Gráficos de Doble Eje" situado en este mismo directorio. La documentación del archivo Word toca a detalle toda la teoría y práctica, abordada por el curso, e incluye también un panel de navegación para una mejor experiencia de aprendisaje y recordación de temas vistos a futuro._

**Sección 4; Uniendo y Combinando Datos & Gráficos de Doble Eje.**

En esta sección estaremos trabajando con los datasets 'Airline-Comparison', 'AmazingMartEU2' & 'Brazilian-E-commerce-Dataset'; con los cuales se pretende poner en práctica, desde Tableau, la unión y la combinación de datos y, adicionalmente, los gráficos de doble eje; en contexto, se pretende ver cómo están conectadas entre sí las diferentes fuentes de datos y aprender a trabajar con ellas al unirlas.

En Tableau existen dos formas de conectar fuentes de datos: **Join & Blend de Datos.** La idea es saber cómo funcionan estas formas de conexión de datos y, especialmente, cuándo debemos recurrir a un _Join_ o a un _Blend_ de datos. En cuanto a _Joins_, propiamente, se abordarán conceptos fundamentales para entender cualquier tipo de _Join_ en Tableau: _LEFT, RIGHT, INNER & OUTER_; al igual, se pretende evidenciar cuál sería el tratamiento adecuado cuando hay valores duplicados en un _Join_ o cuando hay que hacer un _Join_ con múltiples campos. Posteriormente se hablará de las diferencias puntuales que existen entre los _Blends_ & los _Joins_; en cuanto a _Blends_, nos interesa saber cómo funcionan los _Blends_, qué hacen en Tableau, cómo envían consultas a los datos y, finalmente, cómo _agregan_ los datos para terminar haciendo un _Join_.

**Dos cosas adicionales no menos importantes: Primero.** Aprenderemos a crear un gráfico de doble eje; por ejemplo, saber cuando usar un gráfico superpuesto sobre otro en vez de tener dos gráficos por separado y, poder así, presentar gráficos de una forma más compacta y visual para facilitar comparaciones. **Segundo.** Aprenderemos a crear campos calculados en un _Blend_.

**1. Profundización a _Joins_: Múltiples Campos**

Continuamos abordando el concepto de _Joins_; especialmente se aborda el escenario en el que se requiere el uso de _múltiples campos_ para lograr una unión entre tablas; es decir, cómo y porqué en ciertos escenarios se requiere el uso de múltiples campos para lograr una **unión limpia y consistente** entre dos o más de dos tablas: se intentará resolver esta duda mediante un caso simulado más de tipo _académico_. 

**2. _Joins_ de datos vs _Blend_ de datos**

Aquí se evidencia, por medio de la interacción directa en Tableau con tres tablas relacionadas provenientes del mismo _dataset_ 'AmazingMartEU2', la practicidad de los conceptos _Joins con Registros Duplicados_ & _Join de tablas con Múltiples Campos_ y se deja claro cuándo es necesario, e ideal para Tableau, elegir _unir_ datos por medio de un **_Join_** o por medio de un **_Blend_**; Hay dos escenarios donde, muy probablemente, tendrá que recurrir a un **_Blend_**: Cuando una tabla se vale de _múltiplos campos_ para hacer una unión con otra u otras y, más importante, cuando los conjuntos de datos que pretenda unir ni siquiera provengan de una misma fuente de datos. Próximamente, se pondrá manos a la obra para poner en práctica real lo qué es la _unión_ de datos por medio de un _**Blend**_ en Tableau. 

**3. _Blend_ de datos en _Tableau_**

Se muestra ya en la práctica, desde Tableau, cómo hacer un _Blend_ de datos. El _Blend_ se hace a partir de un nuevo _dataset_ llamado 'Airline-Comparison' que pretende evaluar el rendimiento, en términos de ingresos, de dos Aerolíneas en diferentes regiones del mundo. Adicionalmente, se especifica cómo cambia el manejo de las _Marcas_ cuando se unen varias fuentes de datos por medio de un _Blend_ y la importancia de las _Etiquetas_ en sus visualizaciones. Además, se explican las dos opciones a disposición para hacer una conexión manual entre campos y la importancia de saber distinguir entre una tabla primaria de una secundaria con un _blend_ de dos fuentes de datos; cuál es la lógica detrás de la asignación y qué tipo de _join_ se logra en su capa lógica a partir de este tipo de uniones **(Un _Blend_ por defecto es un _Left Join_)**. Al final, se hace una introducción inicial a la importancia del uso de gráficos de doble eje.

**4.	Gráficos de _Doble Eje_**

Sobre cómo se comparan, correctamente, dos variables sobre un mismo eje y la importancia de saber definir cuál sería su primera y su segunda variable. También se plantean algunos tips para procurar una visualización más limpia entre los gráficos de doble eje y la necesidad de sincronizar sus ejes posteriormente.

**5.	Crear _campos calculados_ en un Blend**

Se muestra cómo crear campos calculados en un _Blend_ y la necesidad de que nuestras fórmulas, para campos calculados, se encuentren agregadas; adicionalmente, es ideal que haya una correspondencia en el nivel de granularidad de su campo calculado con el nivel de granularidad de las demás variables evaluadas y se recuerda, de paso, la importancia del uso de etiquetas y de hacer distinciones visuales jugando con la _psicología de los colores_.

