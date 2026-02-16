module Jammin where
import Data.List
import Language.Haskell.TH (kindSig)


data Fruit =
    Peach
    | Plum
    | Apple
    | Blackberry
    deriving (Eq,Ord, Show)

-- 2. Rewrite JamJars with record syntax.

-- data JamJars =
--     Jam {
--         name :: Fruit,
--         num :: Int
--     } deriving (Eq, Show)

-- 3. . What is the cardinality of JamJars?
-- 4 × 2^64= 7,37,86,97,62,94,83,82,06,464
--  Note: Int cardinality is 2^64. Int8 is 256

-- 4. Add Ord instances to your deriving clauses.
data JamJars =
    Jam {
        name :: Fruit,
        num :: Int
    } deriving (Eq, Ord,Show)


-- Q.5
row1 = Jam Peach 3

row2 = Jam Plum 2
row3 = Jam Apple 8
row4 = Jam Blackberry 10
row5 = Jam Peach 2
row6 = Jam Apple 2
allJam = [row1, row2, row3, row4, row5, row6]

eachRow= map (\x-> num x) allJam

-- Q.6
totalJars = foldr (\x acc-> num x + acc) 0 allJam


-- Q.7
maxJarCount = foldr maxJar row1 allJam
    
maxJar :: JamJars -> JamJars -> JamJars
maxJar x acc 
    | (num x) > (num acc )= x
    | otherwise = acc 

          

-- Q.8
-- -- sorby
-- sortBy :: (a -> a -> Ordering) -> [a] -> [a]
-- Expl: Takes a list, orders them in ascending order and returns a list

-- -- groupBy
-- groupBy :: (a -> a -> Bool) -> [a] -> [[a]]
-- Expl: Takes a list, checks for condition and based on that , returns a nested list

-- Q.9
compareKind (Jam k _) (Jam k' _) = compare k k'
sortedJam = sortBy compareKind allJam
-- NOte: we are not odering it on alphabetical order. we are ordering based on constructor order 
-- That means:
-- Peach < Plum < Apple < Blackberry

-- Q.10
compareAndGroup (Jam k _) (Jam k' _) = k==k'
groupedJam = groupBy compareAndGroup sortedJam