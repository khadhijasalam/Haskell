1. foldr (*) 1 [1..5]
will return the same result as which of the following:
b) foldl (flip (*)) 1 [1..5]
c) foldl (*) 1 [1..5]

2. Write out the evaluation steps for
foldl (flip (*)) 1 [1..3]
 Ans: (((1 f (1) ) f 2) f3)
(((1 * (1) )*  2)*3)


3. One difference between foldr and foldl is:
c) foldr, but not foldl, associates to the right

4. Folds are catamorphisms, which means they are generally used
to
a) reduce structure


5. The following are simple folds very similar to what you’ve already seen, but each has at least one error. Please fix them and
test in your REPL:
a) foldr (++) ["woot", "WOOT", "woot"]
Ans: foldr (++) "" ["woot", "WOOT", "woot"] 
foldr (++) [] ["woot", "WOOT", "woot"]

b) foldr max [] "fear is the little death"
Ans: foldr max ' ' "fear is the little death"

c) foldr and True [False, True]
Ans: foldr (&&) True [False, True]

d) This one is more subtle than the previous. Can it ever
return a different answer?
foldr (||) True [False, True]
Ans: no. 

e) foldl ((++) . show) "" [1..5]
Ans: foldr ((++) . show) "" [1..5]

f ) foldr const 'a' [1..5]
Ans:  foldr const 0 [1..5]

g) foldr const 0 "tacos"
Ans: foldr const 0 "tacos"

h) foldl (flip const) 0 "burritos"
Ans: foldl (flip const) 0 "burritos"

i) foldl (flip const) 'z' [1..5]
Ans: foldr (flip const) 0 [1..5]