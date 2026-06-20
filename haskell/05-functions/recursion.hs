module Main where

-- Classic recursion via pattern matching on the argument
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Recursion with guards (the 'otherwise' case is just True)
fib :: Int -> Integer
fib n
    | n < 2     = fromIntegral n
    | otherwise = fib (n - 1) + fib (n - 2)

-- Recursion over a list replaces a 'for' loop.
-- (x:xs) matches the head x and the tail xs.
sumList :: [Int] -> Int
sumList []     = 0
sumList (x:xs) = x + sumList xs

main :: IO ()
main = do
    putStrLn ("factorial 5      = " ++ show (factorial 5))
    putStrLn ("fib 10           = " ++ show (fib 10))
    putStrLn ("sumList [1..10]  = " ++ show (sumList [1..10]))
