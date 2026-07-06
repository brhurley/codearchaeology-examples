main :: IO ()
main = do
    -- Create a sample data file to process
    writeFile "numbers.txt" "10\n20\n30\n40\n"

    -- Read it back, then parse purely: lines splits on newlines
    contents <- readFile "numbers.txt"
    let numbers = map read (lines contents) :: [Int]

    -- All of these are pure computations over the parsed list
    putStrLn ("Numbers: " ++ show numbers)
    putStrLn ("Sum:     " ++ show (sum numbers))
    putStrLn ("Maximum: " ++ show (maximum numbers))

    -- mapM_ runs an IO action for each element, discarding results
    putStrLn "Doubled:"
    mapM_ (\n -> putStrLn ("  " ++ show (n * 2))) numbers
