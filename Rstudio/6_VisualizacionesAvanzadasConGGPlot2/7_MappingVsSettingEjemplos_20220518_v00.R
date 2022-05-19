
Datos <- read.csv(file.choose())

head(Datos)

colnames(Datos) <- c("Peliculas", "Genero", "Rating_Criticos", "Rating_Audiencia",
                     "Presupuesto_Millones", "Año")


# Mapping Vs Setting (Ejemplos)

r <- ggplot(data=Datos, aes(x=Rating_Criticos, 
                            y=Rating_Audiencia)) + geom_point()

r + geom_point()


# Mapping

r + geom_point(aes(color=Genero))

r + geom_point(aes(size=Presupuesto_Millones))

#Setting

r + geom_point(color="DarkGreen")

r + geom_point(size=10)

#ERROR

r + geom_point(aes(color="DarkGreen"))

r + geom_point(aes(size=100))
