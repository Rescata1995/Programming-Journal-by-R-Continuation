Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


#Retomemos una visualización del pasado: Nuestro Histograma

h <- ggplot(data=Datos, aes(x=Presupuesto_Millones))

capas <- h + geom_histogram(binwidth = 10, aes(fill=Genero), color="Black")


# 1. Agregando Etiquetas de los Ejes

capas + 
  xlab("Presupuesto") +
  ylab("Número de Peliculas") +
  ggtitle("Distribución del Presupuesto en Películas") +
  theme(
    
    axis.title.x=element_text(color="Black", size=14),
    axis.title.y=element_text(color="Black", size=14),
    
    axis.text.x=element_text(size=10),
    axis.text.y=element_text(size=10),
    
    legend.title = element_text(size=15),
    legend.text = element_text(size=12),
    legend.position = c(0.99,0.99),
    legend.justification = c(1,1),
    plot.title=element_text(color="Darkblue", size=13,
                            hjust=0.5)
    ) 


"
Funciones & Parámetros de nuestra capa de Temas (Referencias)

  1. Función 'xlab()'

Con la función 'xlab()' podemos pasarle una etiqueta a nuestro
eje de las X.


  2. Función 'ylab()'

Con la función 'ylab()' podemos pasarle una etiqueta a nuestro
eje de las Y.


  3. Función + Función 'theme(axis.title.x=element_text()'
  
Modifica el texto del título del eje X en función a definir
un formato personalizado, por medio de parámetros, para él.

Parámetros que recibe: 'color', 'size'... 


  4. Función + Función 'theme(axis.title.y=element_text()'
  
Modifica el texto del título del eje Y en función a definir
un formato personalizado, por medio de parámetros, para él.

Parámetros que recibe: 'color', 'size'... 


  5. Función + Función 'theme(axis.text.x=element_text()'
  
Modifica las coordenadas del eje X en función a definir
un formato personalizado, por medio de parámetros, para ellas.

Parámetros que recibe: 'color', 'size'... 


  6. Función + Función 'theme(axis.text.y=element_text()'
  
Modifica las coordenadas del eje Y en función a definir
un formato personalizado, por medio de parámetros, para ellas.

Parámetros que recibe: 'color', 'size'... 


  7. Función + Función 'theme(legend.title = element_text())'

Modifica el título de la leyenda en función a definir un 
formato personalizado, por medio de parámetros, para él.

Parámetros que recibe: 'color', 'size'... 


  8. Función + Función 'theme(legend.text = element_text())'

Modifica el texto de la leyenda en función a definir un 
formato personalizado, por medio de parámetros, para él.

Parámetros que recibe: 'color', 'size'... 


  9. Función 'theme(legend.position=c())'

Modifica la posición de la leyenda pasando los límites inferior 
& superior mediante el uso de vectores; donde 'c(1,1)' posiciona 
la leyenda en la esquina superior derecha, 'c(0,0)' posiciona la 
leyenda en la esquina inferior izquierda, 'c(1,0)' posiciona la 
leyenda en la esquina inferior derecha & 'c(0,1)' posiciona la 
leyenda en la esquina superior izquierda.

Trate de definir siempre un punto de ancla para su leyenda con 
la función: 'legend.justification=c()'; su lógica para definir 
un punto de ancla es la misma de 'legend.position=c()'


  10. Función 'ggtitle()'

Define el título de nuestra visualización, este título
se pasa entre comillas.


  11. Función + Función 'theme(plot.title = element_text())'

Modifica el título de nuestra visualización en función a definir
un formato personalizado, por medio de parámetros, para él.

Parámetros que recibe: 'color', 'size', 'hjust'... 

"

"
EXTRA

'hjust' determina en qué posición se encuentra el título
de su visualización horizontalmente; donde 0 indica que
la posición de su título se encuentra al extremo más 
izquierdo de su visualización & 1 indica que la posición
de su título se encuentra al extremo más derecho de la 
misma.

"
