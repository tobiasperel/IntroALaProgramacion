
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

--2.7
eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos [x] = [x]

eliminarRepetidos[x,y]
    | x==y = [x]
    | otherwise = [x,y]

eliminarRepetidos (x:xs)
    | otherwise = [x] ++ eliminarRepetidos (quitarTodos x xs) 

--2.8 

mismoElementos :: (Eq t) => [t] -> [t] -> Bool
mismoElementos [] [] = True
mismoElementos lista1 lista2 
    |longitud (eliminarRepetidos(lista1) ) /=  longitud (eliminarRepetidos(lista2) ) = False
    |otherwise = mismoElementosAux (eliminarRepetidos(lista1))  (eliminarRepetidos(lista2) )

mismoElementosAux :: (Eq t)  => [t] -> [t] -> Bool
mismoElementosAux (x:xs) lista 
    |longitud(x:xs) == 1 && pertenece x lista = True
    |longitud(x:xs) == 1 = False
    | pertenece x lista = mismoElementosAux xs lista 
    | otherwise = False     


--2.9

capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua (x:xs)
    |reverso ( x:xs) == (x:xs) =True 
    |otherwise = False

--3.1

sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria [x] = x
sumatoria (x:xs)
    |otherwise = x + sumatoria xs

--3.2
productoria :: [Integer] -> Integer
productoria [] = 1
productoria [x] = x
productoria (x:xs)
    |otherwise = x * productoria xs

--3.3

maximo :: [Integer] -> Integer
maximo [] = 0
maximo [x] = x
maximo (x:xs) = maximoAux x xs 

maximoAux :: Integer -> [Integer] -> Integer
maximoAux a [] = a
maximoAux a (x:xs)
    |a >= x = maximoAux a xs
    |a < x = maximoAux x xs

--3.4

sumarN :: Integer -> [Integer] -> [Integer]
sumarN n [] = []
sumarN n [x] = [n+x]
sumarN n (x:xs) 
    |otherwise = [x+n] ++ sumarN n (xs)

--3.5
sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [] = []
sumarElPrimero [x] = [x+x]
sumarElPrimero (x : xs)
    |otherwise =  [x+x] ++  sumarN x (xs)

--3.6

sumarElUltimo ::[Integer] -> [Integer]
sumarElUltimo [] = []
sumarElUltimo [x] = [x+x]
sumarElUltimo (a)   
    | otherwise = sumarN (ultimo a) a

--3.7

pares :: [Integer] -> [Integer]
pares [] = []
pares x
    | longitud (x) == 1 && mod (head x) 2 == 0 = x
    | longitud (x) == 1 && mod (head x) 2 /= 0 = []

pares (x:xs)
    | mod x 2 == 0 = [x] ++ pares (xs)
    | mod x 2 /= 0 = pares (xs)

--3.8
multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN n [] = []
multiplosDeN n x
    | longitud (x) == 1 && mod (head x) n == 0 = x
    | longitud (x) == 1 && mod (head x) n /= 0 = []

multiplosDeN n  (x:xs)
    | mod x n == 0 = [x] ++ multiplosDeN n (xs)
    | mod x n /= 0 = multiplosDeN n (xs)


minimo :: [Integer] -> Integer
minimo [] = 0
minimo [x] = x
minimo (x:xs) = minimoAux x xs 

minimoAux :: Integer -> [Integer] -> Integer
minimoAux a [] = a
minimoAux a (x:xs)
    |a <= x = minimoAux a xs
    |a > x = minimoAux x xs


--3.9
ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar [x] = ordenar [x]
ordenar (x:xs)
    | x == minimo (x:xs) = [x] ++ ordenar xs
    | otherwise = ordenar (xs ++ [x])

--4.1

sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos (x:xs)
    | longitud (x:xs) == 1 && x == ' ' = []
    | longitud (x:xs) == 1 && x /= ' ' = [x]  
    | x == ' ' = sacarBlancosRepetidos(xs)
    |otherwise = [x] ++ sacarBlancosRepetidos(xs)  

--4.2 

contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras (x:xs)
    |otherwise = 1+ contarPalabras(xs)

--4.3 que dada una lista de chars arme una lista de string donde cada elemento de la lista sea una palabra de la lista original

palabra :: [Char] -> [Char]
palabra [] = []
palabra (x:xs)
    | longitud (x:xs) == 1 && x == ' ' = []
    | longitud (x:xs) == 1 && x /= ' ' = [x]  
    | x == ' ' = [] 
    |otherwise = [x] ++ palabra(xs)

-- 
-- palabraMasLarga :: [Char] -> [Char]

palabraMasLargaAux :: [Char] -> [([Char],Integer)]
palabraMasLargaAux [] = [("",0)]

palabraMasLargaAux (x: xs) 
    |otherwise = 

--5.1

-- sumaAcumulada :: (Num t) => [t] -> [t]
-- sumaAcumulada [] = []
-- sumaAcumulada (x:xs)
--     | longitud (x:xs) == 1 = [x]
--     | otherwise = [x] +


