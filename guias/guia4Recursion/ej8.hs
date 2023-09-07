iesimoDigito :: Integer ->Integer ->Integer
iesimoDigito n i
    |n < 1 = error "i fuera de rango"
    | i == 1 = mod n 10
    | otherwise = iesimoDigito(div n 10) (i-1) 