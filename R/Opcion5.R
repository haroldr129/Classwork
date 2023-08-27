library(nycflights13)
library(tidyverse)
flights_x <- flights

# Ejercicio 5.6.7 Item 1

# 1. Media de Retraso en la Llegada
Media1 <- flights_x %>%
  summarize(Media1 = mean(arr_delay, na.rm = TRUE))


# 2. Porcentaje de Vuelos sin retraso en la llegada
Porcentaje_a_tiempo <- flights_x %>%
  summarize(Porcentaje_a_tiempo = mean(arr_delay == 0, na.rm = TRUE) * 100)


# 3. Desviación Estándar del Retraso en la Llegada
Desviacion <- flights_x %>%
  summarize(Desviacion = sd(arr_delay, na.rm = TRUE))


# 4. Porcentaje de Vuelos Tempranos vs. Tardíos
Tempranos_vs_tardios <- flights_x %>%
  summarize(
    porcentaje_temprano = mean(arr_delay < 0, na.rm = TRUE) * 100,
    porcentaje_tarde = mean(arr_delay > 0, na.rm = TRUE) * 100
  )


# 5. Mediana del Retraso en Llegada
Mediana1<- flights_x %>%
  summarize(Mediana1 = median(arr_delay, na.rm = TRUE))

# Imprimir los resultados
print("Resultados:")
print(Media1)
print(Porcentaje_a_tiempo)
print(Desviacion)
print(Tempranos_vs_tardios)
print(Mediana1)

# La importancia del retraso en la llegada versus el retraso en la salida puede depender del contexto.
# Para los pasajeros, el retraso en la llegada suele ser más importante, ya que afecta sus planes y conexiones posteriores.
# Para las aerolíneas, ambos son importantes, pero el retraso en la salida puede tener un mayor impacto en la eficiencia operativa.


