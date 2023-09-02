absoluto :: Int -> Int
absoluto n 
    |n >= 0 = n
    |n<0 = -n
    |otherwise = error "entrada no válida"

estanRelacionados :: Int -> Int -> Bool
estanRelacionados x y
    | x /= 0 && y /= 0 && mod (x * x) (x * y) == 0 = True
    | otherwise = False