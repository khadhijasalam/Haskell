module PoemLines where

    
-- Q.1
myWords :: String -> [String]
myWords x =
    let 
       word = takeWhile (/=' ') x
       rest = dropWhile (==' ') (dropWhile (/= ' ') x)
    in if null word
        then []
        else 
           word : myWords rest

-- Q. 2

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen
-- putStrLn sentences -- should print
-- Tyger Tyger, burning bright
-- In the forests of the night
-- What immortal hand or eye
-- Could frame thy fearful symmetry?
-- Implement this
myLines :: String -> [String]
myLines s = 
    let word = takeWhile (/='\n') s
        rest = dropWhile (=='\n') (dropWhile (/= '\n') s)
    in if null word
        then []
        else 
           word : myWords rest
-- What we want 'myLines sentences' to equal
shouldEqual =
    [ "Tyger Tyger, burning bright"
    , "In the forests of the night"
    , "What immortal hand or eye"
    , "Could frame thy fearful symmetry?"
    ]

main :: IO ()
main =
    print $ "Are they equal? "
        ++ show (myLines sentences == shouldEqual)