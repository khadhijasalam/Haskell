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
myLines "" = []
myLines s  =
    let line = takeWhile (/= '\n') s
        rest = dropWhile (== '\n') (dropWhile (/= '\n') s)
    in line : myLines rest

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



-- Q. 3
myWordsNew :: String -> Char -> [String]
myWordsNew x p= 
    let 
       word = takeWhile (/=p) x
       rest = dropWhile (==p) (dropWhile (/= p) x )
    in if null word
        then []
        else 
           word : myWordsNew rest p

myLinesNew :: String ->Char -> [String]
myLinesNew "" p= []
myLinesNew s p =
    let line = takeWhile (/= p) s
        rest = dropWhile (== p) (dropWhile (/= p) s)
    in line : myLines rest