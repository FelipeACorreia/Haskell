-- 1. a)
f1 :: Float -> Float -- Cabeçalho
f1 x 
 | x >= 0 = (x+4) / (x+2)
 | otherwise = 2/x

-- 1. b)
f2 :: (Int,Int) -> Int
f2 (x,y)
 | x >= y = x + y
 | otherwise = x - y

-- 1. c)
f3 :: (Int,Int,Int) -> Int
f3 (x,y,z)
 | (x+y) > z = x + y + z
 | (x + y) < z = x - y -z
 | otherwise = 0 

-- 2. Faltou estabelecer o limite para função, caso contrário ela entraria em uma loop infinito

fat:: Int->Int
fat 0 = 1
fat x = x * fat (x-1)

-- 3. 

soma :: Int->Int->Int
soma x y = x+y

multiplica :: Int->Int->Int
multiplica _ 0 = 0
multiplica 0 _ = 0

multiplica x y = soma x (multiplica x (y-1)) 

-- 4.

invertInt :: Int->Int
invertInt x 
 | x > 10 = read (show (x `mod` 10) ++ show(invertInt (x `div` 10)))
 | otherwise = x

-- 5. 

square:: Int -> Int
square x = x*x

fourPower:: Int -> Int
fourPower x = square (square x)



-- 6.

sqrtSeq :: Int-> Float
sqrtSeq 0 = sqrt 6
sqrtSeq x = sqrt (6 + sqrtSeq (x-1)) 

-- 7. -- fazer depois
infoHowManyWays:: [Int]->Int->Int
infoHowManyWays m n
 | length m >= n = fat n
 | otherwise = 0

--8. 
mdc:: Int->Int->Int
mdc m n
    | m `mod` n /= 0 = mdc n (m `mod` n)
    | otherwise = n

--9.

howManyMultiples:: Int->Int->Int->Int
howManyMultiples x a b
    | x > b = 0
    | x < a = 0
    | a > b = length [n | n <- [b..a], n /= a, n /= b, x `mod` n == 0]
    | otherwise = length [n | n <- [a..b], n /= a, n /= b, x `mod` n == 0]

-- 10.

lastDigit :: Int->Int
lastDigit x
 | x >= 10 = x `mod` 10
 | x < 0 = (x `mod` (-10)) * (-1)
 | otherwise = x

-- 11.

anyDigit :: Int -> Int -> Int
anyDigit i x 
    | length numberList < index = -1
    | index < 0 = -1
    | otherwise = read numberString
    where numberList = show x
          numberChar = last (take index numberList)
          numberString = [numberChar]
          index = i + 1

-- 12. a) Faltou verificar se m é diferente de p

-- 12. b) 

allDifferent::Int->Int->Int->Bool
allDifferent m n p = (m/=n) && (n/=p) && (m/=p)

-- 13.

howManyEqual::Int->Int->Int->Int
howManyEqual m n p
    | (m==n) && (n==p) && (m==p) = 3
    | allDifferent m n p = 0
    | otherwise = 2

-- 15 parcial

fib:: Int->Int
fib 1 = 1
fib 2 = fib 1
fib x = fib(x-1) + fib(x-2)

-- 15.


-- antFib :: Int->Int
-- antFib x