medioFact :: Integer ->Integer
medioFact n
    | n<0 = error "No existe el factorial de un numero negativo"
    | n == 0 = 1
    | n == 1 = 1
    |otherwise = n *medioFact(n-2)