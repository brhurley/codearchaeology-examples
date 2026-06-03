main :: IO ()
main = do
    let x = 7

    -- if/then/else is an expression that yields a value
    let label = if even x then "even" else "odd"
    putStrLn ("x is " ++ label)

    -- Both branches must have the same type (here, Int)
    let bigger = if x > 5 then x else 5
    putStrLn ("bigger value: " ++ show bigger)

    -- Nested if expressions handle multiple cases
    let sign n = if n > 0 then "positive"
                 else if n < 0 then "negative"
                 else "zero"
    putStrLn ("sign of -3: " ++ sign (-3))
    putStrLn ("sign of 0:  " ++ sign 0)
