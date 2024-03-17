-- 1. a)
-- nome_da_funcao :: Argumento 1 -> Argumento 2 -> ... -> Argumento n -> Retorno
f1 :: Float -> Float
f1 x 
 | x >= 0 = (x+4)/(x+2) -- guardas 
 | x < 0 = 2/x

f2 :: (Float, Float) -> Float
f2 (x,y) -- tupla/tuple/dupla
    | x >= y = x+y
    | x < y = x - y




array :: [Int]
array = [1,2,3]

reverse' :: [eliseu] -> [eliseu]
reverse' [] = []
reverse' (head:tail) = reverse' tail ++ [head]


invertInt :: Int -> Int
invertInt x = read (reverse (show x)) 

howManyMultiples :: (Int, Int, Int) -> Int
howManyMultiples (x, y, z) = length([param | param <- [y..z], param `mod` x == 0])

