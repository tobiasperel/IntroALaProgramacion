todoMenor :: (Int, Int) -> (Int, Int) -> Bool
todoMenor (a,b) (c,d)
    |a < c && b < d = True --todoMenor (1,2) (3,4) 
    |otherwise = False