todosDigitosIguales :: Integer -> Bool
todosDigitosIguales n 
    | n < 0 = error "No se admiten numeros negativos" 
    |n <10 = True
    |otherwise = mod n 10 == mod (div n 10) 10 && todosDigitosIguales (div n 10)
