library(nycflights13)
library(tidyverse)
flights_x <- flights

#Ejercicio 5.4.1 Exercises: items 2 ¿Qué sucede si incluye el nombre de una variable varias veces en una select()llamada?

Select1 <- flights_x%>%
  select(dep_delay,dep_delay,dep_delay, dep_time)

print(Select1)

#No se repite la columna varias veces, solo la coloca una vez asi se mencione varias veces

#Ejercicio 5.4.1 Exercises: items 3 ¿ Qué hace la any_of()función? ¿Por qué podría ser útil junto con este vector?

vars <- c("year", "month", "day", "dep_delay", "arr_delay")
seleccionar_columnas <- select(flights_x, any_of(vars))

print(seleccionar_columnas)

#La función any_of() nos sirve para seleccionar columnas de un conjunto de datos que coincida con almenos uno de los nombres de columna proporcionada
#En este caso seleccionara todas las columnas en la variable flights_x con al menos uno de los nombres que se registran en la variable vars


#Ejercicio 5.4.1 Exercises: items 4

Select3 <- select(flights_x, contains("TIME"))
print(Select3)

#La función contains  seleccionar columnas cuyos nombres contienen la cadena "TIME", este comando es sensible a mayusculas y minusculas
#Para cambiar el comportamiento predeterminado y hacer que la búsqueda sea insensible a mayúsculas y minúsculas, podemos usar el comando ignore.case

options(dplyr.select_helpers = c("contains"), ignore.case = TRUE)


