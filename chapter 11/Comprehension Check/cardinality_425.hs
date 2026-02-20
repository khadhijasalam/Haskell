-- -- nullary
-- data Example0 =
--     Example0 deriving (Eq, Show)
-- -- unary
-- data Example1 =
--     Example1 Int deriving (Eq, Show)
-- -- product of Int and String
-- data Example2 =
--     Example2 Int String deriving (Eq, Show)

While we haven’t explicitly described the rules for calculating the
cardinality of datatypes yet, you might already have an idea of how
to do it for simple datatypes with nullary constructors. Try not to
overthink these exercises – you can probably intuitively grasp what
the cardinality is based just on what you know.


1. data PugType = PugData
A: 1 

2. For this one, recall that Bool is also defined with the |:
data Airline =
PapuAir
| CatapultsR'Us
| TakeYourChancesUnited
A: 3

3. Given what we know about Int8, what’s the cardinality of Int16?
A: 65536

4. Use the REPL and maxBound and minBound to examine Int and
Integer. What can you say about the cardinality of those types?
A: for Int we have, minBound = -9223372036854775808, maxBound = 9223372036854775807
Cardinality : 18446744073709551616
Integer has no max or min bound . so the cardinality is infinite?


5. Extra credit (impress your friends!): What’s the connection
between the 8 in Int8 and that type’s cardinality of 256?
2^8