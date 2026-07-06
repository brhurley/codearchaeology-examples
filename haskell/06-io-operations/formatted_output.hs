import Text.Printf (printf)

main :: IO ()
main = do
    -- putStr writes without a trailing newline; putStrLn adds one
    putStr "No newline here. "
    putStrLn "Now a newline."

    -- print renders any Showable value (note the list has no spaces)
    print [1, 2, 3 :: Int]

    -- printf gives C-style, type-checked formatting
    printf "Name: %s, Age: %d\n" "Alice" (30 :: Int)
    printf "Pi is approximately %.4f\n" (3.14159265 :: Double)
    printf "Hex: %x, Zero-padded: %05d\n" (255 :: Int) (42 :: Int)
