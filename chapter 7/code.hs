module Arith4 where

    
-- Q. 1) a)
tensDigit :: Integral a => a -> a
tensDigit x = d
    where d = fst (x `divMod` 10) `mod` 10
      
-- Q. 1 b)
-- My assumption: No. It doesnt. divMod returns Tuple. so we use fst to extract quotient
-- Correct answer:
-- ✔ Yes, it has the same type

-- Why:

-- divMod :: Integral a => a -> a -> (a, a)

-- You extract an a from the tuple

-- Final result is still a
-- Q. 1 c)
hunsD :: Integral a=> a ->a 
hunsD x = d2
    where d2 = fst (x `divMod` 100) `mod` 10


-- Q. 2
foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y


-- case 
foldBool4 :: a -> a -> Bool -> a
foldBool4 x y b =
    case b of 
    True -> x
    False -> y

--Guard
foldBool5 :: a -> a -> Bool -> a
foldBool5 x y b 
    | b == True = x
    | b == False = y


-- Q. 3
g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x ,y)

-- Q.4
-- -- arith4.hs

-- -- id :: a -> a
-- -- id x = x
-- roundTrip :: (Show a, Read a) => a -> a
-- roundTrip a = read (show a)
-- main = do
--     print (roundTrip 4)
--     print (id 4)
--     print (roundTrip "hi")
--     print (id "hi")

-- Q. 5
-- roundTrip1 :: (Show a, Read a) => a -> a
-- roundTrip1 = read . show
-- main1 = do 
--     print (roundTrip1 4)
--     print (id 4)

-- Q. 6
-- roundTrip :: (Show a, Read b) => a -> b
-- roundTrip a = (read :: Read b => String -> b )(show a)
-- main = do
--     print (roundTrip 4 :: Int)
--     print (id 4)

roundTrip :: (Show a, Read b) => a -> b
roundTrip = (read :: Read b => String -> b ) . show 
main = do
    print (roundTrip 4 :: Int)
    print (id 4)

-- NOte:: roundTrip a = (read :: Read b => String -> b ) . show a
-- The above doesnt work cause Function application has higher precedence than (.)