import GHC.CmmToAsm.AArch64.Instr (x0)
menorDivisor :: Integer ->Integer 
menorDivisor n = menorDivisorAux n 2

menorDivisorAux :: Integer -> Integer -> Integer
menorDivisorAux numeroAnalizar divisor 
    |mod numeroAnalizar divisor == 0 = divisor
    |mod numeroAnalizar divisor /= 0 = menorDivisorAux numeroAnalizar (divisor+1) 

esPrimo :: Integer ->Bool
esPrimo n = esPrimoAux n 2 

esPrimoAux :: Integer -> Integer -> Bool
esPrimoAux numeroAnalizar divisor 
    |mod numeroAnalizar divisor == 0 && numeroAnalizar /= divisor = False
    |mod numeroAnalizar divisor == 0 &&  numeroAnalizar == divisor = True
    |mod numeroAnalizar divisor /= 0 = esPrimoAux numeroAnalizar (divisor+1) 

--------------------

sonCoprimos :: Int ->Int ->Bool
sonCoprimos n m = sonCoprimosAux (divisoresDeUnNumero n) (divisoresDeUnNumero m ) 

sonCoprimosAux :: [Int] -> [Int]-> Bool
sonCoprimosAux (x:xs) []  = True
sonCoprimosAux (a:as) (x:xs) 
    |(longitud (a:as) ) == 1 && pertene a (x:xs) = False
    |(longitud (a:as) )== 1 = True
    |pertene a (x:xs) = False
    |otherwise = sonCoprimosAux  as (x:xs)

divisoresDeUnNumero :: Int -> [Int]
divisoresDeUnNumero n = divisoresDeUnNumeroAux n 2

divisoresDeUnNumeroAux :: Int -> Int -> [Int]
divisoresDeUnNumeroAux numeroAnalizar divisor 
    |divisor == numeroAnalizar = [divisor]
    |mod numeroAnalizar divisor == 0 = [divisor]  ++ divisoresDeUnNumeroAux numeroAnalizar (divisor+1) 
    |mod numeroAnalizar divisor /= 0 = divisoresDeUnNumeroAux numeroAnalizar (divisor+1)


pertene :: Int -> [Int]-> Bool
pertene a [] = False
pertene a (x:xs)
    |a == x = True
    |a /= x = pertene a xs 

longitud :: (Eq t) => [t] -> Integer
longitud [] = 0
longitud (x:xs) = 1+ longitud xs


nEsimoPrimo :: Integer ->Integer
nEsimoPrimo n =  longitud (listaDePrimos n)  

listaDePrimos :: Integer -> [Integer]
listaDePrimos n 
    |n == 1 = []
    |esPrimo n =   listaDePrimos (n-1) ++ [n] 
    |otherwise = listaDePrimos (n-1) 

--17
esFibonacci :: Integer ->Bool
esFibonacci n = pertene ( fromInteger n) (map fromInteger(fibonacciLista n) )

fibonacci :: Integer -> Integer --dado un numero n, devuelve el n-esimo numero de fibonacci 
fibonacci n 
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fibonacci (n-1) + fibonacci (n-2)

fibonacciLista :: Integer -> [Integer]
fibonacciLista 0 = [0]
fibonacciLista 1 = [0,1]
fibonacciLista 2 = [0,1,1,2]
fibonacciLista 3 = [0,1,1,2,3]
fibonacciLista 4 = [0,1,1,2,3,5]

fibonacciLista n =  fibonacciLista (n-1) ++ [fibonacci n] 

--18
mayorDigitoPar :: Integer -> Integer
mayorDigitoPar n = mayor (mayorDigitoParAux n ) 0 


mayorDigitoParAux :: Integer ->[Integer]
mayorDigitoParAux n 
    | n < 10 && mod n 2 == 0 = [n]
    | n < 10 && mod n 2 /= 0 = []
    | mod (mod n 10) 2 == 0 = [(mod n 10)] ++ mayorDigitoParAux (  (n-(mod n 10) )  `div`  10)
    |otherwise = mayorDigitoParAux (  (n-(mod n 10) )  `div`  10)


mayor :: [Integer] -> Integer -> Integer
mayor [] 0 = -1
mayor (x:xs) masGrande
    |longitud (x:xs) == 1 && masGrande < x = x
    |longitud (x:xs) == 1 = masGrande
    |masGrande < x = mayor xs x
    |otherwise = mayor xs masGrande


--19

listaDePrimos2 :: Int -> [Int]
listaDePrimos2 n 
    |n == 1 = []
    |esPrimo (toInteger n) =   listaDePrimos2 (n-1) ++ [n] 
    |otherwise = listaDePrimos2 (n-1) 


esSumaInicialDePrimos :: Int ->Bool
esSumaInicialDePrimos 1 = False
esSumaInicialDePrimos n = esSumaInicialDePrimosAux n  (listaDePrimos2  n) 

esSumaInicialDePrimosAux :: Int -> [Int] -> Bool

esSumaInicialDePrimosAux futuroPrimo (primerPrimo:restoPrimos) 
    | futuroPrimo - primerPrimo == 0 = True
    | futuroPrimo - primerPrimo < 0 = False
    | futuroPrimo - primerPrimo > 0 = esSumaInicialDePrimosAux (futuroPrimo - primerPrimo)  restoPrimos

--20

pitagoras :: Integer ->Integer ->Integer ->Integer
pitagoras m n r 
    |m == -1 = 0
    |otherwise = pitagorasAux m n r + pitagoras (m-1) n r

pitagorasAux  :: Integer ->Integer ->Integer ->Integer
pitagorasAux m q r 
    | q == 0 && (m*m + q*q <= r*r) = 1
    | q == 0 = 0 
    | m*m + q*q <= r*r = 1 + (pitagorasAux m (q-1) r )
    | m*m + q*q > r*r  = pitagorasAux m (q-1) r 
