import System.Win32 (COORD(yPos))
--calcular numero abusoluto

absoluto :: Int -> Int
absoluto n 
    |n >= 0 = n
    |n<0 = -n
    |otherwise = error "entrada no válida"

maximoabsoluto :: Int -> Int -> Int
maximoabsoluto x y 
    | absoluto x >= absoluto y = absoluto x
    | absoluto x < absoluto y = absoluto y
    | otherwise = error "entrada no válida"

maximo3 :: Int -> Int -> Int -> Int
maximo3 x y z 
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | z >= x && z >= y = z
    | otherwise = error "entrada no válida"

algunoEs0 :: Float -> Float -> Bool
algunoEs0 x y 
    | x == 0 = True
    | y == 0 = True
    | otherwise = False 

ambosSon0 :: Float -> Float -> Bool
ambosSon0 x y 
    | x == 0 && y == 0 = True
    | otherwise = False

mismoIntervalo :: Float -> Float  -> Bool
mismoIntervalo x y
    | x<=3 && y<=3 = True
    | x>3 && x<=7 && y>3 && y<=7 = True
    | x>7 && y>7 = True
    | otherwise = False

sumaDistintos :: Int -> Int -> Int -> Int
sumaDistintos x y z 
    | x /= y && x /= z && y /= z = x+y+z
    | otherwise = error " no puede haber elementos repetidos"

esMultiploDe :: Int -> Int -> Bool --dados dos numeros naturales, decidir si el primero es multiplo del segundo.
esMultiploDe x y 
    | mod x y == 0 = True -- x modulo y = 5, 3 mod 2 = 1 aca se escribe primero el modulo
    | otherwise = False

digitoUnidades :: Int -> Int
digitoUnidades x = mod x 10

digitoDecenas :: Int -> Int
digitoDecenas x =  mod x 100