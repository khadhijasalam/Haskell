-- Q.1
i ::  Num a => a
i = 1

-- Ans: We cannot substitue. cause a is parametric.

-- Q.2
f :: Float
f = 1.0
-- Ans: No.

-- Q.3
-- f :: Fractional a => a
f :: Float
f = 1.0
-- Ans: yes we can.

-- Q.4
-- f :: RealFrac a => a
f :: Float
f = 1.0
-- Ans: Ans Yes.