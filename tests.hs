
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <-xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

sum' ::  [Float] -> Float
sum' [] = 0
sum' (x:xs) = x + sum' xs

head' :: [a] -> a
head' (x:xs) = x

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
