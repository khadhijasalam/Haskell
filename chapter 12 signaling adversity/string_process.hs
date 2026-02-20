import GHC.Exts.Heap (StgInfoTable(code))

-- Q. 1
notThe :: String -> Maybe String
notThe x = if x =="the" then Nothing else Just x


-- replaceThe :: String -> String
replaceThe str = 
    unwords (convert (words str))
        where
             convert [] = []
             convert (y:ys)= case notThe y of
                Nothing -> "a": convert ys
                Just word -> y : convert ys


-- Q. 2
countTheBeforeVowel :: String -> Integer
countTheBeforeVowel s =
    count (words s)
        where
            -- c = 0
            count [] = 0
            count (x:xs) = case notThe x of

                Nothing-> if (elem (head ( head xs )) ['a', 'e','i','o','u']) then 1 + count xs else count xs
                Just word -> count xs

-- Cleaner code:

-- countTheBeforeVowel :: String -> Integer
-- countTheBeforeVowel s = go (words s)
--   where
--     go [] = 0
--     go [_] = 0
--     go (x:y:xs)
--       | x == "the" && startsWithVowel y = 1 + go (y:xs)
--       | otherwise = go (y:xs)

--     startsWithVowel (c:_) = c `elem` "aeiou"
--     startsWithVowel []    = False


-- Q. 3

-- isVowel ::
isVowel c = elem c "aeiou"

countVowel s= foldr getCount 0 s
    where 
        getCount x acc
          | isVowel x = acc+1
          | otherwise =acc
