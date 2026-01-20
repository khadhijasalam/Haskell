-- x :: String -> String
-- x blah = blah + 20
-- printIt :: IO ()
-- printIt = putStrLn ( show x)

-- Q.1
-- No it doesn't

-- data Person = Person Bool deriving Show
-- printPerson :: Person -> IO ()
-- -- printPerson person = putStrLn (show person)

-- Q.2
--  No it doesn't. it needs Eq typeclass
data Mood = Blah | Woot deriving (Show,Eq)
settleDown x = if x == Woot
                 then Blah
                 else x

-- Q.3
-- If you were able to get settleDown to typecheck:
-- a) What values are acceptable inputs to that function?
-- Ans: Woot, Blah (Any value of type Mood.)

-- b) What will happen if you try to run settleDown 9? Why?
--     Error. Accepts only the value Woot , Blah(data constructors). It expects (Mood -> Mood)

-- c) What will happen if you try to run Blah > Woot? Why?
--     Error. requires to derive Ord

-- Q. 4

type Subject = String
type Verb = String
type Object = String

data Sentence =
    Sentence Subject Verb Object
    deriving (Eq, Show)
s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- Ans: It does not type check. s1 requires 3 areguments but only has 2.
-- This crestes partially applied funtion.
-- f you intentionally want s1 to be a function:
-- s1 :: Object -> Sentence
-- s1 = Sentence "dogs" "drool"
