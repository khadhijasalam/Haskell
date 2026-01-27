1. Will the following expression return a value or be ⊥?
take 1 $ map (+1) [undefined, 2, 3]
A: Error

2. Will the following expression return a value?
take 1 $ map (+1) [1, undefined, 3]
A: Yes. [1]

3. take 2 $ map (+1) [1, undefined, 3]
A:Error.

4. What does the following mystery function do? What is its type?
Describe it (to yourself or a loved one) in standard English and
then test it out in the REPL to make sure you were correct.
itIsMystery xs = map (\x -> elem x "aeiou") xs
A: It turns a list of characters into a list of True/False values, 
where each True means “this character is a vowel”.
type: [char] -> [Bool]


5. What will be the result of the following functions:
a) map (^2) [1..10]
A: [1,4,9,16,25,36,49,64,81,100]

b) map minimum [[1..10], [10..20], [20..30]]
A: [1,10,20]
-- n.b. `minimum` is not the same function
-- as the `min` that we used before
c) map sum [[1..5], [1..5], [1..5]]
A: [15,15,15]

6. Back in the Functions chapter, you wrote a function called
foldBool. That function exists in a module known as Data.Bool
and is called bool. Write a function that does the same (or similar, if you wish)
     as the map (if-then-else) function you saw above



map (\x -> (bool x (-x) (x==3)) ) [1..10]