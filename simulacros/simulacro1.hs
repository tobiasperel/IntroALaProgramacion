import Test.HUnit
import Language.Haskell.TH (Body)

relacionesValidas :: [(String,String)]->Bool
relacionesValidas [] = True
relacionesValidas ((p1,p2):rs) 
    |relacionesValidasAux (p1,p2) rs == False = False  
    |otherwise = (relacionesValidas rs)

relacionesValidasAux :: (String,String) -> [(String,String)] -> Bool

relacionesValidasAux (p1,p2) [] 
    | p1 == p2 = False
    |otherwise = True

relacionesValidasAux (p1,p2) (r:rs)
    |(sonTuplasValidas (p1,p2) r ) == True = (relacionesValidasAux (p1,p2) rs)
    |otherwise = False

sonTuplasValidas ::  (String,String) -> (String,String) -> Bool
sonTuplasValidas (p1,p2) (p3,p4)
    |(p1,p2) == (p3,p4) = False
    |(p2,p1) == (p3,p4) = False
    | p1 ==p2 || p3 ==p4 = False
    |otherwise = True


--2

personas :: [(String,String)] -> [String]
personas [] = []
personas (x:xs) = sacarRepes (desarmarTuplas (x:xs) ) 

sacarRepes :: [(String)] -> [(String)]
sacarRepes [] = []
sacarRepes (x:xs)
    | pertenece x xs == True = sacarRepes xs
    | pertenece x xs == False = [x] ++ sacarRepes xs

desarmarTuplas :: [(String,String)] -> [String]
desarmarTuplas [] = []
desarmarTuplas ((a,b):xs)
    | otherwise =[a] ++ [b] ++ desarmarTuplas xs

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece y (x:xs)
 | y == x = True
 | otherwise = pertenece y xs 

--3 
longitud ::  (Eq t) =>  [t] -> Integer
longitud [] = 0
longitud (x:xs)
    |otherwise = 1+ longitud(xs)

amigosDe :: String -> [(String,String)] -> [String]
amigosDe nombre [] = []
amigosDe nombre ((a,b):rs) = buscarPersona nombre (sacarRepes(desarmarTuplas(amigosDeB nombre ((a,b):rs))))

amigosDeB :: String -> [(String,String)] -> [(String,String)]
amigosDeB nombre [] = []

amigosDeB nombre ((a,b):rs)
    |longitud ((a,b):rs) == 1 && (amigosAux nombre (a,b)) == True  = [(a,b)]
    |longitud ((a,b):rs) == 1  = []
    |(amigosAux nombre (a,b)) == True = [(a,b)]  ++ amigosDeB nombre rs
    |otherwise = amigosDeB nombre rs

amigosAux :: String -> (String,String) ->Bool
amigosAux nombre (a,b)
    |nombre ==a || nombre == b = True
    |otherwise = False 

buscarPersona :: (String) -> [(String)] -> [(String)]
buscarPersona nombre [] = []
buscarPersona nombre (x:xs)
    |nombre == x = xs
    |nombre /= x = [x] ++ buscarPersona nombre xs



main = runTestTT tests

tests = test [
    " relacionesValidas: una sola correcta" ~: (relacionesValidas [relacion1_2]) ~?= True,
    " relacionesValidas: una sola incorrecta" ~: (relacionesValidas [relacion1_1]) ~?= False,
    " personas: una sola relacion, 2 personas" ~: (sonIguales (personas [relacion1_2])  [usuario1, usuario2]) ~?= True,
    " personas: dos relaciones, 3 personas" ~: (sonIguales (personas [relacion1_2, relacion1_3]) [usuario1, usuario2, usuario3]) ~?= True,
     " amigosDe: una sola relacion, 1 solo amigo" ~: (amigosDe usuario1 [relacion1_2] ) ~?= [usuario2]]

-- Ejemplos

usuario1 = "Juan"
usuario2 = "Natalia"
usuario3 = "Pedro"

relacion1_2 = (usuario1, usuario2)
relacion1_1 = (usuario1, usuario1)
relacion1_3 = (usuario1, usuario3)


-- FUNCIONES PARA TESTING, NO BORRAR
-- expectAny permite saber si el elemenot que devuelve la función es alguno de los esperados
expectAny actual expected = elem actual expected ~? ("expected any of: " ++ show expected ++ "\n but got: " ++ show actual)


-- sonIguales permite ver que dos listas sean iguales si no importa el orden
quitar :: (Eq t) => t -> [t] -> [t]
-- requiere x pertenece a y
quitar x (y:ys)
 | x == y = ys
 | otherwise = y : quitar x ys 

incluido :: (Eq t) => [t] -> [t] -> Bool
incluido [] l = True
incluido (x:c) l = elem x l && incluido c (quitar x l)

sonIguales :: (Eq t) => [t] -> [t] -> Bool
sonIguales xs ys = incluido xs ys && incluido ys xs 