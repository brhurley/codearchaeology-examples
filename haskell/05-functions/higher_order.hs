module Main where

-- Takes a function and applies it twice
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- A three-argument function...
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- ...partially applied with two arguments fixed
addTen :: Int -> Int
addTen = addThree 10 0

-- Returning a function. The lambda captures 'n' in a closure.
multiplier :: Int -> (Int -> Int)
multiplier n = \x -> x * n

-- Function composition with (.): apply (+1), then (*2)
incThenDouble :: Int -> Int
incThenDouble = (* 2) . (+ 1)

main :: IO ()
main = do
    putStrLn ("applyTwice (+3) 10  = " ++ show (applyTwice (+ 3) 10))
    putStrLn ("addTen 5            = " ++ show (addTen 5))
    let triple = multiplier 3
    putStrLn ("triple 7            = " ++ show (triple 7))
    putStrLn ("incThenDouble 4     = " ++ show (incThenDouble 4))
    putStrLn ("map (*2) [1,2,3]    = " ++ show (map (* 2) [1, 2, 3]))
    putStrLn ("filter even [1..10] = " ++ show (filter even [1 .. 10]))
