sumaImpares :: Integer ->Integer
sumaImpares n 
    | n <= 0 = 0
    | n == 1 =1
    | even n  = sumaImpares (n-1)
    | otherwise = n + sumaImpares (n-2)  