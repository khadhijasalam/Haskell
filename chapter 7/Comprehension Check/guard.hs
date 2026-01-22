avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
 | y >= 0.7 = 'C'
 | y >= 0.9 = 'A'
 | y >= 0.8 = 'B'
 | y >= 0.59 = 'D'
 | y < 0.59 = 'F'
 where y = x / 100


pal xs
 | xs == reverse xs = True
 | otherwise = False




-- 1)
-- Ans: putting otherwise on top will execute only that. so if you
-- pass a 90 as an argument? 75? 60?  result will be "F"

-- 2) No. it returns 'C' cause y is still greater that 70%

-- 3) b) True when xs is a palindrome

-- 4) Ans: [a]  (i.e Any list whose elements can be compared for equality. Sting, list of string, list of num, list of bool)

-- 5) Eq a => [a] -> Bool

-- 6)c) an indication of whether its argument is a positive or negative number or zero


numbers x
 | x < 0 = -1
 | x == 0 = 0
 | x > 0 = 1

-- 7)  Num.( types that support num, ord  , negation)

8) numbers :: (Ord a, Num a) => a -> a
