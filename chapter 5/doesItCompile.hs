-- Q.1
-- Ans: Doesn't compile
-- or
-- bigNum x = 5 ^ x
-- wahoo = bigNum 10

bigNum = (^ 10)
wahoo = bigNum 5

-- Q.2
x = print 
y = print "woohoo!"
z = x "hello world"
-- Ans: This compiles. When you compile x, give a value. i.e) x "Hello"

-- Q.3
-- Ans: Doesnt compile. 
-- fixed version
a = (+)
b = 5
c = a b 10
d = a c 200


-- Q.4
-- Ans: Doesn't compile. Fixed version
e = 12 + f
f = 10000 * g
g=1

