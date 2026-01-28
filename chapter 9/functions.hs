import Distribution.Simple.Utils (xargs)
import qualified Distribution.SPDX as Q

-- Q. 1
myOr :: [Bool] -> Bool
myOr [] = False
-- myOr (x:xs)= if x == True then True else myOr xs
myOr (x :xs) = x  || myOr xs



-- Q.2 
myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f (x:xs)=  f x || myAny f xs



-- Q. 3
myElem :: Eq a => a -> [a] -> Bool
myElem n [] = False
myElem n (x:xs) = n == x || myElem n xs


myElem2 :: Eq a => a -> [a] -> Bool

myElem2 n xs = myAny (\x -> x ==n) xs


-- Q.4

myReverse :: [a] -> [a]
myReverse [] = []
-- myReverse xs = last xs : myReverse (init xs)
myReverse (x:xs) = myReverse xs ++ [x]

-- Q. 5
squish :: [[a]] -> [a]
squish []= [] 
squish (x:xs) = x ++ squish (xs)


-- Q.6
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] =[]
squishMap f (x:xs) = f x ++ squishMap f xs


-- Q. 7

squishAgain :: [[a]] -> [a]
squishAgain [] = []
squishAgain (x:xs) = squishMap (\x ->x) (x:xs)


-- Q.8 
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f [x] = x
myMaximumBy f (x:xs) = 
    let maxRest = myMaximumBy f xs
    in if f x maxRest == GT 
       then x 
       else maxRest

-- Q.9
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f [x] = x
myMinimumBy f (x:xs) = 
    let maxRest = myMaximumBy f xs
    in if f x maxRest == LT 
       then x 
       else maxRest