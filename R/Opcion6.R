library(nycflights13)
library(tidyverse)
flights_x <- flights

#Ejercicio 5.7.1 Item 2

# Calcular la proporción de vuelos con retraso para cada avión (tailnum)
tailnum_retraso <- flights_x %>%
  group_by(tailnum) %>%
  summarize(
    total_flights = n(),
    delayed_flights = sum(arr_delay > 0, na.rm = TRUE),
    on_time_record = delayed_flights / total_flights
  ) %>%
  filter(!is.na(on_time_record)) %>%  # Filtrar resultados con valores no nulos
  arrange(on_time_record) %>%
  head(1)

# Imprimir el avión con el peor historial de puntualidad
cat("El avión con el peor historial de puntualidad es:", tailnum_retraso$tailnum, "\n")
cat("Proporción de vuelos con retraso:", tailnum_retraso$on_time_record, "\n")
