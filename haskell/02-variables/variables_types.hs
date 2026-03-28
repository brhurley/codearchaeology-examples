module Main where

-- Top-level bindings with explicit type signatures
radius :: Double
radius = 5.0

label :: String
label = "circle"

-- Functions have types too: input -> output
area :: Double -> Double
area r = pi * r * r

-- Multiple parameters are curried
add :: Int -> Int -> Int
add a b = a + b

-- Polymorphic types work with any type in a type class
showPair :: (Show a, Show b) => a -> b -> String
showPair x y = show x ++ " and " ++ show y

main :: IO ()
main = do
    putStrLn "-- Type Signatures --"
    putStrLn ("radius = " ++ show radius)
    putStrLn ("label = " ++ label)
    putStrLn ("area radius = " ++ show (area radius))
    putStrLn ("add 3 7 = " ++ show (add 3 7))
    putStrLn ("showPair 42 True = " ++ showPair 42 True)

    -- Type conversions are explicit in Haskell
    putStrLn "\n-- Type Conversions --"
    let intVal = 42 :: Int
    let doubleVal = fromIntegral intVal :: Double
    putStrLn ("Int to Double: " ++ show doubleVal)

    let floored = floor 3.7 :: Int
    putStrLn ("floor 3.7 = " ++ show floored)

    let rounded = round 3.5 :: Int
    putStrLn ("round 3.5 = " ++ show rounded)

    -- show converts any showable value to String
    let numStr = show 123
    putStrLn ("show 123 = " ++ numStr)

    -- read parses a String into a type
    let parsed = read "456" :: Int
    putStrLn ("read \"456\" = " ++ show parsed)
