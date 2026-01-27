import Data.Char


-- 1. Query the types of isUpper and toUpper.
-- Ans:
-- ghci> :t isUpper
-- isUpper :: Char -> Bool
-- ghci> :t toUpper
-- toUpper :: Char -> Char
-- ghci> 

-- 2. Given the following behaviors, which would we use to write
-- a function that filters all the uppercase letters out of a String?
-- Write that function such that, given the input “HbEfLrLxO,”
-- your function will return “HELLO.”
-- Ans:
-- Prelude Data.Char> isUpper 'J'
-- True
-- i.e) filter isUpper  "HbEfLrLxO"


-- Q. 3
caps :: String -> String
caps s = toUpper (head s) : tail s


-- Q.4
fullCaps :: String -> String
fullCaps "" = []
-- fullCaps s = toUpper (head s) : fullCaps (tail s)
fullCaps (x:xs) = toUpper (x) : fullCaps (xs)


-- Q. 5
oneCaps :: String -> Char
oneCaps x = toUpper (head x)

-- Q. 6
oneCapsC :: String -> Char
oneCapsC  = (toUpper . head )