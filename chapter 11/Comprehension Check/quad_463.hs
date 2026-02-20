1. data Quad =
One
| Two
| Three
| Four
deriving (Eq, Show)
-- how many different forms can this take?
eQuad :: Either Quad Quad
eQuad = ???
ANs: 8

2. prodQuad :: (Quad, Quad)
Ans: 16

3. funcQuad :: Quad -> Quad
ans: 256

4. prodTBool :: (Bool, Bool, Bool)
Ans: 8

5. gTwo :: Bool -> Bool -> Bool
Ans: 16



6. Hint: 5 digit number
fTwo :: Bool -> Quad -> Quad
Ans:  65536

