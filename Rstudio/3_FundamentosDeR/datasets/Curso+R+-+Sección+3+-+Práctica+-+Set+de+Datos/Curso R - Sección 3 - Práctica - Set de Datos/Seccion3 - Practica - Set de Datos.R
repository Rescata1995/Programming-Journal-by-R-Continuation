#Data
ingresos <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
gastos <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

"
NOTA: Tenga en cuenta las siguientes funciones: 
'round()', 'mean()', 'max()', 'min()'.

Si no sabe qué hacen, puede asistirse con '?'.
"

"
Ejercicio.

Escenario: Eres un Data Scientist trabajando para una
empresa que da consultoría. Uno de tus compañeros del
departamento de Auditorías te ha pedido que le ayudes
a evaluar los estados financieros de la Organización
X.

Te han proporcionado dos vectores de datos: 
Ingresos mensuales y Gastos mensuales del año fiscal
en cuestión. Tu trabajo es obtener las siguientes
métricas:

1. Utilidad para cada mes.
2. Utilidad después de Impuestos (UDI) para cada mes
(la tasa es del 30%).
3. Margen de Utilidad para cada mes (UDI/Ingresos).
4. Buenos meses - UDI > que la media de UDI.
5. Malos meses - UDI < que la media de UDI.
6. Mejor mes - mes con el máximo valor para UDI.
7. Peor mes - mes con el mínimo valor para UDI.

"
#Resolution

Utilidad <- ingresos - gastos

Taxes <- Utilidad * 0.3
UDI <- round(Utilidad - Taxes)


"
Cálculo del margen de UDI se presenta como Vectores
"

MargenU <- round((UDI/ingresos * 100), 2)
MargenU


Promedio_UDI <- round(mean(UDI))

for(i in 1:12){
  UDI[i]
  print(paste("UDI para el mes", i, "equivale a:", UDI[i]))
  
  if (UDI[i] > Promedio_UDI){
    print(paste("Mes", i, "Aprobado"))
  }
  else{
    print(paste("Mes", i, "Desaprobado"))
  }
  
  writeLines("\n")
}

print(paste("Recuerde. La Media de UDI equivale a: ", Promedio_UDI))

MejorMes <- round(max(UDI))
PeorMes <- round(min(UDI))

for(i in 1:12){
  UDI[i]
  
  if(UDI[i] == MejorMes){
    print(paste("El mes", i, "fue el mejor de todos. Con un UDI de:", MejorMes))
  }
  
  if(UDI[i] == PeorMes){
    print(paste("El mes", i, "fue el peor de todos. Con un UDI de:", PeorMes))
  }
}
