module Main where

-- Sum type: a Shape is either a Circle OR a Rectangle
data Shape = Circle Double
           | Rectangle Double Double
           deriving (Show)

-- Pattern matching on custom types
describeShape :: Shape -> String
describeShape (Circle r) =
    "Circle with radius " ++ show r
describeShape (Rectangle w h) =
    "Rectangle " ++ show w ++ " x " ++ show h

shapeArea :: Shape -> Double
shapeArea (Circle r)      = pi * r * r
shapeArea (Rectangle w h) = w * h

-- Maybe represents optional values (no null in Haskell!)
safeDivide :: Double -> Double -> Maybe Double
safeDivide _ 0 = Nothing
safeDivide x y = Just (x / y)

-- Tuples group values of different types
swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

-- Lists hold values of the same type
describelist :: [a] -> String
describelist []  = "empty"
describelist [_] = "one element"
describelist _   = "multiple elements"

main :: IO ()
main = do
    putStrLn "-- Algebraic Data Types --"
    let c = Circle 5.0
    let r = Rectangle 3.0 4.0
    putStrLn (describeShape c)
    putStrLn ("  area = " ++ show (shapeArea c))
    putStrLn (describeShape r)
    putStrLn ("  area = " ++ show (shapeArea r))

    putStrLn "\n-- Maybe (No Null!) --"
    putStrLn ("10 / 3 = " ++ show (safeDivide 10 3))
    putStrLn ("10 / 0 = " ++ show (safeDivide 10 0))

    putStrLn "\n-- Tuples --"
    let pair = (1, "hello")
    putStrLn ("pair = " ++ show pair)
    putStrLn ("swap = " ++ show (swap pair))

    putStrLn "\n-- Lists --"
    let nums = [1, 2, 3, 4, 5] :: [Int]
    putStrLn ("nums = " ++ show nums)
    putStrLn ("head = " ++ show (head nums))
    putStrLn ("tail = " ++ show (tail nums))
    putStrLn ("length = " ++ show (length nums))
    putStrLn ("[] is " ++ describelist ([] :: [Int]))
    putStrLn ("[1] is " ++ describelist [1 :: Int])
    putStrLn ("[1,2,3] is " ++ describelist [1, 2, 3 :: Int])
