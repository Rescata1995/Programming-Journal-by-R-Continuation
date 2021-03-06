Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "A�o")


#Retomemos una visualizaci�n del pasado: Nuestro Histograma

h <- ggplot(data=Datos, aes(x=Presupuesto_Millones))

capas <- h + geom_histogram(binwidth = 10, aes(fill=Genero), color="Black")


# 1. Agregando Etiquetas de los Ejes

capas + 
  xlab("Presupuesto") +
  ylab("N�mero de Peliculas") +
  ggtitle("Distribuci�n del Presupuesto en Pel�culas") +
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
Funciones & Par�metros de nuestra capa de Temas (Referencias)

  1. Funci�n 'xlab()'

Con la funci�n 'xlab()' podemos pasarle una etiqueta a nuestro
eje de las X.


  2. Funci�n 'ylab()'

Con la funci�n 'ylab()' podemos pasarle una etiqueta a nuestro
eje de las Y.


  3. Funci�n + Funci�n 'theme(axis.title.x=element_text()'
  
Modifica el texto del t�tulo del eje X en funci�n a definir
un formato personalizado, por medio de par�metros, para �l.

Par�metros que recibe: 'color', 'size'... 


  4. Funci�n + Funci�n 'theme(axis.title.y=element_text()'
  
Modifica el texto del t�tulo del eje Y en funci�n a definir
un formato personalizado, por medio de par�metros, para �l.

Par�metros que recibe: 'color', 'size'... 


  5. Funci�n + Funci�n 'theme(axis.text.x=element_text()'
  
Modifica las coordenadas del eje X en funci�n a definir
un formato personalizado, por medio de par�metros, para ellas.

Par�metros que recibe: 'color', 'size'... 


  6. Funci�n + Funci�n 'theme(axis.text.y=element_text()'
  
Modifica las coordenadas del eje Y en funci�n a definir
un formato personalizado, por medio de par�metros, para ellas.

Par�metros que recibe: 'color', 'size'... 


  7. Funci�n + Funci�n 'theme(legend.title = element_text())'

Modifica el t�tulo de la leyenda en funci�n a definir un 
formato personalizado, por medio de par�metros, para �l.

Par�metros que recibe: 'color', 'size'... 


  8. Funci�n + Funci�n 'theme(legend.text = element_text())'

Modifica el texto de la leyenda en funci�n a definir un 
formato personalizado, por medio de par�metros, para �l.

Par�metros que recibe: 'color', 'size'... 


  9. Funci�n 'theme(legend.position=c())'

Modifica la posici�n de la leyenda pasando los l�mites inferior 
& superior mediante el uso de vectores; donde 'c(1,1)' posiciona 
la leyenda en la esquina superior derecha, 'c(0,0)' posiciona la 
leyenda en la esquina inferior izquierda, 'c(1,0)' posiciona la 
leyenda en la esquina inferior derecha & 'c(0,1)' posiciona la 
leyenda en la esquina superior izquierda.

Trate de definir siempre un punto de ancla para su leyenda con 
la funci�n: 'legend.justification=c()'; su l�gica para definir 
un punto de ancla es la misma de 'legend.position=c()'


  10. Funci�n 'ggtitle()'

Define el t�tulo de nuestra visualizaci�n, este t�tulo
se pasa entre comillas.


  11. Funci�n + Funci�n 'theme(plot.title = element_text())'

Modifica el t�tulo de nuestra visualizaci�n en funci�n a definir
un formato personalizado, por medio de par�metros, para �l.

Par�metros que recibe: 'color', 'size', 'hjust'... 

"

"
EXTRA

'hjust' determina en qu� posici�n se encuentra el t�tulo
de su visualizaci�n horizontalmente; donde 0 indica que
la posici�n de su t�tulo se encuentra al extremo m�s 
izquierdo de su visualizaci�n & 1 indica que la posici�n
de su t�tulo se encuentra al extremo m�s derecho de la 
misma.

"
