--https://campus.exactas.uba.ar/pluginfile.php/505219/mod_resource/content/4/p2.pdf

--hacer funcion que duplique una variable
dobleMe :: Int -> Int
dobleMe x = x + x

main :: IO ()
main = do
    putStrLn "Introduce un número: "
    input <- getLine
    let num = read input :: Int
    let resultado = dobleMe num
    putStrLn ("El doble de " ++ show(num) ++ " es: " ++ show (resultado)) -- llamamos a la funcion suma con los parametros x e y y devolvemos el resultado de la suma

