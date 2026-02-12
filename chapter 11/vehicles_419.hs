import qualified Distribution.SPDX as Q
data Price =
-- (a)
    Price Integer deriving (Eq, Show)

data Manufacturer =
-- (c)
    Mini
-- (d)
    | Mazda
-- (e)
    | Tata
-- (f)
    deriving (Eq, Show)


data Airline =
-- (g)
    PapuAir
-- (h)
    | CatapultsR'Us
-- (i)
    | TakeYourChancesUnited
-- (j)
    deriving (Eq, Show)


-- data Vehicle = Car Manufacturer Price
-- -- (k) (l) [2] [3]
--     | Plane Airline
-- -- (m) [4]
--     deriving (Eq, Show)



-- myCar = Car Mini (Price 14000)
-- A: myCar:: Vehicle

-- urCar = Car Mazda (Price 20000)

-- clownCar = Car Tata (Price 7000)
-- doge = Plane PapuAir


-- 1. What is the type of myCar?

-- 2. Given the following, define the functions:
-- isCar :: Vehicle -> Bool
-- isCar = undefined
-- isPlane :: Vehicle -> Bool
-- isPlane = undefined
-- areCars :: [Vehicle] -> [Bool]
-- areCars = undefined
-- 3. Now we’re going to write a function to tell us the manufacturer
-- of a piece of data:
-- getManu :: Vehicle -> Manufacturer
-- getManu = undefined
-- 4. Given that we’re returning the Manufacturer, what will happen if
-- you use this on Plane data?
-- 5. All right. Let’s say you’ve decided to add the size of the plane as
-- an argument to the Plane constructor. Add that to your datatypes
-- in the appropriate places and change your data and functions
-- appropriately.

-- Q.2

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

isPlane :: Vehicle -> Bool
isPlane (Plane _)= True
isPlane _ = False

areCars :: [Vehicle] -> [Bool]
areCars xs = map isCar xs

-- Q.3
getManu :: Vehicle -> Manufacturer
getManu (Car m p) = m
-- getManu :: Vehicle -> Maybe Manufacturer
-- getManu (Car m _) = Just m
-- getManu _         = Nothing


-- Q.4
-- Throw an error as the patter doesnt match
-- Note: *** Exception: vehicles_419.hs:79:1-21: Non-exhaustive patterns in function getManu

-- -- Q.5
-- data Vehicle = Car Manufacturer Price
-- -- (k) (l) [2] [3]
--     | Plane Airline Size
-- -- (m) [4]
--     deriving (Eq, Show)

-- data Size = Size Integer
--     deriving (Eq, Show)


-- isPlane :: Vehicle -> Bool
-- isPlane (Plane _ _)= True
-- isPlane _ = False