-- y data constructors:
data Example = MakeExample deriving Show

1. You can query the type of a value in GHCi with the :type command, also abbreviated :t. Example:
Prelude> :t False
False :: Bool
What is the type of data constructor MakeExample? What happens
when you request the type of Example?

Ans: ghci> :t MakeExample
MakeExample :: Example
 It's npt possible to get the type of example cause. Example is the type.
 * Illegal term-level use of the type constructor or class `Example'



2. What if you try :info on Example in GHCi? Can you determine
what typeclass instances are defined for the Example type using
:info in GHCi?
Ans::info Example
type Example :: *
data Example = MakeExample
        -- Defined at <interactive>:28:1
instance [safe] Show Example -- Defined at <interactive>:28:37
They typeclass instance is Show?


3. Try making a new datatype like Example but with a single type
argument added to MakeExample, such as Int. What has changed
when you query MakeExample with :type in GHCi?

A: data Example2 = MakeExample2 Int deriving Show
ghci> :t MakeExample2
MakeExample2 :: Int -> Example2
ghci>