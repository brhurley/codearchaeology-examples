-- Recursion replaces a counting loop: build a list down to zero
countdown :: Int -> [Int]
countdown 0 = [0]
countdown n = n : countdown (n - 1)

-- A "while-style" accumulation, expressed as recursion
sumTo :: Int -> Int
sumTo 0 = 0
sumTo n = n + sumTo (n - 1)

-- A list comprehension iterates and filters declaratively
evens :: [Int] -> [Int]
evens xs = [x | x <- xs, even x]

main :: IO ()
main = do
    print (countdown 5)
    print (sumTo 100)
    print (evens [1..10])
    -- mapM_ acts like a for-each loop that performs IO
    mapM_ (\i -> putStrLn ("line " ++ show i)) [1..3]
