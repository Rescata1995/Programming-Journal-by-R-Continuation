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
  theme(
    axis.title.x=element_text(color="Black", size=14),
    axis.title.y=element_text(color="Black", size=14),
    
    axis.text.x=element_text(size=10),
    axis.text.y=element_text(size=10)
    
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

"
