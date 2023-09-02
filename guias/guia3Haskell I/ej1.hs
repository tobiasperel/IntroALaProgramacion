
f :: Int -> Int
f n 
    |n ==1 = 8 --si n es igual a 1 devuelve 8
    |n==4 = 131 --si n es igual a 4 devuelve 131
    |n==16 = 16 --si n es igual a 16 devuelve 16
    |otherwise =  error "Entrada no válida funcion f" --si no es ninguna de las anteriores devuelve error

g:: Int -> Int
g n 
    |n ==8 = 8 --si n es igual a 1 devuelve 8
    |n==16 = 4 --si n es igual a 4 devuelve 131
    |n==131 = 1 --si n es igual a 16 devuelve 16
    |otherwise =  error "entrada no válida" --si no es ninguna de las anteriores devuelve error

k = f.g --composición de funciones  primero hace la funcion g y luego la f
h = g.f --composición de funciones primero hace la funcion f y luego la g

