module Main where

main :: IO ()
main = do
    -- Arithmetic operators
    putStrLn "--- Arithmetic ---"
    putStrLn ("7 + 3   = " ++ show (7 + 3))
    putStrLn ("7 - 3   = " ++ show (7 - 3))
    putStrLn ("7 * 3   = " ++ show (7 * 3))
    putStrLn ("7 / 3   = " ++ show (7 / 3 :: Double))
    putStrLn ("7 `div` 3 = " ++ show (7 `div` 3))
    putStrLn ("7 `mod` 3 = " ++ show (7 `mod` 3))
    putStrLn ("2 ^ 10  = " ++ show (2 ^ 10 :: Int))

    -- Comparison operators
    putStrLn "\n--- Comparison ---"
    putStrLn ("5 == 5: " ++ show (5 == 5))
    putStrLn ("5 /= 3: " ++ show (5 /= 3))
    putStrLn ("5 >  3: " ++ show (5 > 3))
    putStrLn ("5 <= 3: " ++ show (5 <= 3))

    -- Boolean operators (short-circuit via laziness)
    putStrLn "\n--- Boolean ---"
    putStrLn ("True  && False: " ++ show (True && False))
    putStrLn ("True  || False: " ++ show (True || False))
    putStrLn ("not True:       " ++ show (not True))

    -- List and string operators
    putStrLn "\n--- Lists & Strings ---"
    putStrLn ("\"Hello, \" ++ \"World!\" = " ++ ("Hello, " ++ "World!"))
    putStrLn ("1 : [2,3,4]   = " ++ show (1 : [2,3,4]))
    putStrLn ("[1,2] ++ [3,4]= " ++ show ([1,2] ++ [3,4]))
    putStrLn ("[10,20,30] !! 1 = " ++ show ([10,20,30] !! 1))

    -- Function composition and application
    putStrLn "\n--- Composition (.) and Application ($) ---"
    let addOneThenDouble = (*2) . (+1)
    putStrLn ("((*2) . (+1)) 3 = " ++ show (addOneThenDouble 3))
    putStrLn ("show $ 1 + 2    = " ++ (show $ 1 + 2))
