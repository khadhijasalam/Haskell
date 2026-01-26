main = do
    putStrLn "What's your Name?"
    name <- getLine
    putStrLn ("Hello "++ name)