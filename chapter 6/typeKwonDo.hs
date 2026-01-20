-- Q.1

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = f x == y

-- Q. 2
arith :: Num b => (a -> b) -> Integer -> a -> b
arith f n x = f x + fromInteger n

-- Or
-- arith f _ y = f y + 1
