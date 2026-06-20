module Main where

-- A function of two arguments. The type reads:
-- "add takes an Int and an Int, and returns an Int"
add :: Int -> Int -> Int
add x y = x + y

-- A function of one argument
square :: Int -> Int
square x = x * x

-- Local bindings with 'where' (defined after the body)
circleArea :: Double -> Double
circleArea r = pi * rSquared
  where
    rSquared = r * r

-- Local bindings with 'let ... in' (defined before the body)
hypotenuse :: Double -> Double -> Double
hypotenuse a b =
    let aSquared = a * a
        bSquared = b * b
    in sqrt (aSquared + bSquared)

main :: IO ()
main = do
    putStrLn ("add 3 4         = " ++ show (add 3 4))
    putStrLn ("square 5        = " ++ show (square 5))
    putStrLn ("circleArea 2.0  = " ++ show (circleArea 2.0))
    putStrLn ("hypotenuse 3 4  = " ++ show (hypotenuse 3.0 4.0))
