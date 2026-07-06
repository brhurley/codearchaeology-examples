main :: IO ()
main = do
    -- writeFile creates the file (or overwrites it if it exists)
    writeFile "output.txt" "Line 1: Hello from Haskell\n"

    -- appendFile adds to the end without overwriting
    appendFile "output.txt" "Line 2: Appended text\n"

    -- readFile reads the whole file as a String
    contents <- readFile "output.txt"
    putStrLn "File contents:"
    putStr contents
