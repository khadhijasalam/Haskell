-- Q.1 a)
-- k ::  ( x, y) -> x

-- Q.1 b)
-- k2 ::  String
-- Not same as k1 or k3 as they are of type Num a => a


-- Q.1 c)
-- k2 and k3

-- Q.2
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))

f (a,_,c) (d,_,f ) = ((a,d),(c,f))