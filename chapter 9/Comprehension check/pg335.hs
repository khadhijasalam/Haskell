let mySqr = [x^2 | x <- [1..5]]
Ans : [1,4,9,16,25]

[x | x <- mySqr, rem x 2 == 0]
Ans: [4,16]

[(x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50]
Ans:[]

take 5 [ (x, y) | x <- mySqr
, y <- mySqr, x < 50, y > 50 ]

Ans []