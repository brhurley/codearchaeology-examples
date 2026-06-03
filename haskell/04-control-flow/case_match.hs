-- A case expression matches a value against patterns
dayType :: Int -> String
dayType day = case day of
    6 -> "weekend"
    7 -> "weekend"
    _ -> "weekday"

-- Pattern matching destructures lists: (x:xs) splits head from tail
firstWord :: [String] -> String
firstWord []    = "(empty)"
firstWord (w:_) = w

-- case branches can carry guards for range checks
temperature :: Int -> String
temperature t = case () of
    _ | t < 0     -> "freezing"
      | t < 20    -> "cool"
      | t < 30    -> "warm"
      | otherwise -> "hot"

main :: IO ()
main = do
    putStrLn (dayType 6)
    putStrLn (dayType 3)
    putStrLn (firstWord ["hello", "world"])
    putStrLn (firstWord [])
    putStrLn (temperature 25)
