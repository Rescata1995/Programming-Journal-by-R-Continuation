_Este README.md está completamente sincronizado con el documento "Uniendo y Combinando Datos & Gráficos de Doble Eje" situado en este mismo directorio. La documentación del archivo Word toca a detalle toda la teoría y práctica, abordada por el curso, e incluye también un panel de navegación para una mejor experiencia de aprendisaje y recordación de temas vistos a futuro._

**Sección 4; Uniendo y Combinando Datos & Gráficos de Doble Eje.**

En esta sección estaremos trabajando con los datasets 'Airline-Comparison', 'AmazingMartEU2' & 'Brazilian-E-commerce-Dataset'; con los cuales se pretende poner en práctica, desde Tableau, la unión y la combinación de datos y, adicionalmente, los gráficos de doble eje; en contexto, se pretende ver cómo están conectadas entre sí las diferentes fuentes de datos y aprender a trabajar con ellas al unirlas.

En Tableau existen dos formas de conectar fuentes de datos: **Join & Blend de Datos.** La idea es saber cómo funcionan estas formas de conexión de datos y, especialmente, cuándo debemos recurrir a un _Join_ o a un _Blend_ de datos. En cuanto a _Joins_, propiamente, se abordarán conceptos fundamentales para entender cualquier tipo de _Join_ en Tableau: _LEFT, RIGHT, INNER & OUTER_; al igual, se pretende evidenciar cuál sería el tratamiento adecuado cuando hay valores duplicados en un _Join_ o cuando hay que hacer un _Join_ con múltiples campos. Posteriormente se hablará de las diferencias puntuales que existen entre los _Blends_ & los _Joins_; en cuanto a _Blends_, nos interesa saber cómo funcionan los _Blends_, qué hacen en Tableau, cómo envían consultas a los datos y, finalmente, cómo _agregan_ los datos para terminar haciendo un _Join_.

**Dos cosas adicionales no menos importantes: Primero.** Aprenderemos a crear un gráfico de doble eje; por ejemplo, saber cuando usar un gráfico superpuesto sobre otro en vez de tener dos gráficos por separado y, poder así, presentar gráficos de una forma más compacta y visual para facilitar comparaciones. **Segundo.** Aprenderemos a crear campos calculados en un _Blend_.

**1. Profundización a _Joins_: Múltiples Campos**

Continuamos abordando el concepto de _Joins_; especialmente se aborda el escenario en el que se requiere el uso de _múltiples campos_ para lograr una unión entre tablas; es decir, cómo y porqué en ciertos escenarios se requiere el uso de múltiples campos para lograr una **unión limpia y consistente** entre dos o más de dos tablas: se intentará resolver esta duda mediante un caso simulado.
