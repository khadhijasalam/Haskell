-- Note: Has exercise 4.7: (1-10)


awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]
-- length :: [String] -> Int
-- length x = do 


-- Pg: 138
-- Q. 1)
-- Type signature: [String]->Int
-- Arguments: 1, type: list of elements of some type [a]
-- Result type: Int

-- Q.2 )
-- a) length [1, 2, 3, 4, 5]
-- Ans: 5
-- b) length [(1, 2), (2, 3), (3, 4)]
-- Ans: 3
-- c) length allAwesome
-- Ans: 2
-- d) length (concat allAwesome)
-- Ans: 5

-- Q. 3)
-- Expression:  6 / 3 -> works
-- expr: 6 / length [1, 2, 3] -> returns error
-- Because length returns type Int. but '/' operator requires it to be float
-- the number 3 and 6 does not have fixed type and are polymorphic


-- Q. 4)
--  6 `div` length [1,2] : this expression works because it's integer division.


-- Q. 5)type of the expression 2 + 3 == 5? 
-- Ans: type =  Bool.
--     result = True

-- Q. 6)
-- Prelude> let x = 5 
-- Ans: Type= x :: Num a => a
-- Prelude> x + 3 == 5
-- Ans: type : Bool -> Bool
-- Result = False

-- Q. 7)
-- length allAwesome == 2
-- Ans: Will work. Because the length evaluates to Int and The result is compared.
-- result:  True
-- length [1, 'a', 3, 'b']
-- Ans: Wont work . because list can onle have elements of same type.
-- result: error
-- Prelude> length allAwesome + length awesome
-- Ans: Will work. We add the result of both lists ( ie., 3+2)
-- Result: 5
-- Prelude> (8 == 8) && ('b' < 'a')
-- Ans: Will work. 
-- Result: False

-- Prelude> (8 == 8) && 9
-- Ans: Wont work. because 8==8 returns a  Bool value 'True'. But 9 is int.
-- Comparision should be done with same type.

-- Q. 8) 
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (reverse x)
    -- let y = reverse x
   
    -- where x = x
myAbs :: Integer -> Integer
myAbs x = 
    if y<0 
        -- then y*(-1)
        then -y
    else
         y
    where y= x
    
-- Easier version
-- myAbs x =
--   if x < 0
--      then -x
--      else x


-- Q. 10)
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f tup1 tup2= ((snd tup1 , snd tup2), (fst tup1, fst tup2))
    



