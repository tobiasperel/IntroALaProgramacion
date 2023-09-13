raizDe2Aprox :: Integer ->Float
raizDe2Aprox n 
    | n == 1 = 1
    | otherwise = 1 /(2 + raizDe2Aprox(n-1)) + 1    