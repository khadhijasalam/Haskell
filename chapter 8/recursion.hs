dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
  where go n d count
         | n < d = (count, n)
         | otherwise = go (n - d) d (count + 1)


-- Q. 1
-- dividedBy(13) 2 (1)
-- dividedBy(11) 2 (2)
-- dividedBy(9) 2 (3)
-- dividedBy(7) 2 (4)
-- dividedBy(5) 2 (5)
-- dividedBy(3) 2 (6)
-- dividedBy(1) 2 (7)
-- => (7,1)

-- Q. 2
sumi ::  (Eq a, Num a) => a -> a
sumi 0 = 0
sumi a = sumi (a-1) + a

-- Q. 3

-- Q. 3
mul :: (Integral a) => a -> a -> a
mul 0 b = 0
mul a b =  (mul (a-1) b) + b