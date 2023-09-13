fibonacci :: Integer -> Integer --dado un numero n, devuelve el n-esimo numero de fibonacci 
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci (n-1) + fibonacci (n-2)