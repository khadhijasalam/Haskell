1. All function applications return a value. Determine the value
returned by these function applications and the type of that
value.

a) (* 9) 6
Ans:54
type: Num a => a

b) head [(0,"doge"),(1,"kitteh")]
Ans:(0,"doge")
type: Num a => (a, String)
-- Note:  [(Num a,[b])] -> (Num a, [b]) is wrong cause we cannot but Num inside tuple. as num is typeclass.
-- It should be Num a => (a, [b])


c) head [(0 :: Integer ,"doge"),(1,"kitteh")]
Ans: (0,"doge")
type: (Integer,String)
-- i.e)  head [(0 :: Integer ,"doge"),(1,"kitteh")] :: (Integer, String)


d) if False then True else False
Ans: False 
Bool
-- Note: “If the condition False is true, return True; otherwise, return False.
-- The condition is the word right after if: False


e) length [1, 2, 3, 4, 5]
Ans: 5
Type: length [1, 2, 3, 4, 5] :: Int
-- Note: Int and Integer are not same


f ) (length [1, 2, 3, 4]) > (length "TACOCAT")
Ans: False
type: Bool

Note: Ord a => a-> a->Bool is the type of (>) in general, but not of this expression
This expression is of type Bool as > was fully applied



-- Q. 2)
2. Given
x = 5
y = x + 5
w = y * 10

What is the type of w?
Ans: Num
i.e) w:: Num a=> a

-- Note: w :: Num a -> a ....Is invalid as it means w is a function that takes a Num a and returns an a
-- But Num a is not a type — it’s a constraint. we write =>


-- Q.3)
3. Given
x = 5
y = x + 5
z y = y * 10

What is the type of z?
Ans: Num
z :: Num a => a-> a

-- Q.4)
4. Given
x = 5
y = x + 5
f = 4 / y

What is the type of f?
Ans:Fractional
f :: Fractional a => a 

-- Q. 5
5. Given
x = "Julie"
y = " <3 "
z = "Haskell"
f = x ++ y ++ z
What is the type of f?
Ans: String or [Char]
f :: [Char]