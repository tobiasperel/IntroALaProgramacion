module Main where

mayor :: Int -> Int -> Int
mayor x y = if x > y then x else y
algunoPositivo :: Int -> Int -> Bool
algunoPositivo x y = if x > 0 || y > 0 then True else False
losDosPositivos :: Int -> Int -> Bool
losDosPositivos x y = if x > 0 && y > 0 then True else False
main :: IO ()
main = do
    putStrLn "Introduce el primer número: "
    x <- getLine
    putStrLn "Introduce el segundo número: "
    y <- getLine
    putStrLn ("El mayor de los dos números es: " ++ show (mayor (read x) (read y)))
    putStrLn ("¿Alguno de los dos números es positivo?: " ++ show (algunoPositivo (read x) (read y)))
    putStrLn ("¿Los dos números son positivos?: " ++ show (losDosPositivos (read x) (read y)))
    