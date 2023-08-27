library(nycflights13)
library(tidyverse)
flights_x <- flights

#Ejercicio 5.5.2 items 1 Actualmente dep_timey sched_dep_time son cómodos de ver, pero difíciles de calcular porque en realidad no son números continuos. Conviértalos a una representación más conveniente del número de minutos desde la medianoche.

minutos_medianoche <- function (hora,minuto)
{return(hora*60+minuto)
}
mutate1 <- flights_x %>%
  mutate(
    dep_time = minutos_medianoche(dep_time %/% 100, dep_time %% 100),
    sched_dep_time = minutos_medianoche (sched_dep_time %/% 100, sched_dep_time %% 100)
  )

#Ejercicio 5.5.2 Item 2 Comparar air_timecon arr_time - dep_time. Que esperas ver? ¿Que ves? ¿Qué necesitas hacer para solucionarlo?

# Vamos a calcular la diferencia entre arr_time y dep_time, restando dichos valores
mutate2 <- flights_x %>%
  mutate(dur_vuelo= arr_time - dep_time)

# Comparar air_time con flight_duration
Comparar <- mutate2 %>%
  select(air_time,dur_vuelo)

# Imprimir las primeras filas de la comparación
head(Comparar)
