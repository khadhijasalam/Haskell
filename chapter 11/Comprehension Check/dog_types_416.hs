Given the datatypes defined in the above sections,
:{
data Doggies a =
    Husky a
   | Mastiff a
   deriving (Eq, Show)
:}

data DogueDeBordeaux doge = DogueDeBordeaux doge
-- myPug = PugData :: PugType
-- :{ 

-- myHusky :: HuskyType a
-- myHusky = HuskyData
-- :}

-- myOtherHusky :: Num a => HuskyType a
-- myOtherHusky = HuskyData
-- myOtherOtherHusky :: HuskyType [[[[[[Int]]]]]]
-- myOtherOtherHusky = HuskyData


1. Is Doggies a type constructor or a data constructor?
A: Type constructor

2. What is the kind of Doggies?
An:Doggies :: * -> *

3. What is the kind of Doggies String?
A: Doggies String :: *

4. What is the type of Husky 10?
A: Husky 10 :: Num a => Doggies a
5. What is the type of Husky (10 :: Integer)?
A: Husky (10 :: Integer) :: Doggies Integer
6. What is the type of Mastiff "Scooby Doo"?
A: Mastiff "Scooby Doo" :: Doggies String
7. Is DogueDeBordeaux a type constructor or a data constructor?
A: Can be both.


8. What is the type of DogueDeBordeaux?
DogueDeBordeaux :: doge -> DogueDeBordeaux doge
(Note: we can only find the type of data constructor not type constructor.
So we give solution ofr dara constructor)

9. What is the type of DogueDeBordeaux "doggie!"
 DogueDeBordeaux "doggie!" :: DogueDeBordeaux String