module Main where

suma :: Int -> Int -> Int -- Definición de la función suma con dos parámetros enteros y un resultado entero
suma x y = x + y -- definimos que va a hacer esta funcion

main :: IO ()
main = do
    putStrLn "Introduce el primer número: "
    x <- getLine
    putStrLn "Introduce el segundo número: "
    y <- getLine
    putStrLn ("El resultado de la suma es: " ++ show (suma (read x) (read y))) -- llamamos a la funcion suma con los parametros x e y y devolvemos el resultado de la suma