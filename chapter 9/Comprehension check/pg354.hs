-- 1. Given the above, how might we write a filter function that would
-- -- give us all the multiples of 3 out of a list from 1-30?

-- filter (\x -> (mod x 3 ) ==0) [1..30]

-- 2. Recalling what we learned about function composition, how
-- could we compose the above function with the length function
-- to tell us *how many* multiples of 3 there are between 1 and
-- 30?

-- (length . filter (\x -> mod x 3 == 0)) [1..30]


myWords :: String -> [String]
myWords x =
    let 
       word = takeWhile (/=' ') x
       rest = dropWhile (==' ') (dropWhile (/= ' ') x)
    in if null word
        then []
        else 
           word : myWords rest

-- myFilter :: String -> [String]
myFilter x =filter (/="the" ) ( filter (/="an" ) (filter ((/="a" ) ) (myWords x)))