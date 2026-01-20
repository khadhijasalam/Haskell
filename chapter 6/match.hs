import Data.List (sort)


-- Q.1
i ::  Num a => a
i = 1

-- Ans: We cannot substitue. cause a is parametric.

-- Q.2
-- f :: Float
-- f = 1.0
-- Ans: No.
-- 1.0 is a Fractional literal, not just Num.

-- Q.3
-- f :: Fractional a => a
-- f :: Float
-- f = 1.0
-- Ans: yes we can.
-- Float ∈ Fractional

-- Q.4
-- f :: RealFrac a => a
f :: Float
f = 1.0
-- Ans: Ans Yes.
-- Note::: Actual answer: No. We are overpromising.
-- 1.0 only guarantees Fractional, not RealFrac.

-- RealFrac is stronger than needed.


-- Q. 5
-- freud :: Ord a => a -> a
freud :: a -> a
freud x = x
-- Ans: yes
-- NOte::: Actual Ans: No. added an unnecessary constraint.

-- The implementation does not use Ord.

-- You cannot make a function less general.


-- Q.6
-- freud' :: Int -> Int
freud' :: a -> a
freud' x = x

-- Ans: No, Int will force the freud' to accept only values of Int type.
-- BUt a -> a will accept values of any type a.

-- The function is fully polymorphic; forcing Int is invalid.

-- Q.7
-- sigmund :: a -> a
myX = 1 :: Int
sigmund :: Int -> Int
sigmund x = myX
-- Ans: No. Cause we give myX as Int. But Sigmund accepts any type a
-- It doesnt know if the value will be of Type Int or not.


-- Q. 8
-- sigmund' :: Num a => a -> a

myX' = 1 :: Int
sigmund' :: Int -> Int
sigmund' x = myX'

-- Ans: No. The function returns Int, not “any Num”. constraints don’t convert values.

-- Q.9
-- jung :: [Int] -> Int
jung :: Ord a => [a] -> a
jung xs = head (sort xs)
-- Ans: No. cause This means list only can have type Int. 
-- but here, the list can be any type a

-- Q. 10
young :: Ord a => [a] -> a
-- young :: [Char] -> Char
young xs = head (sort xs)
-- Ans: Yes.
-- Note::: Actual Ans: Your implementation is fixed to [Char].

-- You cannot generalize past what the code allows.

-- Q.11
-- signifier :: Ord a => [a] -> a
mySort :: [Char] -> [Char]
mySort = sort
signifier :: [Char] -> Char
signifier xs = head (mySort xs)

-- Ans: No. Cause my sort expects String but Signifier can have value of a
