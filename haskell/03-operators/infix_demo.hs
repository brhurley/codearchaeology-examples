module Main where

-- Turn a function into an operator using backticks
-- Turn an operator into a function using parentheses

main :: IO ()
main = do
    -- (+) is a function; you can pass it around
    putStrLn ("(+) 4 5    = " ++ show ((+) 4 5))

    -- div is a function; use backticks to write it infix
    putStrLn ("div 17 5   = " ++ show (div 17 5))
    putStrLn ("17 `div` 5 = " ++ show (17 `div` 5))

    -- Sections: partially applied operators
    let addTen = (+ 10)
    let halve  = (/ 2)
    putStrLn ("addTen 5   = " ++ show (addTen 5))
    putStrLn ("halve 9    = " ++ show (halve (9 :: Double)))

    -- Operators are first-class: pass (+) to a higher-order function
    putStrLn ("foldr (+) 0 [1..5] = " ++ show (foldr (+) 0 [1..5 :: Int]))
