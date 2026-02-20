import Data.Char (toUpper)
-- 1. Write a function that capitalizes a word.
capitalizeWord :: String -> String
capitalizeWord [] = []
capitalizeWord (x:xs) = if x==' ' then capitalizeWord xs else toUpper x : xs



-- Q.2
capitalizeParagraph :: String -> String
capitalizeParagraph s = concat (map (\y -> capitalizeWord y++". ") (sentList s))

sentList s= wordsWhen (=='.') s

wordsWhen     :: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'
