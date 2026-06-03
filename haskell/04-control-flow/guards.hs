-- Guards select a branch based on boolean conditions
classify :: Int -> String
classify n
    | n < 0     = "negative"
    | n == 0    = "zero"
    | n < 10    = "small"
    | otherwise = "large"

-- Pattern matching on specific values, with a wildcard fallback
describe :: Int -> String
describe 0 = "none"
describe 1 = "one"
describe 2 = "a couple"
describe _ = "many"

-- Guards work well for ranges, like assigning a letter grade
grade :: Int -> Char
grade score
    | score >= 90 = 'A'
    | score >= 80 = 'B'
    | score >= 70 = 'C'
    | otherwise   = 'F'

main :: IO ()
main = do
    mapM_ (putStrLn . classify) [-5, 0, 7, 42]
    mapM_ (putStrLn . describe) [0, 1, 2, 5]
    -- A String is a list of Char, so [grade ...] is a String
    putStrLn [grade 95, grade 83, grade 71, grade 50]
