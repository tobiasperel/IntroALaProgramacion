import Data.List (sort)
import Data.Set (fromList, size)

ordenar :: [Int] -> [Int]
ordenar s 
    |size (fromList s) /= length s = error "No puede haber elementos repetidos en la lista"
    | otherwise = sort s

-- main :: IO ()
-- main = do
--     let arreglo = [5, 2, 9, 1, 7]
--         arregloOrdenado = ordenar arreglo
--     print arregloOrdenado -- Salida: [1,2,5,7,9]
