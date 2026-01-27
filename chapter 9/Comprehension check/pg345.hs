-- Will it blow up?

1. Will the following expression return a value or be ⊥?
[x^y | x <- [1..5], y <- [2, undefined]]
Ans:  Bottom up

2. take 1 $ [x^y | x <- [1..5], y <- [2, undefined]]
Ans: Will give value. [1]

3. Will the following expression return a value?
sum [1, undefined, 3]
Ans: No undefined

4. length [1, 2, undefined]
Ans: Yes, 3

5. length $ [1, 2, 3] ++ undefined
Ans: No , undefined

6. take 1 $ filter even [1, 2, 3, undefined]
ANs: Yes. [2]

7. take 1 $ filter even [1, 3, undefined]
Ans: No,undefined

8. take 1 $ filter odd [1, 3, undefined]
Ans: Yes . [1]

9. take 2 $ filter odd [1, 3, undefined]
Ans: Yes. [1,3]

10. take 3 $ filter odd [1, 3, undefined]
Ans; no Undefined






-- Intermission: Is it in normal form?

1. [1, 2, 3, 4, 5]
Ans: NF
2. 1 : 2 : 3 : 4 : _
Ans: WHNF

3. enumFromTo 1 10
Ans:Neither

4. length [1, 2, 3, 4, 5]
Ans: NF

5. sum (enumFromTo 1 10)
Ans: NF

6. ['a'..'m'] ++ ['n'..'z']
Ans: Neither 

7. (_, 'b')
Ans: WHNF