-- -- Zipping exercises
-- 1. Write your own version of zip :: [a] -> [b] -> [(a, b)] and
-- ensure it behaves the same as the original.

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] =[]
myZip [] _ =[]
myZip (x:xs) (y:ys) = (x,y) : myZip xs ys


-- 2. Do what you did for zip, but now for zipWith :: (a -> b -> c)
-- -> [a] -> [b] -> [c]


myZipWith  :: (a -> b -> c)-> [a] -> [b] -> [c]
myZipWith op _ [] = []
myZipWith op [] _ =[]
myZipWith op (x:xs) (y:ys) = op x y  : myZipWith op xs ys

-- 3. Rewrite your zip in terms of the zipWith you wrote
f:: a->b ->(a,b)
f x y = (x,y)
myZipNew :: [a] -> [b] -> [(a, b)]
-- myZipNew (x:xs) (y:ys) = myZipWith f (x:xs) (y:ys)
myZipNew = myZipWith f