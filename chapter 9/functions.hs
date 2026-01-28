
-- Q. 1
myOr :: [Bool] -> Bool
myOr [] = False
-- myOr (x:xs)= if x == True then True else myOr xs
myOr (x :xs) = x  || myOr xs



-- Q.2 
myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs)=  x || myAny f xs