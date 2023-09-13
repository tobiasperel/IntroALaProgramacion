sumaPotencias :: Integer ->Integer ->Integer ->Integer   --sumaPotencias :: Integer ->Integer ->Integer ->Integer que dados tres naturales q, n, m sume todas las potencias de la forma q a+b con 1 ≤ a ≤ n y 1 ≤ b ≤ m.
sumaPotencias q n m
    |n == 1 && m == 1 = q^2 
    |m == 1 = q^(n+1) + sumaPotencias q (n-1) m -- aca seria 3 ^ 1 + 2 ^ 1 + 1 ^ 1
    |n == 1 = q^(m+1) + sumaPotencias q n (m-1) -- aca seria 1 ^ 3 + 1 ^ 2 + 1 ^ 1
    |otherwise = q^(n+m) + sumaPotencias q (n-1) m +  sumaPotencias q n (m-1)

    

