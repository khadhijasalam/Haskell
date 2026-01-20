-- Q.1
-- functionC x y = if (x > y) then x else y

functionC x y = case x> y of 
    True -> x
    False -> y

-- Q. 2
-- ifEvenAdd2 n = if even n then (n+2) else n
ifEvenAdd2 x = case even x of
    True -> ( x+2)
    False -> x






nums x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ-> 0
    -- _ -> 0
  