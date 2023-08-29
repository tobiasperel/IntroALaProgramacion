--https://campus.exactas.uba.ar/pluginfile.php/505219/mod_resource/content/4/p2.pdf

--cabal install containers

import Data.Set (fromList, size)

raizCuadrada :: Float -> Float
raizCuadrada x = sqrt x

raicesCuadradasUno :: [Int] -> [Float] --lista de float
raicesCuadradasUno s 
    | any (< 0) s = error "Los elementos de la lista deben ser positivos"
    |size (fromList s) /= length s = error "No puede haber elementos repetidos en la lista"
    | otherwise   = map raizCuadrada (map fromIntegral s)-- Ejemplo de uso

-- main :: IO ()
-- main = do
--     let secuencia = [1, 4, 7, 9, 16]
--         resultado = raicesCuadradasUno secuencia
--     print resultado -- Salida: [2.0,2.6457512,3.0,4.0]
