library(nycflights13)
library(tidyverse)

flights_x <- flights

#Ejercicio 5.2.4 Item 1
Arrival_delay <-
  filter(flights_x,
         arr_delay>=(60*2)) #filtramos los vuelos con una duración superior a 2 horas, en minutos
Arrival_delay <-
  arrange(Arrival_delay,
          desc(arr_delay)) # Ordenamos los datos de manera descendente por la columna arrival delay

#Ejercicio 5.2.4 Item 2
IAH_HOU <- filter(Arrival_delay,
                  dest=="HOU"|dest=="IAH")
IAH_HOU <- arrange(IAH_HOU,
                   desc(dest),arr_delay) # Ordenamos los datos de manera descendente por la columna destino y arrival delay
