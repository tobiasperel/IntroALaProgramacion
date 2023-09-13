factorial :: Integer -> Integer
factorial j
    |j== 1 = 1
    |otherwise = j * factorial(j-1)

eAprox :: Integer ->Float -- numero e con sumas
eAprox n
    |n== 0 = 1
    |otherwise = 1 / fromIntegral(factorial n) + eAprox(n-1)
    