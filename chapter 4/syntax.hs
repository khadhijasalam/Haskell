-- 1. Here, we want a function that adds 1 to the length of a string
-- argument and returns that result.
x = (+)
-- f :: [a]-> Int
f xs =  x w 1
     where w = length xs
-- 2. This is supposed to be the identity function, id.
-- \ X = x
-- Ans:
idFunc = \z -> z

-- 3. When fixed, this function will return 1 from the value [1, 2, 3].
-- Hint: you may need to refer back to the section about variables
-- conventions in “Hello Haskell” to refresh your memory of this
-- notation.
q3 :: [a] -> a
q3=(\(b:bs) -> b)


-- q3 = \as -> take 1

-- 4. When fixed, this function will return 1 from the value (1, 2).
-- f (a b) = A

q4 (a,b) = a

