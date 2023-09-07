f1 :: Integer -> Integer
f1 n 
    |n== 0 = 1
    |n == 1 = 3 -- ^ n 
    |otherwise =  2 ^ n + f1(n-1) 

f2 :: Integer -> Integer -> Integer
f2 n q 
    |n== 0 = 1
    |n == 1 = q ^ n + 1
    |otherwise =  q ^ n + f2(n-1) q

f3 :: Integer -> Integer -> Integer
f3 n q 
    |2*n == 2 = q ^ (4) + q ^ (3)+q ^ (2) + q ^ (1)
    |otherwise =  q ^ (2*n)  + q^(2*n-1) + f3(n-1) q