--  Q.1

i :: a -> a
i x = x

-- Q.2
c :: a -> b -> a
c x y = x


-- Q.3
-- Ans: Yes. same thing
c'' :: b -> a -> b
c'' x y = x

-- Q. 4
c' :: a -> b -> b
c' x y = y 

-- Q.5
r :: [a] -> [a]
r x = x 

-- Q.6
co :: (b -> c) -> (a -> b) -> (a -> c)
co f g x = f ( g ( x))


-- Q. 7
a :: (a -> c) -> a -> a
a f x = x

-- Q. 8
a' :: (a -> b) -> a -> b
a' f x = f( x)