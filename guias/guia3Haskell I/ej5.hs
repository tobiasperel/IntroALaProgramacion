f :: Int -> Int
f n 
    |n <=7 = n*n
    |n > 7 = 2 * n-1
    |otherwise =  error "Entrada no válida funcion f" --si no es ninguna de las anteriores devuelve error

g:: Int -> Int
g n =
    if n `mod` 2 == 0
        then n `div` 2
        else 3 * n + 1

todosMenores :: (Int, Int, Int) ->Bool
todosMenores (a, b, c) = 
    if f a > g a && f b > g b && f c > g c
        then True
        else False