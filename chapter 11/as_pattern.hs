import Data.Char (toUpper)
-- 1. This should return True if (and only if ) all the values in the
-- first list appear in the second list, though they need not be
-- contiguous.

-- Q.1
isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf [] _ = True
isSubsequenceOf (a:as) f@(x:xs) =  elem a f && isSubsequenceOf as f


-- Q.2
--  Split a sentence into words, then tuple each word with the capitalized form of each.
-- capitalizeWords :: String -> [(String, String)]

capitalize :: [Char] -> [Char]
capitalize []     = []
capitalize (y:ys) = toUpper y: ys
capitalizeWords c@(x:xs) =  map (\y -> (y,capitalize y)) (words c)