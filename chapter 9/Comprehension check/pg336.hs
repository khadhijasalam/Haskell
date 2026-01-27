-- Square Cube

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]


-- Q.1
f =[(x,y) | x <- mySqr , y<- myCube]
-- or 
altF=[(x,y) | (x,y)<- zip mySqr myCube]


-- Q.2 


f2 =[(x,y) | x <- mySqr , y<- myCube, x<50 ,y<50]
altF2=[(x,y) | (x,y)<- zip mySqr myCube, x< 50, y<50]

-- Q. 3

f3 = length f2
