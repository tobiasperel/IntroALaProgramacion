bisiesto :: Int -> Bool
bisiesto n 
    | mod n 4 == 0 = True
    | otherwise = False