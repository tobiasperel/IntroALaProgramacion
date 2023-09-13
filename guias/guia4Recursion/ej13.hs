f :: Integer -> Integer -> Integer -- la sumatoria desde 1  hasta n de la sumatoria desde 1 hasta m de i^j
f n m 
    |n == 0 = 0
    |otherwise = sumaInterna n m + f (n-1) m

sumaInterna n m 
    | m== 0 = 0 
    |otherwise = n^m + sumaInterna n (m-1) 