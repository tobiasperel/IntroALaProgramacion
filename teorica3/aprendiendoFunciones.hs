-- Definición de una función llamada 'calcularAlgo'
calcularAlgo :: Int -> Double -> String -> String --na función llamada calcularAlgo que toma tres argumentos: edad de tipo Int, altura de tipo Double y nombre de tipo String. La función devuelve un String.
calcularAlgo edad altura nombre =
   if edad >= 18
      then "Hola, " ++ nombre ++ ". Eres mayor de edad y mides " ++ show altura ++ " metros."
      else "Hola, " ++ nombre ++ ". Eres menor de edad y mides " ++ show altura ++ " metros."

-- Ejemplos de uso de la función
main :: IO ()
main = do
   putStrLn $ calcularAlgo 25 1.75 "Juan"
   putStrLn $ calcularAlgo 15 1.60 "Ana"