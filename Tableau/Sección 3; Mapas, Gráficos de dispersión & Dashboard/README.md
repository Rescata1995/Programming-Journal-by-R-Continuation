_Este README.md está completamente sincronizado con el documento "Mapas, Gráficos de dispersión & Dashboard" situado en este mismo directorio. La documentación del archivo Word toca a detalle toda la teoría y práctica, abordada por el curso, e incluye también un panel de navegación para una mejor experiencia de aprendisaje y recordación de temas vistos a futuro._

**Sección 3: Mapas, Gráficos de dispersión & Dashboard.**

En esta sección estaremos trabajando con el dataset 'P1-AmazingMartEU2', con el que se pretende introducir el tratamiento de mapas y gráficos de dispersión; en contexto, se analizarán los datos de venta para determinada tienda de Europa por medio de la creación de un mapa que pretenda evaluar su rendimiento en diferentes regiones y, adicionalmente, se creará un gráfico de dispersión para el análisis de sus clientes. Más allá de eso, quizás la parte más interesante de esta sección consistirá en la creación de nuestro primer _Dashboard_. Es preciso decir que, de momento, sólo hemos estado trabajando con _Worksheets_ todo el tiempo. Entonces, la idea es crear (ahora sí) nuestro primer _Dashboard_ donde situaremos nuestro primer mapa y gráfico de dispersión de manera conjunta, ahí juntos en ese _Dashboard_. Finalmente, la idea es construir un _Dashboard_ completamente interactivo.

**1. Relaciones vs Uniones.**

Introducción a las _Relaciones_ y _Uniones_, especialmente se muestra la manera de configurar una unión o una relación dentro de Tableau. Además de eso, se recuerda la importancia de los diagramas lógicos y físicos. Por lo pronto, a lo largo de esta sección, nos centraremos en las _Uniones_. 

**2. Uniendo Datos en Tableau.**

Se deja clara la relación que hay entre un _Join_ de SQL y una _Unión_ en Tableau. Adicionalmente, se introducen los temas de Cardinalidad & Llaves entre tablas para entender la estructura lógica con la que dos o más de dos tablas se unen.  

**3. Creando un Mapa, Trabajando con Jerarquías.**

Se introducen los campos con tipo de dato _geográfico_ y la manera en cómo se crea una Jerarquía para ellos. A partir de los campos _geográficos_, se introducen los _Mapas_ y la importancia de hacer uso de _Filtros_ & _Marcas_ dentro de ellos; pues, a priori, los _Mapas_ corren el riesgo de quedar sobrecargados con sus propios datos. Se enseña también darle una mayor personalización a la marca _Tamaños_, a configurar el tamaño de sus proporciones y el color de sus bordes. Se enseña y se calcula un _Margen de Beneficio_ que se distingue visualmente por medio de un 'Matizado de Colores' y, finalmente, se muestran las herramientas de _Zoom & Highlighting_ propias a mapas.

**4. Gráfico de Dispersión & Filtros en Worksheets.**

Se recuerda el tratamiento ideal que se le debe dar a los diferentes periodos de tiempo en una visualización (se recomienda que sean _filtrados_). Se introduce el tipo de gráfico _Nube de Puntos_ y se recuerda la importancia de excluir la agregación en campos de tipo _Medida_. Adicionalmente, se introducen los filtros 'sincronizados' (por llamarlos de alguna manera): se trata de la aplicación de las mismas condiciones de un filtro a múltiples Worksheets simultáneamente. También, dentro de la _Nube de puntos_ se emplean nuevas técnicas de las _marcas:_ _Forma_ & _Color_, y se ve en la práctica el concepto de 'Gráfico de Dispersión'. 

**5. Creación de nuestro primer Dashboard.**

Se dejan claras las diferencias técnicas entre lo que es una _Worksheet_ & un _Dashboard_, se muestra propiamente en la práctica la creación y uso de un _Dashboard_ y, finalmente, se introduce la manipulación de los _contenedores_ de leyendas y/o filtros dentro de un _dashboard_.

**6. Dashboards Interactivos.**

Se introduce el concepto de _Dashboard Interactivo_, el cual nos permite otorgar un mayor dinamismo y fluidez a nuestras visualizaciones, esto como resultado de una mejor comunicación entre las visualizaciones agrupadas dentro del dashboard en cuestión. Hay dos tipos de _Acciones_ para hacer uso de un Dashboard Interactivo: **Filtro & Resaltado.** En principio trabajamos todo lo relacionado con _filtros_: _Shortcut_ para añadirlos, fuentes de _Acción_ (Lo relacionado a _Hojas de Origen_, contrario a _Hojas de Destino_) & formas de ejecutar _Acción_: ya sea por _Selección_, por _Situar_ o mediante _Menú_.
