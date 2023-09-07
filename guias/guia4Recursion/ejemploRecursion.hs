--si uno se fija para calcular el factorial de 3 se hace 3 * la funcion factorial de 2.
factorial :: Int -> Int
factorial n 
    | n == 0 = 1
    | n > 0 = n * factorial (n-1) -- multplicacion de gauss


--usando pattern matching

factorial2 :: Int -> Int
factorial2 0 = 1
factorial2 n = n * factorial (n-1)

--es par usando recursion

esPar :: Int -> Bool
esPar n 
    | n==0 = True
    | n==1 = False
    | otherwise = esPar (n-2)