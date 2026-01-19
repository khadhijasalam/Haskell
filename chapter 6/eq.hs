-- pg 222

-- Q.1
data TisAnInteger =
    TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn v) (TisAn v') = v == v'

-- Q.2
data TwoIntegers =
    Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two x y) (Two a b)=( x==a ) &&  (y ==b)


-- Q.3
data StringOrInt =
    TisAnInt Int
 | TisAString String


instance Eq StringOrInt where
    (==) (TisAnInt x)    (TisAnInt y)    = x == y
    (==) (TisAString x) (TisAString y) = x == y

-- Q.4
data Pair a =
    Pair a a

instance Eq a => Eq (Pair a) where
    (==) (Pair x y) (Pair b c)= x == b && y== c

-- Q. 5 
data Tuple a b =
    Tuple a b 

instance  (Eq a, Eq b) => Eq (Tuple a b)  where 
    (==) (Tuple x y ) (Tuple u w) = x == u && y == w


-- Q. 6
data Which a =
    ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a)  where
    (==) (ThisOne x) (ThisOne y )= x == y
    (==) (ThatOne x) (ThatOne y )= x == y
    (==) _           _           = False
    

-- Q. 7
data EitherOr a b =
    Hello a
  | Goodbye b

instance (Eq a , Eq b) => Eq (EitherOr a b) where
    (==) (Hello x) (Hello y)= x ==y
    (==) (Goodbye x) (Goodbye y)= x ==y
    (==) _              _      = False
