import Distribution.Simple.Setup (falseArg)
--ej1.1
longitud :: [t] -> Integer -- [1, 2, 3] 
longitud [] = 0
longitud (x:xs) = 1 + longitud xs -- longitud [1,2,3] = 1 + longitud [2,3] = 1 + 1 + longitud [3] = 1 + 1 + 1 + longitud [] = 1 + 1 + 1 + 0 = 3

--ej1.2
ultimo :: [t] -> t
ultimo (x:xs) | longitud (x:xs) == 1 = x -- si la longitud de la lista es 1, entonces el ultimo elemento es el primero
              | otherwise = ultimo xs
--ej1.3
principio :: [t] -> [t] -- saca el ultimo elemento de la lista
principio (x:xs) 
    | longitud (x:xs) == 1 = []            
    | otherwise = x : principio xs

--ej1.4
reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x] -- [1,2,3] = [2,3] ++ [1] = [3] ++ [2] ++ [1] = [3,2,1]

--ej 2.1

pertenece :: Eq t => t -> [t] -> Bool -- usando pattern matching
pertenece _ [] = False
pertenece a (x:xs) = a == x || pertenece a xs -- si el elemento es igual al primero o esta en el resto de la lista
--2.2
todosIguales :: (Eq t) => [t] -> Bool
todosIguales (x:xs)
    |longitud xs == 0 = True
    | x/= head xs = False
    |otherwise = todosIguales xs

--2.3
todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos (x:xs)
    | tail xs == [] = True
    |x == head xs = False
    |otherwise = todosDistintos xs
