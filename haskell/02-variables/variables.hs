module Main where

main :: IO ()
main = do
    -- let bindings associate names with values
    let x = 42            -- Int (inferred)
    let name = "Haskell"  -- String (which is [Char])
    let pi' = 3.14159     -- Double (inferred)
    let active = True     -- Bool
    let letter = 'H'      -- Char

    putStrLn "-- Basic Bindings --"
    putStrLn ("x = " ++ show x)
    putStrLn ("name = " ++ name)
    putStrLn ("pi' = " ++ show pi')
    putStrLn ("active = " ++ show active)
    putStrLn ("letter = " ++ show letter)

    -- Type annotations can be explicit
    let year :: Int
        year = 2026
    putStrLn ("year = " ++ show year)

    -- Integer supports arbitrary precision
    let big :: Integer
        big = 2 ^ 100
    putStrLn ("2^100 = " ++ show big)

    -- Bindings are immutable: you cannot reassign x
    -- let x = 99  -- This creates a NEW binding that shadows the old one
    let x' = x + 1
    putStrLn ("x' = x + 1 = " ++ show x')

    -- where clauses are another way to define bindings
    putStrLn ("circumference = " ++ show circumference)
  where
    circumference = 2 * 3.14159 * 10.0
