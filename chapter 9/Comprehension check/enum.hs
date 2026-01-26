
-- -- Q.1
eftBool :: Bool -> Bool -> [Bool]
eftBool x y 
    | x > y = []
    | x == y = [x]
    | otherwise = [x,y]
   
-- eftBool :: Bool -> Bool -> [Bool]
-- eftBool start stop
--   | start > stop = []
--   | start == stop =[start]
--   | i    = start : eftBool (succ start) stop


-- Q.2
eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd x y 
    | x > y = []
    | x == y = [x]
    | otherwise = x : eftOrd (succ x) y

-- Q. 3
eftInt :: Int -> Int -> [Int]
eftInt x y  
    | x>y =[]
    | otherwise =  eftInt x (y-1) ++ [y]


-- Q.4
eftChar :: Char -> Char -> [Char]
eftChar x y 
    | x > y = []
    | x == y = [x]
    | otherwise = x : eftChar (succ x) y 