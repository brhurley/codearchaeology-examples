import Control.Exception (try, IOException)

main :: IO ()
main = do
    -- try wraps the action; a failure becomes a Left, success a Right
    result <- try (readFile "does_not_exist.txt") :: IO (Either IOException String)
    case result of
        Left _    -> putStrLn "Error: could not read the file (it may not exist)."
        Right txt -> putStr txt

    putStrLn "The program continues normally after handling the error."
