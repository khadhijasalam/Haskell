{-# LANGUAGE GeneralizedNewtypeDeriving #-}

class TooMany a where
    tooMany :: a -> Bool
instance TooMany Int where
    tooMany n = n > 42
newtype Goats = Goats Int deriving Show
instance TooMany Goats where
    tooMany (Goats n) = n > 43 

-- type Goats = Int
-- instance TooMany Goats where
--     tooMany n = n > 43
-- Throws error cause Haskell does NOT allow two instances for the same type.

--  Because this is the same as writing:

-- instance TooMany Int where ..
-- \


instance TooMany (Int, String) where
    tooMany (n, _) = n > 42



-- instance TooMany (Int,Int) where
--     tooMany (x,y) = x+y >42


instance  (Num a, TooMany a)=>  TooMany (a,a) where
    tooMany (x, y) = tooMany( x+y)