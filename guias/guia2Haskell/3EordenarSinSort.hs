quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

main :: IO ()
main = do
    putStrLn "Ingrese una lista de números separados por espacios:"
    input <- getLine
    let numbers = map read (words input) :: [Int]
        sortedNumbers = quicksort numbers
    putStrLn "Lista ordenada:"
    print sortedNumbers
