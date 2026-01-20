-- Given a datatype declaration, what can we do?
-- Given the following datatype definitions:
data Rocks =
    Rocks String deriving (Eq, Show)

data Yeah =
    Yeah Bool deriving (Eq, Show)

data Papu =
    Papu Rocks Yeah
    deriving (Eq, Show)
-- Which of the following will typecheck? For the ones that don’t
-- typecheck, why don’t they?
-- phew = Papu "chases" True
-- Ans: Does not typecheck. We should call the Datatype Rocks and Yeah


truth = Papu (Rocks "chomskydoz")
    (Yeah True)
-- Ans: Yes this typechecks.
-- i.e)Does not typecheck because Papu expects arguments of type Rocks and Yeah, but "chases" is a String and True is a Bool.
--  The values must be wrapped with the Rocks and Yeah data constructors.



equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'
-- Ans:  yes this typechecks

    
comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'
-- Ans: this does not type check. It requires Ord 
-- To make it work, derive Ord from all three data types