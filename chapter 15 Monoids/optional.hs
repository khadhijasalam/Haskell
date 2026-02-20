-- import Data.Monoid

-- data Optional a =
--     Nada
--   | Only a
--   deriving (Eq, Show)

-- instance Monoid a => Monoid (Optional a) where
--     mempty = Nada

--     mappend Nada x = x
--     x `mappend` Nada = x
--     Only a `mappend` Only b = Only (a `mappend` b)


import Data.Monoid

data Optional a =
    Nada
  | Only a
  deriving (Eq, Show)

instance Monoid a => Semigroup (Optional a) where
    Nada <> x = x
    x <> Nada = x
    Only a <> Only b = Only (a <> b)

instance Monoid a => Monoid (Optional a) where
    mempty = Nada
