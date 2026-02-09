-- Q.1
myOr :: [Bool] -> Bool
myOr = foldr (||) False

-- Q. 2
myAny :: (a -> Bool) -> [a] -> Bool
-- myAny f =  
--     foldr (\item acc ->
--         if f item 
--         then True
--         else acc) False 
myAny f = foldr( \x acc -> f x || acc) False
     

-- Q. 3
myElem :: Eq a => a -> [a] -> Bool
myElem n xs = foldr ( \x acc -> if  x == n then True else acc ) False xs

-- ii)
myElemAny :: Eq a => a -> [a] -> Bool
myElemAny x = any (== x)

 
--  Q. 4
myReverse :: [a] -> [a]
myReverse = foldl (\acc item -> item : acc) []
-- NOTE: for foldl -> f accumulator element

-- Q. 5
myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\x acc -> f x : acc) []


-- Q. 6
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f= foldr( \x acc -> if f x then x: acc else acc ) []

-- Q. 7
squish :: [[a]] -> [a]
squish = foldr (\x acc -> x++acc )[]

-- Q. 8
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr ( \x acc -> f x ++ acc )[]

-- Q. 9
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id


-- Q. 10
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy _ []     = error "empty list"
myMaximumBy f (x:xs)=
     foldl (\a acc ->
        case f a acc of 
            GT-> a
            _ -> acc ) x xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy _ []     = error "empty list"
myMinimumBy f (x:xs)=
     foldl (\a acc ->
        case f a acc of 
            GT-> acc
            _ -> a ) x xs