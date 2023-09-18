
compararTublas :: (String,String) -> (String,String) -> Bool
compararTublas (a,b) (c,d)
    | a == b || c == d =False
    |(a,b) == (c,d) = False
    |otherwise = True

compararNormal :: (String,String) -> Bool
compararNormal (a,b) 
    | a == b = False
    | otherwise = True

relacionesValidas :: [(String,String)]-> Bool
relacionesValidas [] = True   
relacionesValidas x 
    |longitud x == 1 && ((compararNormal (head x)) == False) = False
    |longitud x == 1 && ((compararNormal (head x)) == True) = True

relacionesValidas (x:xs) 
    |relacionesValidas2 xs == False = False
    | otherwise = relacionesValidas xs

relacionesValidas2 :: [(String,String)]-> Bool
relacionesValidas2 [] = True  
relacionesValidas2 x 
    |longitud x == 1 && ((compararNormal (head x)) == False) = False
    |longitud x == 1 && ((compararNormal (head x)) == True) = True

relacionesValidas2 (x:xs) 
    |(compararTublas x (head xs) ) == False = False
    |otherwise = relacionesValidas2 ([x] ++ (tail xs))
