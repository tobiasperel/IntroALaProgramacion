pitagoras :: Integer -> Integer -> Integer -> Integer
pitagoras m n r
    | n == 0 = sumaTernas m 0 r
    | otherwise = sumaTernas m n r + pitagoras m (n - 1) r

sumaTernas :: Integer -> Integer -> Integer -> Integer
sumaTernas m n r
    | m == 0 && esTernaPitagorica m n r = 1
    | m == 0 = 0
    | esTernaPitagorica m n r = 1 + sumaTernas (m - 1) n r
    | otherwise = sumaTernas (m - 1) n r
    where
        esTernaPitagorica a b c = a ^ 2 + b ^ 2 <= c ^ 2

-- este codigo lo que hace es primera suma todas las ternas modificando m y dejando fijo n, cuando termina le resta 1 a n.