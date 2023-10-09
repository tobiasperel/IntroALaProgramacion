module Solucion where
--Ejercicio 1
porcentajeDeVotosAfirmativos :: [(String,String)] -> [Int] -> Int -> Float
porcentajeDeVotosAfirmativos formulas votos cantTotalVotos 
    | cantTotalVotos == 0 = 0
porcentajeDeVotosAfirmativos formulas votos cantTotalVotos = (division (sumaTodosLosVotos votos) cantTotalVotos) *100

sumaTodosLosVotos :: [Int] -> Int
sumaTodosLosVotos [] = 0
sumaTodosLosVotos (x:xs) = x + sumaTodosLosVotos xs

division :: Int -> Int -> Float
division a b = (fromIntegral a) / (fromIntegral b)

--Ejercicio 2
formulasInvalidas :: [(String,String)] -> Bool
formulasInvalidas [] = False
formulasInvalidas (candidato :rst)
    |formulasInvalidasAux candidato rst == True = True
    |otherwise = formulasInvalidas rst

formulasInvalidasAux :: (String,String) -> [(String,String)] ->Bool
formulasInvalidasAux (fst,snd) [] 
    |fst == snd = True
    |otherwise = False
formulasInvalidasAux (fst,snd) ((presi2,vice2):resto)
    |fst == snd = True
    |fst == presi2 = True
    |fst == vice2 = True
    |snd == presi2 = True
    |snd == vice2 = True
    |otherwise = formulasInvalidasAux (fst,snd) resto

--Ejercicio 3

porcentajeDeVotos :: String -> [(String,String)] -> [Int] -> Float
porcentajeDeVotos vice [] votos = 0 
porcentajeDeVotos vice formulas votos = division (encontrarVotosListaEspecifica (buscarPosicionVice vice formulas ) votos ) (sumaTodosLosVotos votos) *100 

encontrarVotosListaEspecifica :: Int -> [Int] -> Int
encontrarVotosListaEspecifica ubicacionPartido [] = 0
encontrarVotosListaEspecifica ubicacionPartido (x:xs) 
    | ubicacionPartido == 1 = x
    | otherwise = encontrarVotosListaEspecifica (ubicacionPartido-1) xs

buscarPosicionVice :: String -> [(String,String)] -> Int
buscarPosicionVice vice ((presi1,vice1): rst)
    |vice == vice1 = 1
    |otherwise = 1 + buscarPosicionVice vice rst

--Ejercicio 4
menosVotado :: [(String,String)]-> [Int] -> String
menosVotado formulas votos = encontrarPresi (buscarPosicionVotos (encontrarMenor votos) votos ) formulas

buscarPosicionVotos :: Int -> [Int]-> Int
buscarPosicionVotos votosIndividual [] = 0
buscarPosicionVotos votosIndividual (x:xs)
    |votosIndividual == x = 1
    |otherwise = 1 + buscarPosicionVotos votosIndividual xs    

encontrarPresi :: Int -> [(String,String)] ->String
encontrarPresi posicionPresi [] = ""
encontrarPresi posicionPresi ((presi1,vice1): rst)
    |posicionPresi == 1 =presi1
    |otherwise = encontrarPresi (posicionPresi-1) rst

encontrarMenor :: [Int] -> Int
encontrarMenor [] = 0
encontrarMenor votos = encontrarMenorAux (head votos) votos

encontrarMenorAux :: Int -> [Int] -> Int
encontrarMenorAux masChico [] = masChico
encontrarMenorAux menor votos
    | menor > head votos = encontrarMenorAux (head votos) (tail votos)
    | otherwise = encontrarMenorAux menor (tail votos)
