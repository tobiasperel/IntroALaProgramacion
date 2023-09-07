esCapicua :: Integer ->Bool
esCapicua n
    |n <10 = True
    |n>0 = mod n 10 == mod n 10 && esCapicua (div n 10)
    |otherwise = False