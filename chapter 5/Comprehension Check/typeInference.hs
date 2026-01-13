-- module TypeInference1 where
-- f :: Num a => a -> a -> a
-- f x y = x + y + 3


-- module TypeInference2 where
-- f x y = x + y + 3

-- Exercises: Apply Yourself Pg: 172

1. -- Type signature of general function
(++) :: [a] -> [a] -> [a]

-- How might that change when we apply
-- it to the following value?
myConcat x = x ++ " yo"
MyAns:
[Char]->[Char]

Actual Ans: myConcat :: [Char] -> [Char]


2. -- General function
(*) :: Num a => a -> a -> a
-- Applied to a value
myMult x = (x / 3) * 5

My Ans: myMult :: Float -> Foat

Note: Float is a concrete data type. It represents single-precision floating-point numbers.
ractional is a set of types that support division and fractions. So right ans is Fractional.
Since fractional is typeclass and not a type, we write it as below:

Actual Ans: myMult :: Fractional a => a -> a


3. take :: Int -> [a] -> [a]
myTake x = take x "hey you"

My Ans: myTake :: [Char]

Actual ans: myTake :: Int -> [Char]


4. (>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])

My Ans: myCom :: Ord a => Ord a -> Bool

Actual ans: myCom :: Int -> Bool

Ord Int => Int -> Int -> Bool
becomes simply:
Int -> Int -> Bool
and since one argument is already supplied, your function becomes:
Int -> Bool


5. (<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'

My ans: myAlph :: Char -> Bool

Actual Ans: Same as above