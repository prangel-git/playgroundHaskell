module Playground where

fibonacci :: [Int]
fibonacci = map fst $ iterate (\(a, b) -> (b, a + b)) (1, 1)

pe001 :: Int -> Int
pe001 n  = sum [x | x <- [1..n], mod x 3 == 0 || mod x 5 == 0]

pe001a :: Int -> Int
pe001a n = 3 * sumFirstNumbers (div n 3) + 5 * sumFirstNumbers (div n 5) - 15 * sumFirstNumbers (div n 15)

sumFirstNumbers :: Int -> Int
sumFirstNumbers n = div (n * (n+1)) 2

pe002 :: Int -> Int
pe002 n = sum [m | m <- takeWhile ( < n) fibonacci, even m]

pe003 :: Integer -> Integer
pe003 = eraseFactor 2 

eraseFactor :: Integer -> Integer -> Integer
eraseFactor n m | m <= n = m
                | m `mod` n == 0 = eraseFactor n (m `div` n)
                | otherwise = eraseFactor (n+1) m 