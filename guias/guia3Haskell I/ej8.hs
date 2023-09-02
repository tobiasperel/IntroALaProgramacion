import Distribution.Simple.Setup (trueArg)
sumaUltimosDosDigitos :: Int -> Int
sumaUltimosDosDigitos n =   (mod n 100 - mod n 10)  `div` 10 + mod n 10

comparar :: Int -> Int -> Int 
comparar x y 
    | sumaUltimosDosDigitos x < sumaUltimosDosDigitos y = 1
    | sumaUltimosDosDigitos x > sumaUltimosDosDigitos y = -1
    | otherwise = 0