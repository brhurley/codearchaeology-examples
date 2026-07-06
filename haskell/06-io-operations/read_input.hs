main :: IO ()
main = do
    putStrLn "What is your name?"
    name <- getLine                 -- bind the String out of IO String

    putStrLn "How old are you?"
    ageStr <- getLine
    let age = read ageStr :: Int    -- pure parsing with a type annotation

    putStrLn ("Hello, " ++ name ++ "!")
    putStrLn ("Next year you will be " ++ show (age + 1))
