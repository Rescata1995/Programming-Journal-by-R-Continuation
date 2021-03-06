**En esta sección definimos:**

**1.** Se hace la presentación inicial del proyecto con el que estaremos trabajando en esta sección; en concreto, se pretende crear visualizaciones avanzadas para el _dataframe_ 'Ratings+Peliculas' que evalúa _ratings_ de películas entre el año 2007 y 2011. Todas estas visualizaciones se correrán con la función principal del paquete de _R_ **GGPlot2**, que también se le llama, **'GGPlot2'**; todo tipo de diagramas & gráficos, de mayor complejidad, serán visualizados.

**Al grano, la idea es la siguiente:** Te han contactado como analista de datos por una página web de críticas de películas; están escribiendo un artículo donde analizan los ratings de los críticos y de la audiencia, así como los presupuestos para las películas de los años 2007-2011. Se te ha requerido que veas los datos y que generes 5 gráficas que revelen una historia de los datos. Adicionalmente, es preciso construir un gráfico adicional que sea de tipo **'Series de tiempo'**; más puntualmente, se requiere un diagrama que muestre cómo ha ido evolucionando, a través de los años, la correlación entre los _ratings_ de la audiencia y los _ratings_ de los críticos, por genero.

**2.** Se habla sobre el concepto de la **'Gramática de gráficos'** y la importancia de hacer uso de sus capas o elementos para poder representar una correcta visualización bidimensional de nuestros datos. Las capas o **elementos fundamentales** son: Capa de datos, Capa de las Estéticas y Capa de las Geometrías & las capas o **elementos adicionales u opcionales** son: Capa de la Estadística, Capa de las Facetas, Capa de las Coordenadas y la Capa del Tema. 

**3.** Se profundiza sobre los tipos de dato **'Factor'** y sus _levels_ & se da a conocer la función que tiene la facultad de poder hacer conversiones de un tipo de dato a otro (transformación de datos): las funciones tipo 'as. ...'. Al igual, se le saca provecho a las funciones **'summary()' & 'str()'** como mecanismo para conocer la estructura & tipo de dato de cada campo de su _dataset_. Se hace la recomendación, también, de que los campos que guarden _fechas_ sean tratados como campos con tipo de dato 'factor' (si es necesario proceder con una conversión, proceda). **Extra:** Si de un _dataset_ importado los nombres de las columnas hacen uso de símbolos, lo ideal es reasignarle nuevos nombres por medio de la función **'colnames()'**.

**4.** Se introduce la función **'ggplot()'** y a su parámetro preferencial 'data'. Adicionalmente, se introduce la Capa de las Estéticas y a su función **'aes()'**, que es de utilidad para el _Mapping de datos_. 'aes()', adicionalmente, puede recibir varios parámetros como: **'color', 'size', 'x', 'y'**, ... Sin embargo 'color' & 'size', como otros parámetros de las estéticas, y especialmente en los casos de _'Setting de datos'_, pueden ser definidos directamente sobre la función de 'ggplot()'; sin asistencia de la función 'aes()'. Por último, se introduce la Capa de las Geometrías y a las funciones tipo 'geom_ ...'.

**5.** La asignación de 'ggplot' a un Objeto. Se introduce el concepto de **'Graficar con Capas Geométricas'**: sobre cómo configurar la visualización de capas geométricas sobre un Objeto & sobre cómo se asignan múltiples capas geométricas al objeto en cuestión; especial cuidado con esta última, pues, existe la **'Superposición de capas Geométricas en un Objeto'**; es decir, cualquiera que sea el orden en el que usted llame a sus capas geométricas, debe saber que las últimas llamadas se superpondrán sobre las primeras. Por último se introducen dos tipos de funciones, de la capa de las Geometrías, para representar dos tipos de gráficos diferentes: **'geom_point()' & 'geom_line()'**. 

**6.** Se aborda el concepto de la **'Sobreescritura de estéticas'** y se responde a la pregunta: _¿En qué condiciones vale la pena sobre-escribir estéticas?_

**7.** Se evalúan las diferencias, en código, de cómo establecer un **'Mapping vs Setting'** de datos.

**8.** Se introduce una nueva función de la capa de las geometrías, **'geom_histogram()'**, y a sus parámetros. 'geom_histogram()' tiene la facultad de generar _Histogramas_ que nos permiten evaluar, analíticamente, el comportamiento de una única variable. Alguno de los parámetros más usados de 'geom_histogram()' son: **'binwidth', 'fill' & 'color'**.

**9.** Se enseñan algunas formas o _tips_ recomendados para trabajar con sus capas fundamentales; es decir, con la capa de los datos, la capa de las estéticas & la capa de las geometrías. Todo al final depende de su necesidad.

**10.** Se introduce una nueva función de la capa de las geometrías, **'geom_smooth()'**, y a sus parámetros. 
'geom_smooth' es una función del tipo 'geom_ ...' que sirve como recurso para observar tendencias, y eventuales correlaciones, entre sus variables por medio de un tipo de gráfico que representa _bandas y medías moviles_. Adicionalmente, se explica cómo interpretar la relación que hay entre las bandas con las medias moviles (en caso que haga uso de ambos recursos). Finalmente, se señala la _camaradería_ que hay entre la función 'geom_smooth()', de la capa de las Geometrías, con los parámetros de la capa de las Estéticas.

**11.** Se introduce la función principal de la capa de las facetas, **'facet_grid()'**, y la utilidad de los símbolos **'~.' & '.~'** o el caso particular **'facet_grid(Campo1~Campo2)'** con ejemplo incluido. Finalmente, se recuerda la importancia de la sincronización de los Ejes & se introduce el parámetro **'scales'** de la función 'facet_grid()'.

**12.** Se introduce la función principal de la capa de las coordenadas, **'coord_cartesian()'**, y a sus parámetros **'ylim()' y 'xlim()'**; muy prácticos para hacer _'zoom in'_ y/o _'zoom out'_ sobre, por ejemplo, sus _facetas_.

