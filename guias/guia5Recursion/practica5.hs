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
    |longitud xs == 0 = True
    |pertenece x xs = False -- se fija si el elemento x esta en algun lugar de toda la lista
    |otherwise = todosDistintos xs

--2.4
hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos(x:xs)
    |longitud xs == 0 = False
    |pertenece x xs = True
    |otherwise = hayRepetidos xs

--2.5 
quitar :: (Eq t) => t -> [t] -> [t]
quitar a [] = []
quitar a  (x:xs)
    |longitud([x]++(xs) ) == 1 && x/=a = [x]
    |longitud([x]++(xs) )== 1 && x==a = []
    |a == x = xs 
    |otherwise = [x] ++ (quitar a xs) 
--2.6
quitarTodos :: (Eq t ) => t -> [t] -> [t]
quitarTodos a [] = []
quitarTodos a (x:xs)
    |longitud([x]++(xs) ) == 1 && x/=a = [x]
    |longitud([x]++(xs) )== 1 && x==a = []
    |a == x =  (quitarTodos a xs)
    |otherwise = [x] ++ (quitarTodos a xs)

--2.9

capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua (x:xs)
    |reverso ( x:xs) == (x:xs) =True 
    |otherwise = False
--3


sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria [x] = x
sumatoria (x:xs)
    |otherwise = x + sumatoria xs

productoria :: [Integer] -> Integer
productoria [] = 1
productoria [x] = x
productoria (x:xs)
    |otherwise = x * productoria xs
