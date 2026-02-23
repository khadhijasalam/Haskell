import Test.QuickCheck


-- Q.1
data Trivial = Trivial deriving (Eq, Show)
instance Semigroup Trivial where
    _ <> _ = Trivial

instance Arbitrary Trivial where
    arbitrary = return Trivial

semigroupAssoc :: (Eq m, Semigroup m) => m -> m -> m -> Bool
semigroupAssoc a b c = (a <> (b <> c)) == ((a <> b) <> c)



-- Q.2
newtype Identity a = Identity a
  deriving (Eq, Show)  --added this

instance Semigroup a=> Semigroup ( Identity a) where
    Identity x <> Identity y = Identity (x <> y)
    --this part

instance Arbitrary a => Arbitrary (Identity a) where
    arbitrary = Identity <$> arbitrary
    --this part




type TrivialAssoc = Trivial -> Trivial -> Trivial -> Bool
type IdentityAssoc = Identity String
                  -> Identity String
                  -> Identity String
                  -> Bool
                      --this part

main :: IO ()
main = do
    quickCheck (semigroupAssoc :: TrivialAssoc)
    quickCheck (semigroupAssoc :: IdentityAssoc)