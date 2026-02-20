import Test.QuickCheck

data Optional a
  = Nada
  | Only a
  deriving (Eq, Show)

newtype First' a =
  First' { getFirst' :: Optional a }
  deriving (Eq, Show)

-- Semigroup instance (required in GHC 8+)
instance Semigroup (First' a) where
  First' Nada <> r = r
  l@(First' (Only _)) <> _ = l

-- Monoid instance
instance Monoid (First' a) where
  mempty = First' Nada

firstMappend :: First' a -> First' a -> First' a
firstMappend = mappend
type FirstMappend =
    First' String
    -> First' String
    -> First' String
    -> Bool

monoidAssoc :: (Eq m, Monoid m)
            => m -> m -> m -> Bool
monoidAssoc a b c =
  a <> (b <> c) == (a <> b) <> c

monoidLeftIdentity :: (Eq m, Monoid m)
                   => m -> Bool
monoidLeftIdentity x =
  mempty <> x == x

monoidRightIdentity :: (Eq m, Monoid m)
                    => m -> Bool
monoidRightIdentity x =
  x <> mempty == x

instance Arbitrary a => Arbitrary (Optional a) where
  arbitrary =
    frequency
      [ (1, return Nada)
      , (1, Only <$> arbitrary)
      ]

instance Arbitrary a => Arbitrary (First' a) where
  arbitrary = First' <$> arbitrary

main :: IO ()
main = do
    quickCheck (monoidAssoc :: FirstMappend)
    quickCheck (monoidLeftIdentity :: First' String -> Bool)
    quickCheck (monoidRightIdentity :: First' String -> Bool)