library(nycflights13)
library(tidyverse)
flights_x <- flights

#Ejercicio 5.3.1¿ Cómo podría utilizar arrange()para ordenar todos los valores que faltan al principio? (Sugerencia: use is.na()).

Arrange1 <- flights_x %>%
  arrange(is.na (dep_delay))

#Ejercicio 5.3.2 Ordenar flights para encontrar los vuelos más retrasados. Encuentra los vuelos que salieron antes.

Arrange2 <- flights_x %>%
  arrange(desc(dep_delay)) #Ordenamos los vuelos mas retrasado

Arrange3 <- flights_x %>%
  arrange(dep_time) #Ordenamos los vuelos que salieron antes

#Ejercicio 5.3.3 Ordenar flights para encontrar los vuelos más rápidos (velocidad más alta).

Arrange4 <- flights_x %>%
  arrange(desc(speed)) #Ordenamos por velocidad

#Ejercicio 5.3.4 ¿Qué vuelos viajaron más lejos? ¿Cuál viajó menos?

Arrange5 <- flights_x %>%
  arrange(desc(distance)) #Ordenamos los vuelos que viajaron mas lejos

Arrange6 <- flights_x %>%
  arrange(distance) #Ordenamos los vuelos que viajaron menos
