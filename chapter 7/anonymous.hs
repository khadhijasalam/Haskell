-- mTh x y z = x * y * z
-- mTh x y = \z -> x * y * z
-- mTh x = \y -> \z -> x * y * z
mTh = \x -> \y -> \z -> x * y * z
-- Ans: All of them are equivalent.

-- Q. 2
-- The type of mTh (above) is Num a => a -> a -> a -> a.
-- Which is the type of mTh 3?
-- d) Num a => a -> a -> a

-- Q. 3
-- a) Rewrite the f function in the where clause.

addOneIfOdd n = case odd n of
  True -> f n
  False -> n
  where f = \n-> n + 1


-- b) Rewrite the following to use anonymous lambda syntax:
-- addFive x y = (if x > y then y else x) + 5
addFive = \x -> \y ->  (if x > y then y else x) + 5
-- or
-- addFive = \x y -> (if x > y then y else x) + 5

-- c) Rewrite the following so that it doesn’t use anonymous
mflip f = \x -> \y -> f y x

mflip f x y = f y x
