prodInt :: (Int, Int) -> (Int, Int) -> Int
prodInt (a, b) (c, d) = a * c + b * d

todoMenor :: (Int, Int) -> (Int, Int) -> Bool
todoMenor (a, b) (c, d) = a < c && b < d

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (a, b) (c, d) = sqrt(a-c)^2 + (b-d)^2

sumaTerna :: (Int, Int, Int) -> Int
sumaTerna (a, b, c) = a + b + c

sumarSoloMultiplos :: (Int, Int, Int) -> Int -> Int
sumarSoloMultiplos (a, b, c) n =  sum[x | x <- [a, b, c], mod x n == 0] -- x es un elemento de la lista [a,b,c] y x esta en la sum si mod x n == 0

posPrimerPar :: (Int, Int, Int) -> Int
posPrimerPar (a, b, c)
    | mod a 2 == 0 = 1
    | mod b 2 == 0 = 2
    | mod c 2 == 0 = 3
    | otherwise = 4

crearPar :: a -> b -> (a, b)
crearPar a b = (a, b)

invertir :: (a, b) -> (b, a)
invertir (a, b) = (b, a)